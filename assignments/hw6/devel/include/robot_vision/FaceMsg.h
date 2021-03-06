// Generated by gencpp from file robot_vision/FaceMsg.msg
// DO NOT EDIT!


#ifndef ROBOT_VISION_MESSAGE_FACEMSG_H
#define ROBOT_VISION_MESSAGE_FACEMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_vision
{
template <class ContainerAllocator>
struct FaceMsg_
{
  typedef FaceMsg_<ContainerAllocator> Type;

  FaceMsg_()
    : x(0.0)
    , y(0.0)
    , w(0.0)
    , h(0.0)  {
    }
  FaceMsg_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , w(0.0)
    , h(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _w_type;
  _w_type w;

   typedef float _h_type;
  _h_type h;





  typedef boost::shared_ptr< ::robot_vision::FaceMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_vision::FaceMsg_<ContainerAllocator> const> ConstPtr;

}; // struct FaceMsg_

typedef ::robot_vision::FaceMsg_<std::allocator<void> > FaceMsg;

typedef boost::shared_ptr< ::robot_vision::FaceMsg > FaceMsgPtr;
typedef boost::shared_ptr< ::robot_vision::FaceMsg const> FaceMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_vision::FaceMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_vision::FaceMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_vision::FaceMsg_<ContainerAllocator1> & lhs, const ::robot_vision::FaceMsg_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.w == rhs.w &&
    lhs.h == rhs.h;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_vision::FaceMsg_<ContainerAllocator1> & lhs, const ::robot_vision::FaceMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_vision

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot_vision::FaceMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_vision::FaceMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_vision::FaceMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_vision::FaceMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_vision::FaceMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_vision::FaceMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_vision::FaceMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "26e9e3e8f4a1449cbd9cd2993e5e3438";
  }

  static const char* value(const ::robot_vision::FaceMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x26e9e3e8f4a1449cULL;
  static const uint64_t static_value2 = 0xbd9cd2993e5e3438ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_vision::FaceMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_vision/FaceMsg";
  }

  static const char* value(const ::robot_vision::FaceMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_vision::FaceMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n"
"float32 y\n"
"float32 w\n"
"float32 h\n"
;
  }

  static const char* value(const ::robot_vision::FaceMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_vision::FaceMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.w);
      stream.next(m.h);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FaceMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_vision::FaceMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_vision::FaceMsg_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "w: ";
    Printer<float>::stream(s, indent + "  ", v.w);
    s << indent << "h: ";
    Printer<float>::stream(s, indent + "  ", v.h);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_VISION_MESSAGE_FACEMSG_H
