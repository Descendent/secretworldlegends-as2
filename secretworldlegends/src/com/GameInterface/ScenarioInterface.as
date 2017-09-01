import com.Utils.Signal;
intrinsic class com.GameInterface.ScenarioInterface
{
	static public var m_Scenarios : Array;
	static public var m_Results : Array;

	static public function ActivateScenario(loc:Number, objective:Number, time:Number, difficulty:Number) : Void;

	static public function LeaveScenario() : Void;

	static public function CloseSetupInterface() : Void;

	static public function OpenDLCShop(tagId:Number) : Void;

}