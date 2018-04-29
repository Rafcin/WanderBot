# Set some sane defaults for the guidebot launch environment

##Documentation:
#  The colon command simply has its arguments evaluated and then succeeds.
#   It is the original shell comment notation (before '#' to end of line). For a long time, Bourne shell scripts had a colon as the first character.
#   The C Shell would read a script and use the first character to determine whether it was for the C Shell (a '#' hash) or the Bourne shell (a ':' colon).
#   Then the kernel got in on the act and added support for '#!/path/to/program' and the Bourne shell got '#' comments, and the colon convention went by the wayside.
#   But if you come across a script that starts with a colon (Like this one), now you will know why. ~ Jonathan Leffler
# Set some sane defaults for the guidebot launch environment

##Documentation:
#  The colon command simply has its arguments evaluated and then succeeds.
#   It is the original shell comment notation (before '#' to end of line). For a long time, Bourne shell scripts had a colon as the first character.
#   The C Shell would read a script and use the first character to determine whether it was for the C Shell (a '#' hash) or the Bourne shell (a ':' colon).  #   Then the kernel got in on the act and added support for '#!/path/to/program' and the Bourne shell got '#' comments, and the colon convention went by the wayside.
#   But if you come across a script that starts with a colon (Like this one), now you will know why. ~ Jonathan Leffler

: ${GUIDEBOT_NAME:=Ann}
: ${GUIDEBOT_SIMULATION:=true}
: ${GUIDEBOT_BASE:=diff_drive}
: ${GUIDEBOT_RAPP_PACKAGE_WHITELIST:=[rocon_apps, guidebot_rapps]}
: ${GUIDEBOT_RAPP_PACKAGE_BLACKLIST:=[]}
: ${GUIDEBOT_INTERACTIONS_LIST:=[guidebot_interactions/truckadmin, guidebot_interactions/web, guidebot_interactions/pairing]}
: ${GUIDEBOT_HUB_URI:=http://localhost:6380}
: ${GUIDEBOT_CONCERT_DISABLE_ZEROCONF:=false}
: ${GUIDEBOT_DEFAULT_RAPP:=guidebot_rapps/waypoint_navigation}
: ${GUIDEBOT_PERFORMANCE:=false}
: ${GUIDEBOT_FAKE_ODOM:=false}
: ${JOY_SERIAL_PORT:=/dev/input/js0}
: ${ROS_MASTER_URI=http://localhost:11311}
: ${ROS_HOSTNAME=localhost}

# Exports
export GUIDEBOT_NAME
export GUIDEBOT_SIMULATION
export GUIDEBOT_BASE
export GUIDEBOT_RAPP_PACKAGE_WHITELIST
export GUIDEBOT_RAPP_PACKAGE_BLACKLIST
export GUIDEBOT_INTERACTIONS_LIST
export GUIDEBOT_HUB_URI
export GUIDEBOT_CONCERT_DISABLE_ZEROCONF
export GUIDEBOT_DEFAULT_RAPP
export GUIDEBOT_PERFORMANCE
export GUIDEBOT_FAKE_ODOM
export JOY_SERIAL_PORT
export ROS_MASTER_URI
export ROS_HOSTNAME
