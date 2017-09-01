import com.Utils.Signal;
intrinsic class com.GameInterface.GroupFinder
{
	static public var m_DungeonPlayfields : Array;
	static public var m_AdventurePlayfields : Array;
	static public var m_ScenarioPlayfields : Array;
	static public var m_RaidPlayfields : Array;
	static public var SignalClientJoinedGroupFinder : Signal;
	static public var SignalClientLeftGroupFinder : Signal;
	static public var SignalClientStartedGroupFinderActivity : Signal;
	static public var SignalGroupFinderMemberReady : Signal;
	static public var SignalGroupFinderReadyFailed : Signal;

	static public function SignUp(activitiesArray:Array, skipQueue:Boolean) : Void;

	static public function SendRoles(rolesArray:Array) : Void;

	static public function SendReady(ready:Boolean, isTimeout:Boolean) : Void;

	static public function ClearSignUp() : Void;

	static public function IsClientSignedUp() : Boolean;

	static public function GetQueuesSignedUp() : Array;

	static public function GetRolesSignedUp() : Array;

	static public function CheckQueueRequirements(queueId:Number, privateTeam:Boolean) : String;

	static public function IsClientActive() : Boolean;

	static public function GetActiveQueue() : Number;

	static public function GetActiveRole() : Number;

}