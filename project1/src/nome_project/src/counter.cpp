#include <iostream>
#include "ros/ros.h"
#include "std_msgs/Float64.h"
#include "std_srvs/Empty.h"
#include "my_project_msg/CounterHistory.h"
#include "my_project_msg/CheckNumber.h"

class Counter {
public:
    Counter(ros::NodeHandle *nh) {
        count = 0;
        publish_interval = 1;

        num_sub = nh->subscribe("/number", 10, &Counter::numberCallBack, this);
        history_pub = nh->advertise<my_project_msg::CounterHistory>("/history_counter", 10);
        timer = nh->createTimer(ros::Duration(publish_interval), &Counter::timerCallback, this);
        count_pub = nh->advertise<std_msgs::Float64>("/current_count", 10);
        check_greater_srv = nh->advertiseService("/check_greater", &Counter::checkGreaterServerCallback, this);
        last_count = count;
        cycles = 0;
    }

    void numberCallBack(const std_msgs::Float64 &msg) {
        ROS_INFO("Callback chamado com valor: %f", msg.data);
        cycles++;
        last_count = count;
        count = count + msg.data;
        ROS_INFO("CONTAGEM ATUAL: %f", count);
    }

    void timerCallback(const ros::TimerEvent &event) {
        ROS_INFO("Timer chamado");
        std_msgs::Float64 msg;
        msg.data = count;
        count_pub.publish(msg);

        my_project_msg::CounterHistory history_msg;
        history_msg.current_value = count;
        history_msg.last_value = last_count;
        history_msg.cycles = cycles;
        history_pub.publish(history_msg);
    }

    bool checkGreaterServerCallback(my_project_msg::CheckNumber::Request &req, my_project_msg::CheckNumber::Response &res) {
        if (req.number > count) {
            res.result = true;
        } else {
            res.result = false;
        }

        ROS_WARN("verificando se o numero e maior que a contagem");
        return true;
    }

private:
    double count;
    double last_count;
    double publish_interval;
    int cycles;

    ros::Publisher count_pub;
    ros::Subscriber num_sub;
    ros::Publisher history_pub;
    ros::Timer timer;
    ros::ServiceServer check_greater_srv;
};

int main(int argc, char **argv) {
    ros::init(argc, argv, "counter_node");
    ros::NodeHandle nh;
    Counter counter(&nh);
    ros::spin();

    return 0;
}
