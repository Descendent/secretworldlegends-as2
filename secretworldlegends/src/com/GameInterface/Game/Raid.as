import com.Utils.Signal;
import com.Utils.ID32;
intrinsic class com.GameInterface.Game.Raid
{
	public var SignalRaidDisbanded : Signal;
	public var SignalRaidGroupAdded : Signal;
	public var SignalRaidGroupRemoved : Signal;
	public var SignalNewRaidLeader : Signal;
	public var SignalMasterLooterChanged : Signal;
	public var m_Teams : Object;
	public var m_RaidId : ID32;

	public function IsRaidMember(id:ID32) : Boolean;

	public function IsRaidLeader(id:ID32) : Boolean;

	public function GetRaidLeader() : ID32;

	public function IsRaidLeaderTeam(id:ID32) : Boolean;

}