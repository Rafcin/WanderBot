//#line 2 "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"
// *********************************************************
// 
// File autogenerated for the roboteq_control package 
// by the dynamic_reconfigure package.
// Please do not edit.
// 
// ********************************************************/

#ifndef __roboteq_control__ROBOTEQCONTROLLERCONFIG_H__
#define __roboteq_control__ROBOTEQCONTROLLERCONFIG_H__

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
  class RoboteqControllerConfigStatics;
  
  class RoboteqControllerConfig
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
      
      virtual void clamp(RoboteqControllerConfig &config, const RoboteqControllerConfig &max, const RoboteqControllerConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const RoboteqControllerConfig &config1, const RoboteqControllerConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, RoboteqControllerConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const RoboteqControllerConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, RoboteqControllerConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const RoboteqControllerConfig &config) const = 0;
      virtual void getValue(const RoboteqControllerConfig &config, boost::any &val) const = 0;
    };

    typedef boost::shared_ptr<AbstractParamDescription> AbstractParamDescriptionPtr;
    typedef boost::shared_ptr<const AbstractParamDescription> AbstractParamDescriptionConstPtr;
    
    template <class T>
    class ParamDescription : public AbstractParamDescription
    {
    public:
      ParamDescription(std::string a_name, std::string a_type, uint32_t a_level, 
          std::string a_description, std::string a_edit_method, T RoboteqControllerConfig::* a_f) :
        AbstractParamDescription(a_name, a_type, a_level, a_description, a_edit_method),
        field(a_f)
      {}

      T (RoboteqControllerConfig::* field);

      virtual void clamp(RoboteqControllerConfig &config, const RoboteqControllerConfig &max, const RoboteqControllerConfig &min) const
      {
        if (config.*field > max.*field)
          config.*field = max.*field;
        
        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const RoboteqControllerConfig &config1, const RoboteqControllerConfig &config2) const
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, RoboteqControllerConfig &config) const
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const RoboteqControllerConfig &config) const
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, RoboteqControllerConfig &config) const
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const RoboteqControllerConfig &config) const
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const RoboteqControllerConfig &config, boost::any &val) const
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
      virtual void updateParams(boost::any &cfg, RoboteqControllerConfig &top) const= 0;
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

      virtual void updateParams(boost::any &cfg, RoboteqControllerConfig &top) const
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
      std::vector<RoboteqControllerConfig::AbstractGroupDescriptionConstPtr> groups;
    };
    
class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(RoboteqControllerConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("pwm_frequency"==(*_i)->name){pwm_frequency = boost::any_cast<double>(val);}
        if("over_voltage_limit"==(*_i)->name){over_voltage_limit = boost::any_cast<double>(val);}
        if("over_voltage_hysteresis"==(*_i)->name){over_voltage_hysteresis = boost::any_cast<double>(val);}
        if("under_voltage_limit"==(*_i)->name){under_voltage_limit = boost::any_cast<double>(val);}
        if("break_delay"==(*_i)->name){break_delay = boost::any_cast<int>(val);}
        if("mixing"==(*_i)->name){mixing = boost::any_cast<int>(val);}
        if("load_roboteq"==(*_i)->name){load_roboteq = boost::any_cast<bool>(val);}
        if("restore_defaults"==(*_i)->name){restore_defaults = boost::any_cast<bool>(val);}
        if("factory_reset"==(*_i)->name){factory_reset = boost::any_cast<bool>(val);}
        if("store_in_eeprom"==(*_i)->name){store_in_eeprom = boost::any_cast<bool>(val);}
        if("load_from_eeprom"==(*_i)->name){load_from_eeprom = boost::any_cast<bool>(val);}
      }
    }

    double pwm_frequency;
double over_voltage_limit;
double over_voltage_hysteresis;
double under_voltage_limit;
int break_delay;
int mixing;
bool load_roboteq;
bool restore_defaults;
bool factory_reset;
bool store_in_eeprom;
bool load_from_eeprom;

    bool state;
    std::string name;

    
}groups;



//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double pwm_frequency;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double over_voltage_limit;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double over_voltage_hysteresis;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double under_voltage_limit;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int break_delay;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int mixing;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool load_roboteq;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool restore_defaults;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool factory_reset;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool store_in_eeprom;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool load_from_eeprom;
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
        ROS_ERROR("RoboteqControllerConfig::__fromMessage__ called with an unexpected parameter.");
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
      const RoboteqControllerConfig &__max__ = __getMax__();
      const RoboteqControllerConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const RoboteqControllerConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }
    
    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const RoboteqControllerConfig &__getDefault__();
    static const RoboteqControllerConfig &__getMax__();
    static const RoboteqControllerConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();
    
  private:
    static const RoboteqControllerConfigStatics *__get_statics__();
  };
  
  template <> // Max and min are ignored for strings.
  inline void RoboteqControllerConfig::ParamDescription<std::string>::clamp(RoboteqControllerConfig &config, const RoboteqControllerConfig &max, const RoboteqControllerConfig &min) const
  {
    (void) config;
    (void) min;
    (void) max;
    return;
  }

  class RoboteqControllerConfigStatics
  {
    friend class RoboteqControllerConfig;
    
    RoboteqControllerConfigStatics()
    {
RoboteqControllerConfig::GroupDescription<RoboteqControllerConfig::DEFAULT, RoboteqControllerConfig> Default("Default", "", 0, 0, true, &RoboteqControllerConfig::groups);
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.pwm_frequency = 10.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.pwm_frequency = 30.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.pwm_frequency = 10.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<double>("pwm_frequency", "double", 0, "[kHz] Frequency PWM motors", "", &RoboteqControllerConfig::pwm_frequency)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<double>("pwm_frequency", "double", 0, "[kHz] Frequency PWM motors", "", &RoboteqControllerConfig::pwm_frequency)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.over_voltage_limit = 0.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.over_voltage_limit = 60.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.over_voltage_limit = 10.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<double>("over_voltage_limit", "double", 0, "[V] Over voltage limit", "", &RoboteqControllerConfig::over_voltage_limit)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<double>("over_voltage_limit", "double", 0, "[V] Over voltage limit", "", &RoboteqControllerConfig::over_voltage_limit)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.over_voltage_hysteresis = 0.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.over_voltage_hysteresis = 25.5;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.over_voltage_hysteresis = 5.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<double>("over_voltage_hysteresis", "double", 0, "[V] Over voltage histeresis", "", &RoboteqControllerConfig::over_voltage_hysteresis)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<double>("over_voltage_hysteresis", "double", 0, "[V] Over voltage histeresis", "", &RoboteqControllerConfig::over_voltage_hysteresis)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.under_voltage_limit = 0.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.under_voltage_limit = 60.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.under_voltage_limit = 10.0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<double>("under_voltage_limit", "double", 0, "[V] Under voltage limit", "", &RoboteqControllerConfig::under_voltage_limit)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<double>("under_voltage_limit", "double", 0, "[V] Under voltage limit", "", &RoboteqControllerConfig::under_voltage_limit)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.break_delay = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.break_delay = 65536;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.break_delay = 250;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<int>("break_delay", "int", 0, "[ms] Break activation delay", "", &RoboteqControllerConfig::break_delay)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<int>("break_delay", "int", 0, "[ms] Break activation delay", "", &RoboteqControllerConfig::break_delay)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.mixing = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.mixing = 3;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.mixing = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<int>("mixing", "int", 0, "Type of mixing mode", "{'enum_description': 'operation mode', 'enum': [{'srcline': 16, 'description': 'direct control channels', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqController.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'separate'}, {'srcline': 17, 'description': 'Mixed mode like tank - mode 1 (see reference)', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqController.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'mode_1'}, {'srcline': 18, 'description': 'Mixed mode like tank - mode 2 (see reference)', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqController.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'mode_2'}, {'srcline': 19, 'description': 'Mixed mode like tank - mode 3 (see reference)', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqController.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': 'mode_3'}]}", &RoboteqControllerConfig::mixing)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<int>("mixing", "int", 0, "Type of mixing mode", "{'enum_description': 'operation mode', 'enum': [{'srcline': 16, 'description': 'direct control channels', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqController.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'separate'}, {'srcline': 17, 'description': 'Mixed mode like tank - mode 1 (see reference)', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqController.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'mode_1'}, {'srcline': 18, 'description': 'Mixed mode like tank - mode 2 (see reference)', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqController.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'mode_2'}, {'srcline': 19, 'description': 'Mixed mode like tank - mode 3 (see reference)', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqController.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': 'mode_3'}]}", &RoboteqControllerConfig::mixing)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.load_roboteq = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.load_roboteq = 1;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.load_roboteq = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<bool>("load_roboteq", "bool", 0, "Load all parameters from Roboteq board", "", &RoboteqControllerConfig::load_roboteq)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<bool>("load_roboteq", "bool", 0, "Load all parameters from Roboteq board", "", &RoboteqControllerConfig::load_roboteq)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.restore_defaults = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.restore_defaults = 1;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.restore_defaults = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<bool>("restore_defaults", "bool", 0, "Restore to the original configuration", "", &RoboteqControllerConfig::restore_defaults)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<bool>("restore_defaults", "bool", 0, "Restore to the original configuration", "", &RoboteqControllerConfig::restore_defaults)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.factory_reset = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.factory_reset = 1;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.factory_reset = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<bool>("factory_reset", "bool", 0, "Factory reset the roboteq board", "", &RoboteqControllerConfig::factory_reset)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<bool>("factory_reset", "bool", 0, "Factory reset the roboteq board", "", &RoboteqControllerConfig::factory_reset)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.store_in_eeprom = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.store_in_eeprom = 1;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.store_in_eeprom = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<bool>("store_in_eeprom", "bool", 0, "Store all parameters in EEPROM", "", &RoboteqControllerConfig::store_in_eeprom)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<bool>("store_in_eeprom", "bool", 0, "Store all parameters in EEPROM", "", &RoboteqControllerConfig::store_in_eeprom)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.load_from_eeprom = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.load_from_eeprom = 1;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.load_from_eeprom = 0;
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<bool>("load_from_eeprom", "bool", 0, "Load all parameters from EEPROM", "", &RoboteqControllerConfig::load_from_eeprom)));
//#line 293 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(RoboteqControllerConfig::AbstractParamDescriptionConstPtr(new RoboteqControllerConfig::ParamDescription<bool>("load_from_eeprom", "bool", 0, "Load all parameters from EEPROM", "", &RoboteqControllerConfig::load_from_eeprom)));
//#line 246 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 246 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(RoboteqControllerConfig::AbstractGroupDescriptionConstPtr(new RoboteqControllerConfig::GroupDescription<RoboteqControllerConfig::DEFAULT, RoboteqControllerConfig>(Default)));
//#line 356 "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

      for (std::vector<RoboteqControllerConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__); 
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__); 
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__); 
    }
    std::vector<RoboteqControllerConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<RoboteqControllerConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    RoboteqControllerConfig __max__;
    RoboteqControllerConfig __min__;
    RoboteqControllerConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const RoboteqControllerConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static RoboteqControllerConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &RoboteqControllerConfig::__getDescriptionMessage__() 
  {
    return __get_statics__()->__description_message__;
  }

  inline const RoboteqControllerConfig &RoboteqControllerConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }
  
  inline const RoboteqControllerConfig &RoboteqControllerConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }
  
  inline const RoboteqControllerConfig &RoboteqControllerConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }
  
  inline const std::vector<RoboteqControllerConfig::AbstractParamDescriptionConstPtr> &RoboteqControllerConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<RoboteqControllerConfig::AbstractGroupDescriptionConstPtr> &RoboteqControllerConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const RoboteqControllerConfigStatics *RoboteqControllerConfig::__get_statics__()
  {
    const static RoboteqControllerConfigStatics *statics;
  
    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = RoboteqControllerConfigStatics::get_instance();
    
    return statics;
  }

//#line 16 "/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqController.cfg"
      const int RoboteqController_separate = 0;
//#line 17 "/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqController.cfg"
      const int RoboteqController_mode_1 = 1;
//#line 18 "/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqController.cfg"
      const int RoboteqController_mode_2 = 2;
//#line 19 "/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqController.cfg"
      const int RoboteqController_mode_3 = 3;
}

#endif // __ROBOTEQCONTROLLERRECONFIGURATOR_H__
