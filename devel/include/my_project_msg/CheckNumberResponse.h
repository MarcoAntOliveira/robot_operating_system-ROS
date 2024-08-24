// Generated by gencpp from file my_project_msg/CheckNumberResponse.msg
// DO NOT EDIT!


#ifndef MY_PROJECT_MSG_MESSAGE_CHECKNUMBERRESPONSE_H
#define MY_PROJECT_MSG_MESSAGE_CHECKNUMBERRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_project_msg
{
template <class ContainerAllocator>
struct CheckNumberResponse_
{
  typedef CheckNumberResponse_<ContainerAllocator> Type;

  CheckNumberResponse_()
    : result(false)  {
    }
  CheckNumberResponse_(const ContainerAllocator& _alloc)
    : result(false)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::my_project_msg::CheckNumberResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_project_msg::CheckNumberResponse_<ContainerAllocator> const> ConstPtr;

}; // struct CheckNumberResponse_

typedef ::my_project_msg::CheckNumberResponse_<std::allocator<void> > CheckNumberResponse;

typedef boost::shared_ptr< ::my_project_msg::CheckNumberResponse > CheckNumberResponsePtr;
typedef boost::shared_ptr< ::my_project_msg::CheckNumberResponse const> CheckNumberResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_project_msg::CheckNumberResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_project_msg::CheckNumberResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_project_msg::CheckNumberResponse_<ContainerAllocator1> & lhs, const ::my_project_msg::CheckNumberResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_project_msg::CheckNumberResponse_<ContainerAllocator1> & lhs, const ::my_project_msg::CheckNumberResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_project_msg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_project_msg::CheckNumberResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_project_msg::CheckNumberResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_project_msg::CheckNumberResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_project_msg::CheckNumberResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_project_msg::CheckNumberResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_project_msg::CheckNumberResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_project_msg::CheckNumberResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb13ac1f1354ccecb7941ee8fa2192e8";
  }

  static const char* value(const ::my_project_msg::CheckNumberResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb13ac1f1354ccecULL;
  static const uint64_t static_value2 = 0xb7941ee8fa2192e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_project_msg::CheckNumberResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_project_msg/CheckNumberResponse";
  }

  static const char* value(const ::my_project_msg::CheckNumberResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_project_msg::CheckNumberResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool result\n"
;
  }

  static const char* value(const ::my_project_msg::CheckNumberResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_project_msg::CheckNumberResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CheckNumberResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_project_msg::CheckNumberResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_project_msg::CheckNumberResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_PROJECT_MSG_MESSAGE_CHECKNUMBERRESPONSE_H