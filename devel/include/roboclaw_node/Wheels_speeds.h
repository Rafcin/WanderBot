// Generated by gencpp from file roboclaw_node/Wheels_speeds.msg
// DO NOT EDIT!


#ifndef ROBOCLAW_NODE_MESSAGE_WHEELS_SPEEDS_H
#define ROBOCLAW_NODE_MESSAGE_WHEELS_SPEEDS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roboclaw_node
{
template <class ContainerAllocator>
struct Wheels_speeds_
{
  typedef Wheels_speeds_<ContainerAllocator> Type;

  Wheels_speeds_()
    : wheel1(0.0)
    , wheel2(0.0)  {
    }
  Wheels_speeds_(const ContainerAllocator& _alloc)
    : wheel1(0.0)
    , wheel2(0.0)  {
  (void)_alloc;
    }



   typedef float _wheel1_type;
  _wheel1_type wheel1;

   typedef float _wheel2_type;
  _wheel2_type wheel2;




  typedef boost::shared_ptr< ::roboclaw_node::Wheels_speeds_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboclaw_node::Wheels_speeds_<ContainerAllocator> const> ConstPtr;

}; // struct Wheels_speeds_

typedef ::roboclaw_node::Wheels_speeds_<std::allocator<void> > Wheels_speeds;

typedef boost::shared_ptr< ::roboclaw_node::Wheels_speeds > Wheels_speedsPtr;
typedef boost::shared_ptr< ::roboclaw_node::Wheels_speeds const> Wheels_speedsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboclaw_node::Wheels_speeds_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboclaw_node::Wheels_speeds_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace roboclaw_node

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'roboclaw_node': ['/home/nvidia/zuckbot_ws/src/roboclaw_ros/roboclaw_node/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::roboclaw_node::Wheels_speeds_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboclaw_node::Wheels_speeds_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboclaw_node::Wheels_speeds_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboclaw_node::Wheels_speeds_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboclaw_node::Wheels_speeds_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboclaw_node::Wheels_speeds_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboclaw_node::Wheels_speeds_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2108b8f789e1bd68070c8a00d7676194";
  }

  static const char* value(const ::roboclaw_node::Wheels_speeds_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2108b8f789e1bd68ULL;
  static const uint64_t static_value2 = 0x070c8a00d7676194ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboclaw_node::Wheels_speeds_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboclaw_node/Wheels_speeds";
  }

  static const char* value(const ::roboclaw_node::Wheels_speeds_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboclaw_node::Wheels_speeds_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 wheel1\n\
float32 wheel2\n\
";
  }

  static const char* value(const ::roboclaw_node::Wheels_speeds_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboclaw_node::Wheels_speeds_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.wheel1);
      stream.next(m.wheel2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Wheels_speeds_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboclaw_node::Wheels_speeds_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboclaw_node::Wheels_speeds_<ContainerAllocator>& v)
  {
    s << indent << "wheel1: ";
    Printer<float>::stream(s, indent + "  ", v.wheel1);
    s << indent << "wheel2: ";
    Printer<float>::stream(s, indent + "  ", v.wheel2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOCLAW_NODE_MESSAGE_WHEELS_SPEEDS_H