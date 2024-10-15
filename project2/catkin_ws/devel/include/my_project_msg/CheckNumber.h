// Generated by gencpp from file my_project_msg/CheckNumber.msg
// DO NOT EDIT!


#ifndef MY_PROJECT_MSG_MESSAGE_CHECKNUMBER_H
#define MY_PROJECT_MSG_MESSAGE_CHECKNUMBER_H

#include <ros/service_traits.h>


#include <my_project_msg/CheckNumberRequest.h>
#include <my_project_msg/CheckNumberResponse.h>


namespace my_project_msg
{

struct CheckNumber
{

typedef CheckNumberRequest Request;
typedef CheckNumberResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CheckNumber
} // namespace my_project_msg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_project_msg::CheckNumber > {
  static const char* value()
  {
    return "5b4141093032f67191274c0a4b1f0f94";
  }

  static const char* value(const ::my_project_msg::CheckNumber&) { return value(); }
};

template<>
struct DataType< ::my_project_msg::CheckNumber > {
  static const char* value()
  {
    return "my_project_msg/CheckNumber";
  }

  static const char* value(const ::my_project_msg::CheckNumber&) { return value(); }
};


// service_traits::MD5Sum< ::my_project_msg::CheckNumberRequest> should match
// service_traits::MD5Sum< ::my_project_msg::CheckNumber >
template<>
struct MD5Sum< ::my_project_msg::CheckNumberRequest>
{
  static const char* value()
  {
    return MD5Sum< ::my_project_msg::CheckNumber >::value();
  }
  static const char* value(const ::my_project_msg::CheckNumberRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_project_msg::CheckNumberRequest> should match
// service_traits::DataType< ::my_project_msg::CheckNumber >
template<>
struct DataType< ::my_project_msg::CheckNumberRequest>
{
  static const char* value()
  {
    return DataType< ::my_project_msg::CheckNumber >::value();
  }
  static const char* value(const ::my_project_msg::CheckNumberRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_project_msg::CheckNumberResponse> should match
// service_traits::MD5Sum< ::my_project_msg::CheckNumber >
template<>
struct MD5Sum< ::my_project_msg::CheckNumberResponse>
{
  static const char* value()
  {
    return MD5Sum< ::my_project_msg::CheckNumber >::value();
  }
  static const char* value(const ::my_project_msg::CheckNumberResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_project_msg::CheckNumberResponse> should match
// service_traits::DataType< ::my_project_msg::CheckNumber >
template<>
struct DataType< ::my_project_msg::CheckNumberResponse>
{
  static const char* value()
  {
    return DataType< ::my_project_msg::CheckNumber >::value();
  }
  static const char* value(const ::my_project_msg::CheckNumberResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_PROJECT_MSG_MESSAGE_CHECKNUMBER_H
