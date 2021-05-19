// Generated by gencpp from file image_generator/Detection.msg
// DO NOT EDIT!


#ifndef IMAGE_GENERATOR_MESSAGE_DETECTION_H
#define IMAGE_GENERATOR_MESSAGE_DETECTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace image_generator
{
template <class ContainerAllocator>
struct Detection_
{
  typedef Detection_<ContainerAllocator> Type;

  Detection_()
    : cx(0.0)
    , cy(0.0)
    , x1(0.0)
    , x2(0.0)
    , y1(0.0)
    , y2(0.0)
    , scores()
    , classification(0)  {
    }
  Detection_(const ContainerAllocator& _alloc)
    : cx(0.0)
    , cy(0.0)
    , x1(0.0)
    , x2(0.0)
    , y1(0.0)
    , y2(0.0)
    , scores(_alloc)
    , classification(0)  {
  (void)_alloc;
    }



   typedef float _cx_type;
  _cx_type cx;

   typedef float _cy_type;
  _cy_type cy;

   typedef float _x1_type;
  _x1_type x1;

   typedef float _x2_type;
  _x2_type x2;

   typedef float _y1_type;
  _y1_type y1;

   typedef float _y2_type;
  _y2_type y2;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _scores_type;
  _scores_type scores;

   typedef int16_t _classification_type;
  _classification_type classification;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(ClassUnclassified)
  #undef ClassUnclassified
#endif
#if defined(_WIN32) && defined(ClassUnknownSmall)
  #undef ClassUnknownSmall
#endif
#if defined(_WIN32) && defined(ClassUnknownBig)
  #undef ClassUnknownBig
#endif
#if defined(_WIN32) && defined(ClassPedestrian)
  #undef ClassPedestrian
#endif
#if defined(_WIN32) && defined(ClassMotorbike)
  #undef ClassMotorbike
#endif
#if defined(_WIN32) && defined(ClassCar)
  #undef ClassCar
#endif
#if defined(_WIN32) && defined(ClassTruck)
  #undef ClassTruck
#endif
#if defined(_WIN32) && defined(ClassStructure_Pylon)
  #undef ClassStructure_Pylon
#endif
#if defined(_WIN32) && defined(ClassStructure_Beacon)
  #undef ClassStructure_Beacon
#endif
#if defined(_WIN32) && defined(ClassStructure_GuardRail)
  #undef ClassStructure_GuardRail
#endif
#if defined(_WIN32) && defined(ClassStructure_ConcreteBarrier)
  #undef ClassStructure_ConcreteBarrier
#endif
#if defined(_WIN32) && defined(ClassUnknown)
  #undef ClassUnknown
#endif
#if defined(_WIN32) && defined(ClassBus)
  #undef ClassBus
#endif
#if defined(_WIN32) && defined(ClassBicycle)
  #undef ClassBicycle
#endif
#if defined(_WIN32) && defined(ClassTrafficLight)
  #undef ClassTrafficLight
#endif
#if defined(_WIN32) && defined(ClassTrain)
  #undef ClassTrain
#endif

  enum {
    ClassUnclassified = 0,
    ClassUnknownSmall = 1,
    ClassUnknownBig = 2,
    ClassPedestrian = 3,
    ClassMotorbike = 4,
    ClassCar = 5,
    ClassTruck = 6,
    ClassStructure_Pylon = 7,
    ClassStructure_Beacon = 8,
    ClassStructure_GuardRail = 9,
    ClassStructure_ConcreteBarrier = 10,
    ClassUnknown = 15,
    ClassBus = 16,
    ClassBicycle = 17,
    ClassTrafficLight = 18,
    ClassTrain = 19,
  };


  typedef boost::shared_ptr< ::image_generator::Detection_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::image_generator::Detection_<ContainerAllocator> const> ConstPtr;

}; // struct Detection_

typedef ::image_generator::Detection_<std::allocator<void> > Detection;

typedef boost::shared_ptr< ::image_generator::Detection > DetectionPtr;
typedef boost::shared_ptr< ::image_generator::Detection const> DetectionConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::image_generator::Detection_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::image_generator::Detection_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::image_generator::Detection_<ContainerAllocator1> & lhs, const ::image_generator::Detection_<ContainerAllocator2> & rhs)
{
  return lhs.cx == rhs.cx &&
    lhs.cy == rhs.cy &&
    lhs.x1 == rhs.x1 &&
    lhs.x2 == rhs.x2 &&
    lhs.y1 == rhs.y1 &&
    lhs.y2 == rhs.y2 &&
    lhs.scores == rhs.scores &&
    lhs.classification == rhs.classification;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::image_generator::Detection_<ContainerAllocator1> & lhs, const ::image_generator::Detection_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace image_generator

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::image_generator::Detection_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::image_generator::Detection_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::image_generator::Detection_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::image_generator::Detection_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::image_generator::Detection_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::image_generator::Detection_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::image_generator::Detection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "81bf65ed206cd9d9e7ff61e00901db1f";
  }

  static const char* value(const ::image_generator::Detection_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x81bf65ed206cd9d9ULL;
  static const uint64_t static_value2 = 0xe7ff61e00901db1fULL;
};

template<class ContainerAllocator>
struct DataType< ::image_generator::Detection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "image_generator/Detection";
  }

  static const char* value(const ::image_generator::Detection_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::image_generator::Detection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Center of segmentation\n"
"float32 cx\n"
"float32 cy\n"
"\n"
"# Bounding box corners\n"
"float32 x1\n"
"float32 x2\n"
"float32 y1\n"
"float32 y2\n"
"\n"
"# The classification confidences (probabilities)\n"
"float32[] scores\n"
"\n"
"# Enum for the obstacle classification result\n"
"int16   ClassUnclassified = 0 \n"
"int16   ClassUnknownSmall = 1\n"
"int16   ClassUnknownBig = 2\n"
"int16   ClassPedestrian = 3 \n"
"int16   ClassMotorbike = 4\n"
"int16   ClassCar = 5\n"
"int16   ClassTruck = 6\n"
"int16   ClassStructure_Pylon = 7\n"
"int16   ClassStructure_Beacon = 8\n"
"int16   ClassStructure_GuardRail = 9\n"
"int16   ClassStructure_ConcreteBarrier = 10\n"
"int16   ClassUnknown = 15\n"
"int16   ClassBus = 16\n"
"int16   ClassBicycle = 17\n"
"int16   ClassTrafficLight = 18\n"
"int16   ClassTrain = 19\n"
"\n"
"# The obstacle classification with the highest probability.\n"
"#\n"
"int16   classification\n"
;
  }

  static const char* value(const ::image_generator::Detection_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::image_generator::Detection_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cx);
      stream.next(m.cy);
      stream.next(m.x1);
      stream.next(m.x2);
      stream.next(m.y1);
      stream.next(m.y2);
      stream.next(m.scores);
      stream.next(m.classification);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Detection_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::image_generator::Detection_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::image_generator::Detection_<ContainerAllocator>& v)
  {
    s << indent << "cx: ";
    Printer<float>::stream(s, indent + "  ", v.cx);
    s << indent << "cy: ";
    Printer<float>::stream(s, indent + "  ", v.cy);
    s << indent << "x1: ";
    Printer<float>::stream(s, indent + "  ", v.x1);
    s << indent << "x2: ";
    Printer<float>::stream(s, indent + "  ", v.x2);
    s << indent << "y1: ";
    Printer<float>::stream(s, indent + "  ", v.y1);
    s << indent << "y2: ";
    Printer<float>::stream(s, indent + "  ", v.y2);
    s << indent << "scores[]" << std::endl;
    for (size_t i = 0; i < v.scores.size(); ++i)
    {
      s << indent << "  scores[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.scores[i]);
    }
    s << indent << "classification: ";
    Printer<int16_t>::stream(s, indent + "  ", v.classification);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IMAGE_GENERATOR_MESSAGE_DETECTION_H
