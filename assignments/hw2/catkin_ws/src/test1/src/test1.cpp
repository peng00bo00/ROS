#include <ros/ros.h>
#include "turtlesim/Pose.h"
#include "geometry_msgs/Twist.h"

void turtleInfoCallback(const turtlesim::Pose::ConstPtr& pose)
{
    ROS_INFO("Current Pose: x = %.3f, y = %.3f, theta = %.3f, v = %.3f, omega = %.3f", 
             pose->x, pose->y, pose->theta, pose->linear_velocity, pose->angular_velocity);
}

int main(int argc, char **argv) {

    ros::init(argc, argv, "turtle_controller");
    ros::NodeHandle node;

    ros::Publisher turtle_pub = node.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 1000);
    ros::Subscriber turtle_sub = node.subscribe("turtle1/pose", 1000, turtleInfoCallback);

    ros::Rate loop_rate(10);

    while (ros::ok())
    {
        geometry_msgs::Twist msg;
        msg.linear.x = 1.0;
        msg.angular.z = 1.0;

		turtle_pub.publish(msg);

       	loop_rate.sleep();
        ros::spinOnce();
    }

    return 0;
}