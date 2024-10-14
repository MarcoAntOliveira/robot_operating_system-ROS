#include "ros/ros.h"
#include "std_msgs/Float64.h"
#include "std_srvs/Empty.h"

class NumberPublisher {
public:
    NumberPublisher(ros::NodeHandle *nh) {
        // Inicializa os parâmetros
        nh->param<double>("num", number, 1.0);
        nh->param<double>("interval", publish_interval, 1.0);
        nh->param<double>("reset", reset_interval, 5.0);  // Valor padrão para reset_interval

        // Configura o publisher e timers
        num_pub = nh->advertise<std_msgs::Float64>("/number", 10);
        timer_pub = nh->createTimer(ros::Duration(publish_interval), &NumberPublisher::timerCallback, this);
        timer_reset = nh->createTimer(ros::Duration(reset_interval), &NumberPublisher::timeResetCallback, this);

        // Configura o cliente de serviço
        client_reset = nh->serviceClient<std_srvs::Empty>("reset_counter");
    }

    void timerCallback(const ros::TimerEvent &event) {
        std_msgs::Float64 msg;
        msg.data = number;
        num_pub.publish(msg);
    }

    void timeResetCallback(const ros::TimerEvent &event) {
        std_srvs::Empty srv;
        ROS_INFO("Solicitação de reset da contagem");
        
        if (client_reset.call(srv)) {
            ROS_INFO("Reset realizado com sucesso.");
        } else {
            ROS_ERROR("Falha ao chamar o serviço de reset.");
        }
    }

private:
    double number;
    double publish_interval;
    double reset_interval;
    ros::Publisher num_pub;
    ros::Timer timer_pub;
    ros::ServiceClient client_reset;
    ros::Timer timer_reset;
};

int main(int argc, char **argv) {
    ros::init(argc, argv, "number_publisher");
    ros::NodeHandle nh;
    NumberPublisher num_publisher(&nh);
    ros::spin();
    return 0;
}
