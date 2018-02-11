/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3743864D
/// @DnDArgument : "var" "hasBlueKey"
/// @DnDArgument : "value" "1"
if(hasBlueKey == 1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 206977A8
	/// @DnDApplyTo : other
	/// @DnDParent : 3743864D
	with(other) instance_destroy();
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 70102EFD
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_BlueDoor"
/// @DnDSaveInfo : "object" "02bb9784-71c1-4125-893c-c3eef7518a53"
var l70102EFD_0 = instance_place(x + 0, y + 0, obj_BlueDoor);
if ((l70102EFD_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0978C097
	/// @DnDParent : 70102EFD
	/// @DnDArgument : "type" "1"
	hspeed = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2D0288F2
	/// @DnDParent : 70102EFD
	/// @DnDArgument : "type" "2"
	vspeed = 0;
}