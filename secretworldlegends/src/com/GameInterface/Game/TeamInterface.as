import com.Utils.ID32;
import com.Utils.Signal;
import com.GameInterface.Game.Team;
import com.GameInterface.Game.Raid;
intrinsic class com.GameInterface.Game.TeamInterface
{
	static public var SignalTeamInvite : Signal;
	static public var SignalPromptJoinRequest : Object;
	static public var SignalTeamInviteTimedOut : Signal;
	static public var SignalRaidInvite : Signal;
	static public var SignalRaidInviteTimedOut : Signal;
	static public var SignalClientJoinedTeam : Signal;
	static public var SignalClientLeftTeam : Signal;
	static public var SignalClientJoinedRaid : Signal;
	static public var SignalClientLeftRaid : Signal;
	static public var SignalMarkForTeamMove : Signal;
	static public var SignalUnmarkForTeamMove : Signal;
	static public var SignalShowVoteKickReasonPrompt : Signal;

	static public function RequestTeamInformation() : Void;

	static public function GetClientTeamInfo() : Team;

	static public function GetClientRaidInfo() : Raid;

	static public function IsInTeam(id:ID32) : Boolean;

	static public function IsInRaid(id:ID32) : Boolean;

	static public function CanSummonHere() : Boolean;

	static public function InviteToTeam(id:ID32);

	static public function PromoteToLeader(id:ID32);

	static public function KickFromTeam(id:ID32);

	static public function CanVoteKickFromTeam(id:ID32) : Boolean;

	static public function StartVoteKick(id:ID32, reason:String);

	static public function ToggleLootOptions();

	static public function CanLeaveTeam() : Boolean;

	static public function LeaveTeam();

	static public function CanStartVoteRetreat() : Boolean;

	static public function StartVoteRetreat();

	static public function AcceptTeamInvite(id:ID32);

	static public function SendJoinRequest(id:ID32);

	static public function DeclineTeamInvite(id:ID32);

	static public function AcceptRaidInvite(id:ID32);

	static public function DeclineRaidInvite(id:ID32);

	static public function CreateRaid();

	static public function LeaveRaid();

	static public function InviteToRaid(id:ID32);

	static public function CanRaidMoveSelf(id:ID32);

	static public function MarkForTeamMove(id:ID32);

	static public function GetCharacterMarkedForTeamMove() : ID32;

	static public function CancelTeamMove();

	static public function TeamSwap(charId1:ID32, charId2:ID32);

	static public function TeamMove(charId:ID32, teamId:ID32);

	static public function KickFromRaid(id:ID32);

	static public function SummonRequest(id:ID32);

	static public function SendTeamSwapRequest(id:ID32);

	static public function IsClientTeamLeader();

	static public function IsTeamLeader(id:ID32);

	static public function IsClientRaidLeader();

	static public function IsInClientTeam(id:ID32);

	static public function IsInClientRaid(id:ID32);

	static public function GetClientRaidID() : ID32;

	static public function GetClientTeamID() : ID32;

	static public function GetTeamIDFromRaid(charID:ID32) : ID32;

}