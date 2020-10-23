#include <ros/ros.h>
#include "robot_vision/FaceMsg.h"
#include "geometry_msgs/Twist.h"

bool found = false;
float x, y, h, w;

geometry_msgs::Twist msg;

void faceInfoCallback(const robot_vision::FaceMsg::ConstPtr& face_msg)
{
    if (!found) {
        found = true;
    }
    else {
        // msg.angular.z = 0;
        msg.linear.x = 0;

        if (face_msg->x - x > 10) {
            msg.angular.z = -2.0;
            ROS_INFO("Turn right!");
        }
        else if (face_msg->x - x < -10) {
            msg.angular.z = 2.0;
            ROS_INFO("Turn left!");
        }

        if ((face_msg->h - h > 10) && (face_msg->w - w> 10)) {
            msg.linear.x = 2.0;
            ROS_INFO("Go forward!");
        }
        else if ((face_msg->h - h < -10) && (face_msg->w - w < -10)) {
            msg.linear.x = -2.0;
            ROS_INFO("Go backward!");
        }
    }

    x = face_msg -> x;
    y = face_msg -> y;
    h = face_msg -> h;
    w = face_msg -> w;
}

int main(int argc, char **argv) {

    ros::init(argc, argv, "face_controller_node");
    ros::NodeHandle node;

    ros::Publisher pub = node.advertise<geometry_msgs::Twist>("/cmd_vel", 1000);
    ros::Subscriber sub = node.subscribe("cv_face", 1000, faceInfoCallback);

    ros::Rate loop_rate(10);

    while (ros::ok())
    {
        ros::spinOnce();
		pub.publish(msg);

       	loop_rate.sleep();
    }

    return 0;
}