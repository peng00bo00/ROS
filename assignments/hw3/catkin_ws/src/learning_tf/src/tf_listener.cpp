#include "ros/ros.h"
#include "geometry_msgs/PointStamped.h"
#include "tf/transform_listener.h"

geometry_msgs::PointStamped laser_point;

int main(int argc, char **argv){
    ros::init(argc, argv, "tf_listener");
    ros::NodeHandle node;

    laser_point.header.frame_id = "base_laser";
    laser_point.point.x = atof(argv[1]);
    laser_point.point.y = atof(argv[2]);
    laser_point.point.z = atof(argv[3]);

    tf::TransformListener listener(ros::Duration(10));


    ros::Rate loop_rate(10.0);
    while (ros::ok()) {
        try
        {
            listener.waitForTransform("base_link", "base_laser", ros::Time::now(), ros::Duration(1.0));

            geometry_msgs::PointStamped base_point;
            listener.transformPoint("base_link", laser_point, base_point);

            ROS_INFO("base_laser: (%.2f, %.2f. %.2f) -----> base_link: (%.2f, %.2f, %.2f) at time %.2f",
                laser_point.point.x, laser_point.point.y, laser_point.point.z,
                base_point.point.x, base_point.point.y, base_point.point.z, base_point.header.stamp.toSec());
        }
        catch(tf::TransformException &ex)
        {
            ROS_ERROR("%s",ex.what());
			ros::Duration(1.0).sleep();
			continue;
        }

       	loop_rate.sleep();
    }

    ros::spin();

    return 0;
}