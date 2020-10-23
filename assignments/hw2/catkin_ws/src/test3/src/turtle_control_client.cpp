#include <ros/ros.h>
#include "test3/turtleSrv.h"

int main(int argc, char **argv) {

    ros::init(argc, argv, "turtle_control_client");
    ros::NodeHandle node;
    
    ros::service::waitForService("/turtle_control");
    ros::ServiceClient client = node.serviceClient<test3::turtleSrv>("/turtle_control");
    test3::turtleSrv srv;

    srv.request.name = argv[1];
    std::string move = argv[2];
    if (move == "move")
    {
        srv.request.move = true;
    }
    else if (move == "stop")
    {
        srv.request.move = false;
    }
    

    srv.request.v    = atof(argv[3]);
    srv.request.omega= atof(argv[4]);

    client.call(srv);

    return 0;
}