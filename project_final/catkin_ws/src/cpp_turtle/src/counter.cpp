#include <iostream>
#include "ros/ros.h"
#include "std_msgs/Float64.h"
class Counter {
    public :
        Counter( ros :: NodeHandle * nh ) 
        {
            count = 0;

            num_sub = nh->subscribe ("/number " , 10 , & Counter :: numberCallBack , this ) ;
        }
        
        void numberCallBack(const std_msgs :: Float64 &msg) {
        count = count+ msg.data ;
        ROS_INFO ("CONTAGEM ATUAL :%f", count ) ;
        }
        private :
        double count ;
        ros :: Subscriber num_sub ;
};

int main ( int argc , char ** argv ) {
    ros :: init ( argc , argv , " counter_node " ) ;
    ros :: NodeHandle nh ;
    Counter counter = Counter ( & nh ) ;
    ros :: spin () ;

    return 0;
}