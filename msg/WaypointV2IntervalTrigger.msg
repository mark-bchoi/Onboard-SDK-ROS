#constant for actionIntervalType
uint8 DJIWAYPOINTV2ACTIONINTERVALTYPETIME = 1 # The action will be repeated after a particular period of time.
uint8 DJIWAYPOINTV2ACTIONINTERVALTYPEDISTANCE = 2 # The action will be repeated after a particular distance.
uint8 DJIWAYPOINTV2ACTIONINTERVALTYPEUNKNOWN = 255 # Unknown action trigger type.

uint16 start_index # It determines the index of the waypoint at which the trigger starts.
# If the  ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam_actionIntervalType``
# is ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_Time``
# The time interval in seconds when two action are executed as the aircraft moves
# from the current waypoint to the next waypoint.
# If the ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam_actionIntervalType`` is
# ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_Distance``
# The distance interval in meters when two action are executed as the aircraft moves
# from the current waypoint to the next waypoint.
uint16 interval 
uint8 action_interval_type # The type of interval trigger.
# See ``DJIWaypointV2MissionV2_DJIWaypointV2ActionIntervalType``.