#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/Twist.h"


geometry_msgs::Twist msg;

void voiceInfoCallback(const std_msgs::String::ConstPtr& voice_msg)
{
    std::string command = voice_msg -> data;

    if (command.find("前进") != std::string::npos) {
        msg.linear.x = 1.0;
        ROS_INFO("Go forward!");
    }
    else if (command.find("后退") != std::string::npos) {
        msg.linear.x =-1.0;
        ROS_INFO("Go backward!");
    }

    if (command.find("向左") != std::string::npos) {
        msg.angular.z = 2.0;
        ROS_INFO("Turn left");
    }
    else if (command.find("向右") != std::string::npos) {
        msg.angular.z =-2.0;
        ROS_INFO("Turn right");
    }

    if (command.find("停止") != std::string::npos) {
        msg.linear.x = 0.0;
        msg.angular.z = 0.0;
        ROS_INFO("Stop");
    }
}

int main(int argc, char* argv[]) {

    ros::init(argc, argv, "voiceController");
    ros::NodeHandle node;

    ros::Publisher pub = node.advertise<geometry_msgs::Twist>("/cmd_vel", 1000);
    ros::Subscriber sub = node.subscribe("voiceWords", 1000, voiceInfoCallback);

    ros::Rate loop_rate(10);

    while (ros::ok())
    {
        ros::spinOnce();
		pub.publish(msg);

       	loop_rate.sleep();
    }

    return 0;
}