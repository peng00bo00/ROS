#include <ros/ros.h>
#include "turtlesim/Spawn.h"
#include <ctime>
#include <random>

int main(int argc, char **argv) {

    ros::init(argc, argv, "turtle_spawn");
    ros::NodeHandle node;

    ros::service::waitForService("spawn");
    ros::ServiceClient client = node.serviceClient<turtlesim::Spawn>("spawn");
    turtlesim::Spawn srv;

    // random number generator
    std::default_random_engine engine(std::time(nullptr));
    std::uniform_real_distribution<double> dis(0, 10);

    srv.request.x = dis(engine);
    srv.request.y = dis(engine);
    srv.request.theta = dis(engine);
    srv.request.name = argv[1];

    if (client.call(srv)) {
        ROS_INFO("A new turtle (%s) is created at (%.3f, %.3f, %.3f)", srv.request.name.c_str(), srv.request.x, srv.request.y, srv.request.theta);
    }
    else
    {
        ROS_ERROR("Failed to create a new turtle!");
    }
    

    return 0;
}