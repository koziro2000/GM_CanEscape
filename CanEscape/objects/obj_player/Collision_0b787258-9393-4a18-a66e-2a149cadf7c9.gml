/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3743864D
/// @DnDArgument : "var" "hasBlueKey"
if(hasBlueKey == 0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 211DA766
	/// @DnDParent : 3743864D
	/// @DnDArgument : "x" "0"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += 0;
	y += 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 515318FE
/// @DnDArgument : "var" "hasBlueKey"
/// @DnDArgument : "value" "1"
if(hasBlueKey == 1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 206977A8
	/// @DnDApplyTo : other
	/// @DnDParent : 515318FE
	with(other) instance_destroy();
}