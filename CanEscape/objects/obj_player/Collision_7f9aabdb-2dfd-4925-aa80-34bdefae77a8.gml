/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3743864D
/// @DnDArgument : "var" "hasRedKey"
/// @DnDArgument : "value" "1"
if(hasRedKey == 1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 25CF73D7
	/// @DnDApplyTo : other
	/// @DnDParent : 3743864D
	with(other) instance_destroy();
}