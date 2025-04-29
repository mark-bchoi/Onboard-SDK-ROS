# This class represents an action for ``DJIWaypointV2Mission``. It
# determines how action is performed when a waypoint mission is executed.

# The action will be triggered when action associated executes.
# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2AssociateTriggerParam``.
uint8 DJIWAYPOINTV2ACTIONTRIGGERTYPEACTIONASSOCIATED = 2

# The action will be triggered when the aircraft flies from one waypoint to the next.
# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2TrajectoryTriggerParam``.
uint8 DJIWAYPOINTV2ACTIONTRIGGERTYPETRAJECTORY = 3

# The action will be triggered when the aircraft flies between two waypoints
# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam``.
uint8 DJIWAYPOINTV2ACTIONTRIGGERTYPEINTERVAL = 4
uint8 DJIWAYPOINTV2ACTIONTRIGGERTYPESAMPLEREACHPOINT = 5

# Unknown
uint8 DJIWAYPOINTV2ACTIONTRIGGERTYPEUNKNOWN = 255

#contant for waypointV2ActuatorTriggerType
# The action will be executed by the camera.
# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.
uint8 DJIWAYPOINTV2ACTIONACTUATORTYPECAMERA = 1

# The action will be executed by the gimbal.
# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2GimbalActuatorParam``.
uint8 DJIWAYPOINTV2ACTIONACTUATORTYPEGIMBAL = 2

# The action will executes by control aircraft.
# The parameters should be setting by ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.
uint8 DJIWAYPOINTV2ACTIONACTUATORTYPEAIRCRAFTCONTROL = 4

# Unknown actuator type.
uint8 DJIWAYPOINTV2ACTIONACTUATORTYPEUNKNOWN = 255

uint16 action_id # The ID of Action.

uint8 waypoint_v_2_action_trigger_type 
uint8 waypoint_v_2_a_ction_actuator_type 

# The trigger of action.You can only choose one to config
WaypointV2AssociateTrigger waypoint_v_2_associate_trigger 
WaypointV2IntervalTrigger waypoint_v_2_interval_trigger 
WaypointV2TrajectoryTrigger waypoint_v_2_trajectory_trigger 
WaypointV2SampleReachPointTrigger waypoint_v_2_sample_reach_point_trigger 

# The actuator of action.You can only choose one to config
WaypointV2CameraActuator waypoint_v_2_camera_actuator 
WaypointV2GimbalActuator waypoint_v_2_gimbal_actuator 
WaypointV2AircraftControlActuator waypoint_v_2_aircraft_control_actuator 