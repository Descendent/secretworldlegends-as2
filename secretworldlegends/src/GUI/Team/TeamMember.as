import com.Components.Buffs;
import com.Components.NameBox;
import com.Components.StatBar;
import com.GameInterface.Game.CharacterBase;
import com.GameInterface.Game.Character;
import com.GameInterface.Game.Dynel;
import com.GameInterface.Game.GroupElement;
import com.GameInterface.Game.TargetingInterface;
import com.GameInterface.Game.TeamInterface;
import com.GameInterface.ProjectUtils;
import com.GameInterface.NeedGreed;
import com.GameInterface.DistributedValue;
import com.GameInterface.Tooltip.TooltipUtils;
import com.GameInterface.Tooltip.TooltipInterface;
import com.Utils.ID32;
import com.Utils.Signal;
import com.Utils.LDBFormat;
import flash.geom.Point;
import mx.utils.Delegate;
import GUI.Team.DefensiveMenu;
intrinsic class GUI.Team.TeamMember extends MovieClip
{
	static public var STATE_SMALL : Number;
	static public var STATE_MEDIUM : Number;
	static public var STATE_LARGE : Number;
	static public var MEMBER_COLOR : Number;
	static public var STANDARD_COLOR : Number;
	static public var MEMBER_UNTARGET_ALPHA : Number;
	static public var STANDARD_UNTARGET_ALPHA : Number;
	public var ROLE_NONE : Number;
	public var ROLE_TANK : Number;
	public var ROLE_HEALER : Number;
	public var ROLE_DPS : Number;
	public var ROLE_SUPPORT : Number;
	public var DEATH_BUFF : Number;
	static private var LARGE_SIZE : Number;
	static private var MEDIUM_SIZE : Number;
	static private var SMALL_SIZE : Number;
	public var SignalSizeChanged : Signal;
	public var SignalFocusTargetSet : Signal;
	public var SignalTargetRollOut : Signal;
	public var SignalMemberRollOver : Signal;
	public var SignalDefensiveTargetLocked : Signal;
	public var SignalDefensiveTargetMoved : Signal;
	public var SignalTeamMoved : Signal;
	private var m_TeamMemberWidth : Number;
	private var m_Background : MovieClip;
	private var m_InvisibleButton : MovieClip;
	private var m_MenuButton : MovieClip;
	private var m_SelectedForMoveBackground : MovieClip;
	private var m_Name : MovieClip;
	private var m_HealthBar : MovieClip;
	private var m_Buffs : MovieClip;
	private var m_RoleIcon : MovieClip;
	private var m_LeaderIcon : MovieClip;
	private var m_RaidLeaderIcon : MovieClip;
	private var m_MasterLooterIcon : MovieClip;
	private var m_DeathOverlay : MovieClip;
	private var m_FocusIcon : MovieClip;
	private var m_HasBuffs : Boolean;
	private var m_PaddingSmall : Number;
	private var m_LastReportedSize : Point;
	private var m_TeamRoleIconPos : Point;
	private var m_TeamRoleIconScale : Number;
	private var m_GroupElement : GroupElement;
	private var m_Character : Character;
	private var m_Interval : Number;
	private var m_IsLastMember : Boolean;
	private var m_BackgroundVisible : Boolean;
	private var m_IsTarget : Boolean;
	private var m_IsInRaid : Boolean;
	private var m_IsTeamLeader : Boolean;
	private var m_IsRaidLeader : Boolean;
	private var m_IsLocked : Boolean;
	private var m_IsMember : Boolean;
	private var m_IsDefensiveTarget : Boolean;
	private var m_ShowHealthBar : Boolean;
	private var m_ShowHPNumbers : Boolean;
	private var m_LayoutState : Number;
	private var m_TeamMemberRole : Number;
	private var m_IsMenuOpen : Boolean;
	private var m_DefensiveMenu : DefensiveMenu;
	private var m_ShowBuffsOnTeam : DistributedValue;
	private var m_ShowBuffsOnDefensiveTarget : DistributedValue;
	private var m_MouseOverTargeting : DistributedValue;

	public function TeamMember();

	private function SlotLootModeChanged(groupLootMode:Number) : Void;

	public function AddHealthBar(x:Number, y:Number) : Void;

	public function AddBuffs(x:Number, y:Number, scale:Number) : Void;

	public function RemoveBuffs() : Void;

	private function SlotBuffSizeChanged() : Void;

	private function SlotMarkForTeamMove(id:ID32) : Void;

	private function SlotUnmarkForTeamMove(id:ID32) : Void;

	private function AddTeamLeaderIcon() : Void;

	private function AddMasterLooterIcon() : Void;

	private function AddTeamMemberRoleIcon() : Boolean;

	private function UpdateDeathDisplay() : Void;

	private function ToggleBackgroundVisibility() : Void;

	public function Layout() : Void;

	public function UpdateFocusTarget(targetID:ID32) : Void;

	public function OnRollOver() : Void;

	public function OnRollOut() : Void;

	public function onMouseRelease(buttonIdx:Number) : Void;

	private function SlotCharacterEntered() : Void;

	private function SlotMemberStatusUpdated(member:Boolean) : Void;

	private function UpdateMembershipStatus() : Void;

	private function SlotBuffAdded(buffId:Number) : Void;

	private function SlotBuffRemoved(buffId:Number) : Void;

	private function UpdateRoleBuff() : Void;

	public function IsTarget() : Boolean;

	public function SetIsTarget(isTarget:Boolean) : Void;

	public function SetIsDefensiveTarget(isTarget:Boolean) : Void;

	private function SetTargetBackground() : Void;

	public function SetPos(pos:Number, maxPos:Number) : Void;

	private function SetDefensiveTargetBackground() : Void;

	private function SlotMousePress(buttonIndex:Number) : Void;

	private function SlotMouseRelease() : Void;

	public function SetLayoutState(state:Number) : Void;

	public function SetGroupElement(groupElement:GroupElement) : Void;

	public function DisconnectSignals() : Void;

	public function ShowTeamMenuButton(showButton:Boolean) : Void;

	public function SetIsInRaid(val:Boolean) : Void;

	public function SetTeamLeader(value:Boolean) : Void;

	public function SetRaidLeader(value:Boolean) : Void;

	public function GetIsTeamLeader() : Boolean;

	public function GetIsRaidLeader() : Boolean;

	public function GetWidth() : Number;

	public function SetCharacter(character:Character, forceLayout:Boolean) : Void;

	public function SetShowHealthBar(value:Boolean) : Void;

	public function SetShowHPNumbers(value:Boolean) : Void;

	public function SetIsLocked(lock:Boolean) : Void;

	public function GetID() : ID32;

	private function ToggleGroupMenu() : Void;

	public function DefensiveMenuClosed() : Void;

	public function MissedButton() : Boolean;

	public function LockDefensiveWindow(lock:Boolean);

}