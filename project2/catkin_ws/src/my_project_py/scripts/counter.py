#!/usr/bin/env python3
import rospy
from std_msgs.msg import Float64
from std_srvs.srv import Empty, EmptyResponse
from my_project_msg.msg import CounterHistory
from my_project_msg.srv import CheckNumber , CheckNumberResponse

class Counter:

    def __init__(self):
        self.count = rospy.get_param("initial_count", 0)
        self.publish_interval = rospy.get_param("~pub_rate", 3)
        
        
        if(rospy.has_param("~pub_rate") or rospy.has_param("initial_count")):
            rospy.loginfo("parametros customizados")
            rospy.set_param("~custom_param", True)
        else:
            rospy.set_param("~custom_param", False)
            
        if(rospy.has_param("~delete_param")):
            rospy.loginfo("deletando parametros")   
            if(rospy.has_param("~pub_rate")):
                rospy.delete_param("~pub_rate") 
            if(rospy.has_param("initial_count")):
                rospy.delete_param("initial_count")     
        self.last_count = self.count
        self.cycles = 0    
       
        self.num_sub = rospy.Subscriber("/number", Float64, self.numberCallback, queue_size = 10)
        self.count_pub = rospy.Publisher("/current_count", Float64, queue_size = 10)
        self.timer_pub = rospy.Timer(rospy.Duration(self.publish_interval), self.timerCallback)
        self.reset_srv = rospy.Service('reset_counter', Empty, self.resetSrvCallback)
        self.history_pub = rospy.Publisher("/history_count", CounterHistory, queue_size = 10)
        self.check_less__srv = rospy.Service('check_less', CheckNumber, self.checkLessSrvCallback)
        
    def numberCallback(self, msg):
        self.cycles = self.cycles + 1
        self.last_count = self.count
        self.count = self.count + msg.data
        rospy.loginfo("Contagem Atual " + str(self.count))


    def timerCallback(self, event):
        msg = Float64()
        msg.data = self.count
        self.count_pub.publish(msg)
        history_msg = CounterHistory()
        history_msg.current_value = self.count
        history_msg.last_value = self.last_count
        history_msg.cycles = self.cycles
        self.history_pub.publish(history_msg)
        
    def resetSrvCallback(self, req):
        self.count = 0 
        rospy.loginfo("resetando a contagem")
        return EmptyResponse()  

        
    def checkLessSrvCallback(self, req):
        
        rospy.loginfo("Verificando se numero eh maior que a contagem. ")
        res = CheckNumberResponse()
        if(req.number > self.count):
            res.result = True
        else:
            res.result = False    
        return res
if __name__ == '__main__':
    try:
        rospy.init_node("counter_node")
        Counter()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass