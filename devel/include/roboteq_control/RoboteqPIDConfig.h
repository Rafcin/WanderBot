//#line 2 "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"
// *********************************************************
// 
// File autogenerated for the roboteq_control package 
// by the dynamic_reconfigure package.
// Please do not edit.
// 
// ********************************************************/

#ifndef __roboteq_control__ROBOTEQPIDCONFIG_H__
#define __roboteq_control__ROBOTEQPIDCONFIG_H__

#include <dynamic_reconfigure/config_tools.h>
#include <limits>
#include <ros/node_handle.h>
#include <dynamic_reconfigure/ConfigDescription.h>
#include <dynamic_reconfigure/ParamDescription.h>
#include <dynamic_reconfigure/Group.h>
#include <dynamic_reconfigure/config_init_mutex.h>
#include <boost/any.hpp>

namespace roboteq_control
{
  class RoboteqPIDConfigStatics;
  
  class RoboteqPIDConfig
  {
  public:
    class AbstractParamDescription : public dynamic_reconfigure::ParamDescription
    {
    public:
      AbstractParamDescription(std::string n, std::string t, uint32_t l, 
          std::string d, std::string e)
      {
        name = n;
        type = t;
        level = l;
        description = d;
        edit_method = e;
      }
      
      virtual void clamp(RoboteqPIDConfig &config, const RoboteqPIDConfig &max, const RoboteqPIDConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const RoboteqPIDConfig &config1, const RoboteqPIDConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, RoboteqPIDConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const RoboteqPIDConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, RoboteqPIDConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const RoboteqPIDConfig &config) const = 0;
      virtual void getValue(const RoboteqPIDConfig &config, boost::any &val) const = 0;
    };

    typedef boost::shared_ptr<AbstractParamDescription> AbstractParamDescriptionPtr;
    typedef boost::shared_ptr<const AbstractParamDescription> AbstractParamDescriptionConstPtr;
    
    template <class T>
    class ParamDescription : public AbstractParamDescription
    {
    public:
      ParamDescription(std::string a_name, std::string a_type, uint32_t a_level, 
          std::string a_description, std::string a_edit_method, T RoboteqPIDConfig::* a_f) :
        AbstractParamDescription(a_name, a_type, a_level, a_description, a_edit_method),
        field(a_f)
      {}

      T (RoboteqPIDConfig::* field);

      virtual void clamp(RoboteqPIDConfig &config, const RoboteqPIDConfig &max, const RoboteqPIDConfig &min) const
      {
        if (config.*field > max.*field)
          config.*field = max.*field;
        
        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const RoboteqPIDConfig &config1, const RoboteqPIDConfig &config2) const
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, RoboteqPIDConfig &config) const
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const RoboteqPIDConfig &config) const
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, RoboteqPIDConfig &config) const
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const RoboteqPIDConfig &config) const
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const RoboteqPIDConfig &config, boost::any &val) const
      {
        val = config.*field;
      }
    };

    class AbstractGroupDescription : public dynamic_reconfigure::Group
    {
      public:
      AbstractGroupDescription(std::string n, std::string t, int p, int i, bool s)
      {
        name = n;
        type = t;
        parent = p;
        state = s;
        id = i;
      }

      std::vector<AbstractParamDescriptionConstPtr> abstract_parameters;
      bool state;

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &config) const =0;
      virtual void updateParams(boost::any &cfg, RoboteqPIDConfig &top) const= 0;
      virtual void setInitialState(boost::any &cfg) const = 0;


      void convertParams()
      {
        for(std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = abstract_parameters.begin(); i != abstract_parameters.end(); ++i)
        {
          parameters.push_back(dynamic_reconfigure::ParamDescription(**i));
        }
      }
    };

    typedef boost::shared_ptr<AbstractGroupDescription> AbstractGroupDescriptionPtr;
    typedef boost::shared_ptr<const AbstractGroupDescription> AbstractGroupDescriptionConstPtr;

    template<class T, class PT>
    class GroupDescription : public AbstractGroupDescription
    {
    public:
      GroupDescription(std::string a_name, std::string a_type, int a_parent, int a_id, bool a_s, T PT::* a_f) : AbstractGroupDescription(a_name, a_type, a_parent, a_id, a_s), field(a_f)
      {
      }

      GroupDescription(const GroupDescription<T, PT>& g): AbstractGroupDescription(g.name, g.type, g.parent, g.id, g.state), field(g.field), groups(g.groups)
      {
        parameters = g.parameters;
        abstract_parameters = g.abstract_parameters;
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        if(!dynamic_reconfigure::ConfigTools::getGroupState(msg, name, (*config).*field))
          return false;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          if(!(*i)->fromMessage(msg, n))
            return false;
        }

        return true;
      }

      virtual void setInitialState(boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        T* group = &((*config).*field);
        group->state = state;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = boost::any(&((*config).*field));
          (*i)->setInitialState(n);
        }

      }

      virtual void updateParams(boost::any &cfg, RoboteqPIDConfig &top) const
      {
        PT* config = boost::any_cast<PT*>(cfg);

        T* f = &((*config).*field);
        f->setParams(top, abstract_parameters);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          (*i)->updateParams(n, top);
        }
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &cfg) const
      {
        const PT config = boost::any_cast<PT>(cfg);
        dynamic_reconfigure::ConfigTools::appendGroup<T>(msg, name, id, parent, config.*field);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          (*i)->toMessage(msg, config.*field);
        }
      }

      T (PT::* field);
      std::vector<RoboteqPIDConfig::AbstractGroupDescriptionConstPtr> groups;
    };
    
class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(RoboteqPIDConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("position_mode_velocity"==(*_i)->name){position_mode_velocity = boost::any_cast<int>(val);}
        if("turn_min_to_max"==(*_i)->name){turn_min_to_max = boost::any_cast<double>(val);}
        if("Kp"==(*_i)->name){Kp = boost::any_cast<double>(val);}
        if("Ki"==(*_i)->name){Ki = boost::any_cast<double>(val);}
        if("Kd"==(*_i)->name){Kd = boost::any_cast<double>(val);}
        if("integrator_limit"==(*_i)->name){integrator_limit = boost::any_cast<int>(val);}
        if("loop_error_detection"==(*_i)->name){loop_error_detection = boost::any_cast<int>(val);}
        if("load_roboteq"==(*_i)->name){load_roboteq = boost::any_cast<bool>(val);}
        if("restore_defaults"==(*_i)->name){restore_defaults = boost::any_cast<bool>(val);}
      }
    }

    int position_mode_velocity;
double turn_min_to_max;
double Kp;
double Ki;
double Kd;
int integrator_limit;
int loop_error_detection;
bool load_roboteq;
bool restore_defaults;

    bool state;
    std::string name;

    
}groups;



//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int position_mode_velocity;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double turn_min_to_max;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double Kp;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double Ki;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double Kd;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int integrator_limit;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int loop_error_detection;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool load_roboteq;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool restore_defaults;
//#line 218 "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

    bool __fromMessage__(dynamic_reconfigure::Config &msg)
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();

      int count = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        if ((*i)->fromMessage(msg, *this))
          count++;

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i ++)
      {
        if ((*i)->id == 0)
        {
          boost::any n = boost::any(this);
          (*i)->updateParams(n, *this);
          (*i)->fromMessage(msg, n);
        }
      }

      if (count != dynamic_reconfigure::ConfigTools::size(msg))
      {
        ROS_ERROR("RoboteqPIDConfig::__fromMessage__ called with an unexpected parameter.");
        ROS_ERROR("Booleans:");
        for (unsigned int i = 0; i < msg.bools.size(); i++)
          ROS_ERROR("  %s", msg.bools[i].name.c_str());
        ROS_ERROR("Integers:");
        for (unsigned int i = 0; i < msg.ints.size(); i++)
          ROS_ERROR("  %s", msg.ints[i].name.c_str());
        ROS_ERROR("Doubles:");
        for (unsigned int i = 0; i < msg.doubles.size(); i++)
          ROS_ERROR("  %s", msg.doubles[i].name.c_str());
        ROS_ERROR("Strings:");
        for (unsigned int i = 0; i < msg.strs.size(); i++)
          ROS_ERROR("  %s", msg.strs[i].name.c_str());
        // @todo Check that there are no duplicates. Make this error more
        // explicit.
        return false;
      }
      return true;
    }

    // This version of __toMessage__ is used during initialization of
    // statics when __getParamDescriptions__ can't be called yet.
    void __toMessage__(dynamic_reconfigure::Config &msg, const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__, const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__) const
    {
      dynamic_reconfigure::ConfigTools::clear(msg);
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toMessage(msg, *this);

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        if((*i)->id == 0)
        {
          (*i)->toMessage(msg, *this);
        }
      }
    }
    
    void __toMessage__(dynamic_reconfigure::Config &msg) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      __toMessage__(msg, __param_descriptions__, __group_descriptions__);
    }
    
    void __toServer__(const ros::NodeHandle &nh) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toServer(nh, *this);
    }

    void __fromServer__(const ros::NodeHandle &nh)
    {
      static bool setup=false;

      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->fromServer(nh, *this);

      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i++){
        if (!setup && (*i)->id == 0) {
          setup = true;
          boost::any n = boost::any(this);
          (*i)->setInitialState(n);
        }
      }
    }

    void __clamp__()
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const RoboteqPIDConfig &__max__ = __getMax__();
      const RoboteqPIDConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const RoboteqPIDConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }
    
    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const RoboteqPIDConfig &__getDefault__();
    static const RoboteqPIDConfig &__getMax__();
    static const RoboteqPIDConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();
    
  private:
    static const RoboteqPIDConfigStatics *__get_statics__();
  };
  
  template <> // Max and min are ignored for strings.
  inline void RoboteqPIDConfig::ParamDescription<std::string>::clamp(RoboteqPIDConfig &config, const RoboteqPIDConfig &max, const RoboteqPIDConfig &min) const
  {
    (void) config;
    (void) min;
    (void) max;
    return;
  }

  class RoboteqPIDConfigStatics
  {
    friend class RoboteqPIDConfig;
    
    RoboteqPIDConfigStatics()
    {
RoboteqPIDConfig::GroupDescription<RoboteqPIDConfig::DEFAULT, RoboteqPIDConfig> Default("Default", "", 0, 0, true, &RoboteqPIDConfig::groups);
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.position_mode_velocity = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.position_mode_velocity = 30000;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.position_mode_velocity = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqPIDConfig::AbstractParamDescriptionConstPtr(new RoboteqPIDConfig::ParamDescription<int>("position_mode_velocity", "int", 0, "[RPM] Default speed at which move the motor moves in position mode", "", &RoboteqPIDConfig::position_mode_velocity)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqPIDConfig::AbstractParamDescriptionConstPtr(new RoboteqPIDConfig::ParamDescription<int>("position_mode_velocity", "int", 0, "[RPM] Default speed at which move the motor moves in position mode", "", &RoboteqPIDConfig::position_mode_velocity)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.turn_min_to_max = 0.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.turn_min_to_max = 1000.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.turn_min_to_max = 0.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqPIDConfig::AbstractParamDescriptionConstPtr(new RoboteqPIDConfig::ParamDescription<double>("turn_min_to_max", "double", 0, "When the encoder are used is automatically computed", "", &RoboteqPIDConfig::turn_min_to_max)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqPIDConfig::AbstractParamDescriptionConstPtr(new RoboteqPIDConfig::ParamDescription<double>("turn_min_to_max", "double", 0, "When the encoder are used is automatically computed", "", &RoboteqPIDConfig::turn_min_to_max)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.Kp = 0.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.Kp = 25.5;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.Kp = 0.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqPIDConfig::AbstractParamDescriptionConstPtr(new RoboteqPIDConfig::ParamDescription<double>("Kp", "double", 0, "Kp gain PID", "", &RoboteqPIDConfig::Kp)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqPIDConfig::AbstractParamDescriptionConstPtr(new RoboteqPIDConfig::ParamDescription<double>("Kp", "double", 0, "Kp gain PID", "", &RoboteqPIDConfig::Kp)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.Ki = 0.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.Ki = 25.5;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.Ki = 0.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqPIDConfig::AbstractParamDescriptionConstPtr(new RoboteqPIDConfig::ParamDescription<double>("Ki", "double", 0, "Ki gain PID", "", &RoboteqPIDConfig::Ki)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqPIDConfig::AbstractParamDescriptionConstPtr(new RoboteqPIDConfig::ParamDescription<double>("Ki", "double", 0, "Ki gain PID", "", &RoboteqPIDConfig::Ki)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.Kd = 0.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.Kd = 25.5;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.Kd = 0.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqPIDConfig::AbstractParamDescriptionConstPtr(new RoboteqPIDConfig::ParamDescription<double>("Kd", "double", 0, "Kd gain PID", "", &RoboteqPIDConfig::Kd)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqPIDConfig::AbstractParamDescriptionConstPtr(new RoboteqPIDConfig::ParamDescription<double>("Kd", "double", 0, "Kd gain PID", "", &RoboteqPIDConfig::Kd)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.integrator_limit = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.integrator_limit = 100;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.integrator_limit = 100;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqPIDConfig::AbstractParamDescriptionConstPtr(new RoboteqPIDConfig::ParamDescription<int>("integrator_limit", "int", 0, "[#] Integrator limit", "", &RoboteqPIDConfig::integrator_limit)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqPIDConfig::AbstractParamDescriptionConstPtr(new RoboteqPIDConfig::ParamDescription<int>("integrator_limit", "int", 0, "[#] Integrator limit", "", &RoboteqPIDConfig::integrator_limit)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.loop_error_detection = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.loop_error_detection = 3;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.loop_error_detection = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqPIDConfig::AbstractParamDescriptionConstPtr(new RoboteqPIDConfig::ParamDescription<int>("loop_error_detection", "int", 0, "Loop error detection", "{'enum_description': 'loop error detection', 'enum': [{'srcline': 16, 'description': 'Detection disabled', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPID.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'detection_disabled'}, {'srcline': 17, 'description': '250ms at error > 100', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPID.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': '250ms_at_error_up_100'}, {'srcline': 18, 'description': '500ms at error > 250', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPID.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': '500ms_at_error_up_250'}, {'srcline': 19, 'description': '1000ms at error > 500', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPID.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': '1000ms_at_error_up_500'}]}", &RoboteqPIDConfig::loop_error_detection)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqPIDConfig::AbstractParamDescriptionConstPtr(new RoboteqPIDConfig::ParamDescription<int>("loop_error_detection", "int", 0, "Loop error detection", "{'enum_description': 'loop error detection', 'enum': [{'srcline': 16, 'description': 'Detection disabled', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPID.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'detection_disabled'}, {'srcline': 17, 'description': '250ms at error > 100', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPID.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': '250ms_at_error_up_100'}, {'srcline': 18, 'description': '500ms at error > 250', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPID.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': '500ms_at_error_up_250'}, {'srcline': 19, 'description': '1000ms at error > 500', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPID.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': '1000ms_at_error_up_500'}]}", &RoboteqPIDConfig::loop_error_detection)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.load_roboteq = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.load_roboteq = 1;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.load_roboteq = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqPIDConfig::AbstractParamDescriptionConstPtr(new RoboteqPIDConfig::ParamDescription<bool>("load_roboteq", "bool", 0, "Load all parameters from Roboteq board", "", &RoboteqPIDConfig::load_roboteq)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqPIDConfig::AbstractParamDescriptionConstPtr(new RoboteqPIDConfig::ParamDescription<bool>("load_roboteq", "bool", 0, "Load all parameters from Roboteq board", "", &RoboteqPIDConfig::load_roboteq)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.restore_defaults = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.restore_defaults = 1;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.restore_defaults = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqPIDConfig::AbstractParamDescriptionConstPtr(new RoboteqPIDConfig::ParamDescription<bool>("restore_defaults", "bool", 0, "Restore to the original configuration", "", &RoboteqPIDConfig::restore_defaults)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqPIDConfig::AbstractParamDescriptionConstPtr(new RoboteqPIDConfig::ParamDescription<bool>("restore_defaults", "bool", 0, "Restore to the original configuration", "", &RoboteqPIDConfig::restore_defaults)));
//#line 246 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 246 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(RoboteqPIDConfig::AbstractGroupDescriptionConstPtr(new RoboteqPIDConfig::GroupDescription<RoboteqPIDConfig::DEFAULT, RoboteqPIDConfig>(Default)));
//#line 356 "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

      for (std::vector<RoboteqPIDConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__); 
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__); 
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__); 
    }
    std::vector<RoboteqPIDConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<RoboteqPIDConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    RoboteqPIDConfig __max__;
    RoboteqPIDConfig __min__;
    RoboteqPIDConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const RoboteqPIDConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static RoboteqPIDConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &RoboteqPIDConfig::__getDescriptionMessage__() 
  {
    return __get_statics__()->__description_message__;
  }

  inline const RoboteqPIDConfig &RoboteqPIDConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }
  
  inline const RoboteqPIDConfig &RoboteqPIDConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }
  
  inline const RoboteqPIDConfig &RoboteqPIDConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }
  
  inline const std::vector<RoboteqPIDConfig::AbstractParamDescriptionConstPtr> &RoboteqPIDConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<RoboteqPIDConfig::AbstractGroupDescriptionConstPtr> &RoboteqPIDConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const RoboteqPIDConfigStatics *RoboteqPIDConfig::__get_statics__()
  {
    const static RoboteqPIDConfigStatics *statics;
  
    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = RoboteqPIDConfigStatics::get_instance();
    
    return statics;
  }

//#line 16 "/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPID.cfg"
      const int RoboteqPID_detection_disabled = 0;
//#line 17 "/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPID.cfg"
      const int RoboteqPID_250ms_at_error_up_100 = 1;
//#line 18 "/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPID.cfg"
      const int RoboteqPID_500ms_at_error_up_250 = 2;
//#line 19 "/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPID.cfg"
      const int RoboteqPID_1000ms_at_error_up_500 = 3;
}

#endif // __ROBOTEQPIDRECONFIGURATOR_H__
