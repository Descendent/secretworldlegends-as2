import flash.external.ExternalInterface;
import com.Utils.Signal;
intrinsic class com.GameInterface.Team
{
	static private var m_ClassName : String;
	static public var SignalNewTeamLeader : Signal;
	static public var SignalTeamInvite : Signal;
	static public var SignalTeamInviteTimedOut : Signal;

}