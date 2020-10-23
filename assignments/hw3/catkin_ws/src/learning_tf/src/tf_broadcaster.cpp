#include <ros/ros.h>
#include <tf/transform_broadcaster.h>


int main(int argc, char **argv) {

    ros::init(argc, argv, "tf_broadcaster");
    ros::NodeHandle node;

    tf::TransformBroadcaster broadcaster;

    ros::Rate loop_rate(10.0);
    while (ros::ok()) {
        broadcaster.sendTransform(
            tf::StampedTransform(
                tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0.1, 0.0, 0.2)),
                ros::Time::now(), "base_link", "base_laser"));

       	loop_rate.sleep();
    }

    return 0;
}