import com.Utils.ID32;
import com.Utils.Signal;
import com.GameInterface.Game.GroupElement;
intrinsic class com.GameInterface.Game.Team
{
	public var SignalCharacterJoinedTeam : Signal;
	public var SignalCharacterLeftTeam : Signal;
	public var SignalNewTeamLeader : Signal;
	public var SignalTeamDisband : Signal;
	public var SignalMasterLooterChanged : Signal;
	public var m_TeamMembers : Object;
	public var m_TeamId : ID32;
	public var m_TeamName : String;

	public function IsTeamLeader(id:ID32) : Boolean;

	public function GetTeamMemberID(memberIndex:Number) : ID32;

	public function GetTeamMemberIndex(id:ID32) : Number;

	public function IsTeamMember(id:ID32) : Boolean;

}