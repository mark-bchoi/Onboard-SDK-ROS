# Parameters for aircraft control actuator. It is valid only when the
# ``DJIWaypointV2Action_DJIWaypointV2Actuator_type`` is
# ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorType_AircraftControl``.
#contant for DJIWaypointV2ActionActuatorAircraftControlOperationType
# Rotates the aircraft's yaw.
uint8 DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEROTATEYAW = 1
# Keeps the aircraft stop flying or start flying.
uint8 DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEFLYINGCONTROL = 2
# Unknown
uint8 DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEUNKNOWN = 255

uint8 actuator_index # The index of actuator. It is valid when the diagnostics is related
# to camera or gimbal and the connected product has multiple gimbals and cameras.
uint16 d_j_i_waypoint_v_2_action_actuator_aircraft_control_operation_type 
WaypointV2AircraftControlActuatorFlying waypoint_v_2_aircraft_control_actuator_flying 
WaypointV2AircraftControlActuatorRotateHeading waypoint_v_2_aircraft_control_actuator_rotate_heading 