// Generated by gencpp from file image_recognition_msgs/Recognition.msg
// DO NOT EDIT!


#ifndef IMAGE_RECOGNITION_MSGS_MESSAGE_RECOGNITION_H
#define IMAGE_RECOGNITION_MSGS_MESSAGE_RECOGNITION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <image_recognition_msgs/CategoricalDistribution.h>
#include <sensor_msgs/RegionOfInterest.h>

namespace image_recognition_msgs
{
template <class ContainerAllocator>
struct Recognition_
{
  typedef Recognition_<ContainerAllocator> Type;

  Recognition_()
    : categorical_distribution()
    , roi()
    , group_id(0)  {
    }
  Recognition_(const ContainerAllocator& _alloc)
    : categorical_distribution(_alloc)
    , roi(_alloc)
    , group_id(0)  {
  (void)_alloc;
    }



   typedef  ::image_recognition_msgs::CategoricalDistribution_<ContainerAllocator>  _categorical_distribution_type;
  _categorical_distribution_type categorical_distribution;

   typedef  ::sensor_msgs::RegionOfInterest_<ContainerAllocator>  _roi_type;
  _roi_type roi;

   typedef uint32_t _group_id_type;
  _group_id_type group_id;




  typedef boost::shared_ptr< ::image_recognition_msgs::Recognition_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::image_recognition_msgs::Recognition_<ContainerAllocator> const> ConstPtr;

}; // struct Recognition_

typedef ::image_recognition_msgs::Recognition_<std::allocator<void> > Recognition;

typedef boost::shared_ptr< ::image_recognition_msgs::Recognition > RecognitionPtr;
typedef boost::shared_ptr< ::image_recognition_msgs::Recognition const> RecognitionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::image_recognition_msgs::Recognition_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::image_recognition_msgs::Recognition_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace image_recognition_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'image_recognition_msgs': ['/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::image_recognition_msgs::Recognition_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::image_recognition_msgs::Recognition_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::image_recognition_msgs::Recognition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::image_recognition_msgs::Recognition_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::image_recognition_msgs::Recognition_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::image_recognition_msgs::Recognition_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::image_recognition_msgs::Recognition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "27e1989277b4d204ee94a720e6ebc927";
  }

  static const char* value(const ::image_recognition_msgs::Recognition_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x27e1989277b4d204ULL;
  static const uint64_t static_value2 = 0xee94a720e6ebc927ULL;
};

template<class ContainerAllocator>
struct DataType< ::image_recognition_msgs::Recognition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "image_recognition_msgs/Recognition";
  }

  static const char* value(const ::image_recognition_msgs::Recognition_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::image_recognition_msgs::Recognition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# A recognition in an image region of interest (roi) that is described by a\n\
# categorical distribution that contains of labels with their probabilities.\n\
# An optional group_id can be specified to group recognitions together\n\
\n\
CategoricalDistribution categorical_distribution\n\
sensor_msgs/RegionOfInterest roi\n\
uint32 group_id\n\
================================================================================\n\
MSG: image_recognition_msgs/CategoricalDistribution\n\
# Categorical distribution; if the probability of an element is below the unknown\n\
# probability, it can be classified as unknown\n\
CategoryProbability[] probabilities\n\
float32 unknown_probability\n\
\n\
================================================================================\n\
MSG: image_recognition_msgs/CategoryProbability\n\
# A category (label) with its probability (probability) that ranges from 0..1\n\
string  label\n\
float32 probability\n\
\n\
================================================================================\n\
MSG: sensor_msgs/RegionOfInterest\n\
# This message is used to specify a region of interest within an image.\n\
#\n\
# When used to specify the ROI setting of the camera when the image was\n\
# taken, the height and width fields should either match the height and\n\
# width fields for the associated image; or height = width = 0\n\
# indicates that the full resolution image was captured.\n\
\n\
uint32 x_offset  # Leftmost pixel of the ROI\n\
                 # (0 if the ROI includes the left edge of the image)\n\
uint32 y_offset  # Topmost pixel of the ROI\n\
                 # (0 if the ROI includes the top edge of the image)\n\
uint32 height    # Height of ROI\n\
uint32 width     # Width of ROI\n\
\n\
# True if a distinct rectified ROI should be calculated from the \"raw\"\n\
# ROI in this message. Typically this should be False if the full image\n\
# is captured (ROI not used), and True if a subwindow is captured (ROI\n\
# used).\n\
bool do_rectify\n\
";
  }

  static const char* value(const ::image_recognition_msgs::Recognition_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::image_recognition_msgs::Recognition_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.categorical_distribution);
      stream.next(m.roi);
      stream.next(m.group_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Recognition_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::image_recognition_msgs::Recognition_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::image_recognition_msgs::Recognition_<ContainerAllocator>& v)
  {
    s << indent << "categorical_distribution: ";
    s << std::endl;
    Printer< ::image_recognition_msgs::CategoricalDistribution_<ContainerAllocator> >::stream(s, indent + "  ", v.categorical_distribution);
    s << indent << "roi: ";
    s << std::endl;
    Printer< ::sensor_msgs::RegionOfInterest_<ContainerAllocator> >::stream(s, indent + "  ", v.roi);
    s << indent << "group_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.group_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IMAGE_RECOGNITION_MSGS_MESSAGE_RECOGNITION_H
