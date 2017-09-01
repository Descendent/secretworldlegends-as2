import com.GameInterface.DistributedValue;
import com.GameInterface.Game.Character;
import com.GameInterface.Game.CharacterBase;
import com.GameInterface.Game.GroupElement;
import com.GameInterface.Game.Team;
import com.GameInterface.Game.Raid;
import com.Utils.ID32;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import GUI.Team.RaidClip;
import GUI.Team.TeamMember;
import flash.geom.Point;
import mx.transitions.easing.*;
import mx.utils.Delegate;
import GUI.Team.GroupMenu;
intrinsic class GUI.Team.TeamClip extends MovieClip
{
	public var SignalSizeChanged : Signal;
	public var SignalDefensiveTargetLocked : Signal;
	public var SignalDefensiveTargetDocked : Signal;
	public var SignalTeamWindowLocked : Signal;
	public var SignalTeamMoved : Signal;
	public var SignalFocusTargetSet : Signal;
	public var SignalTargetRollOut : Signal;
	public var SignalMemberRollOver : Signal;
	private var m_Content : MovieClip;
	private var m_Team : Team;
	private var m_Raid : Raid;
	private var m_IsRaidGroup : Boolean;
	private var m_MaxTeamMembers : Object;
	private var m_IsTeamVisible : Boolean;
	private var m_TeamMemberState : Number;
	private var m_TeamWidth : Number;
	private var m_ShowGroupNames : Boolean;
	private var m_ShowHPNumbers : Boolean;
	private var m_MenuButton : MovieClip;
	private var m_GroupMenu : GroupMenu;
	private var m_IsMenuOpen : Boolean;
	private var m_IsLocked : Boolean;
	private var m_IsDefensiveLocked : Boolean;
	private var m_IsDefensiveDocked : Boolean;
	private var m_IsMinimized : Boolean;
	private var m_ShowTeamMemberHealthBar : Boolean;
	private var m_TeamMembers : Array;
	private var m_ClientCharacter : Character;
	private var m_BackgroundPos : Point;
	private var m_BackgroundSize : Point;
	private var m_ShowTeamBuffMonitor : DistributedValue;
	private var m_ShowTeamDebuffsMonitor : DistributedValue;
	private var m_ShowBuffsOnTeam : DistributedValue;

	public function TeamClip();

	public function InitializeTeam() : Void;

	public function AddTeamMember(index:Number, charID:ID32) : Void;

	public function Remove() : Void;

	public function RemoveTeamMember(index:Number) : Void;

	public function RemoveTeamMemberRecursively(index:Number) : Void;

	public function SetFocusTarget(targetID:ID32) : Void;

	public function SlotTeamMoved() : Void;

	public function SlotFocusTargetSet(targetID:ID32) : Void;

	public function SlotTargetRollOut() : Void;

	public function SlotMemberRollOver(memberID:ID32) : Void;

	public function Layout() : Void;

	private function SlotCharacterJoined(charID:ID32) : Void;

	private function SlotCharacterLeft(charID:ID32) : Void;

	private function SlotTeamLeaderChanged(charID:ID32) : Void;

	public function SlotClientCharacterAlive() : Void;

	public function SlotDefensiveTargetChanged(targetID:ID32) : Void;

	private function SlotShowTeamBuffChanged() : Void;

	private function SlotShowTeamDebuffChanged() : Void;

	public function SlotShowBuffsOnTeamChanged() : Void;

	public function ToggleIsMinimized() : Void;

	public function SetIsMinimized(mini:Boolean, snap:Boolean) : Void;

	public function GetIsMinimized() : Boolean;

	public function GetCharacterIndex(charID:ID32) : Number;

	public function SetIsInRaid(isInRaid:Boolean) : Void;

	public function SetTeam(team:Team) : Void;

	public function SetRaid(raid:Raid) : Void;

	private function SlotMasterLooterChanged() : Void;

	public function GetTeamID() : ID32;

	public function GetWidth() : Number;

	public function GetTeamName() : String;

	public function SetTeamVisibility(visible:Boolean) : Void;

	public function GetTeamVisibility() : Boolean;

	public function SetMemberState(memberState:Number) : Void;

	public function SetShowGroupNames(showGroupNames:Boolean) : Void;

	public function SetShowHealthBar(showHealthBar:Boolean) : Void;

	public function SetShowHPNumbers(showHPNumbers:Boolean) : Void;

	public function SetIsDefensiveLocked(lock:Boolean) : Void;

	public function SetIsDefensiveDocked(dock:Boolean) : Void;

	public function SetIsLocked(lock:Boolean) : Void;

	private function ToggleGroupMenu() : Void;

	public function GroupMenuClosed() : Void;

	public function MissedButton() : Boolean;

	public function LockGroupWindow(lock:Boolean);

	public function LockDefensiveWindow(lock:Boolean);

	public function DockDefensiveWindow(dock:Boolean);

	public function HideGroupWindow(doHide:Boolean);

}