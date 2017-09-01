import com.Utils.Colors;
import com.Utils.LDBFormat;
intrinsic class GUI.Mission.MissionUtils
{
	public function MissionUtils();

	static public function MissionTypeToString(p_missiontype:Number) : String;

	static public function GetMissionDifficultyText(missionLevel:Number, playerLevel:Number, format:Object) : String;

	static public function GetMissionSlotTypeName(missionType:Number) : String;

	static public function GetMissionSlotTypeColor(missionType:Number) : String;

}