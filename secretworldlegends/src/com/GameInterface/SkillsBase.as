import com.Utils.Signal;
intrinsic class com.GameInterface.SkillsBase
{
	static public var SignalSkillUpdated : Signal;
	static public var SignalUpdateAllSkills : Signal;

	static public function GetSkill(skill:Number, weapon:Number) : String;

	static public function UpdateAllSkills() : Void;

}