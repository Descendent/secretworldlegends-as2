intrinsic class com.GameInterface.ProjectFeatInterface extends com.GameInterface.FeatInterface
{
	static public function CanRefund() : Boolean;

	static public function GetHighestLearnedSkillLevel(skillEnum:Number) : Number;

	static public function GetSpentSkillPoints() : Number;

	static public function GetSkillRows() : Array;

	static public function GetSkillLevelForRow() : Number;

}