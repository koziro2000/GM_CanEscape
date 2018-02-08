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