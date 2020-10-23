#include <ros/ros.h>
#include "test3/turtleSrv.h"
#include "geometry_msgs/Twist.h"


geometry_msgs::Twist msg;
std::string topic;

bool turtleCallback(test3::turtleSrv::Request &req, 
                    test3::turtleSrv::Response &res) {

    topic = req.name + "/cmd_vel";

    if (req.move)
    {
        ROS_INFO("Force %s to move!", req.name.c_str());
        msg.linear.x = req.v;
        msg.angular.z = req.omega;
    }
    else {
        ROS_INFO("Force %s to stop!", req.name.c_str());
        msg.linear.x = 0;
        msg.angular.z = 0;
        topic = "";
    }
    return true;
}


int main(int argc, char **argv) {

    ros::init(argc, argv, "turtle_control_server");
    ros::NodeHandle node;
    
    ros::ServiceServer service = node.advertiseService("/turtle_control", turtleCallback);
    ROS_INFO("Turtle control server starts!");

    ros::Publisher turtle_pub;

    ros::Rate loop_rate(10);
    while (ros::ok()) {

        ros::spinOnce();

        if (!topic.empty()) {
            turtle_pub = node.advertise<geometry_msgs::Twist>(topic, 1);
		    turtle_pub.publish(msg);
        }

       	loop_rate.sleep();
    }

    return 0;
}