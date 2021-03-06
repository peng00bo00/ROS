// Generated by gencpp from file test3/turtleSrv.msg
// DO NOT EDIT!


#ifndef TEST3_MESSAGE_TURTLESRV_H
#define TEST3_MESSAGE_TURTLESRV_H

#include <ros/service_traits.h>


#include <test3/turtleSrvRequest.h>
#include <test3/turtleSrvResponse.h>


namespace test3
{

struct turtleSrv
{

typedef turtleSrvRequest Request;
typedef turtleSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct turtleSrv
} // namespace test3


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::test3::turtleSrv > {
  static const char* value()
  {
    return "d7f17f4973957daccba4e4c09ebf6d27";
  }

  static const char* value(const ::test3::turtleSrv&) { return value(); }
};

template<>
struct DataType< ::test3::turtleSrv > {
  static const char* value()
  {
    return "test3/turtleSrv";
  }

  static const char* value(const ::test3::turtleSrv&) { return value(); }
};


// service_traits::MD5Sum< ::test3::turtleSrvRequest> should match
// service_traits::MD5Sum< ::test3::turtleSrv >
template<>
struct MD5Sum< ::test3::turtleSrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::test3::turtleSrv >::value();
  }
  static const char* value(const ::test3::turtleSrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::test3::turtleSrvRequest> should match
// service_traits::DataType< ::test3::turtleSrv >
template<>
struct DataType< ::test3::turtleSrvRequest>
{
  static const char* value()
  {
    return DataType< ::test3::turtleSrv >::value();
  }
  static const char* value(const ::test3::turtleSrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::test3::turtleSrvResponse> should match
// service_traits::MD5Sum< ::test3::turtleSrv >
template<>
struct MD5Sum< ::test3::turtleSrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::test3::turtleSrv >::value();
  }
  static const char* value(const ::test3::turtleSrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::test3::turtleSrvResponse> should match
// service_traits::DataType< ::test3::turtleSrv >
template<>
struct DataType< ::test3::turtleSrvResponse>
{
  static const char* value()
  {
    return DataType< ::test3::turtleSrv >::value();
  }
  static const char* value(const ::test3::turtleSrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TEST3_MESSAGE_TURTLESRV_H
