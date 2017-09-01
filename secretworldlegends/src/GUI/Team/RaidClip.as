import com.GameInterface.DistributedValue;
import com.GameInterface.Game.Team;
import com.GameInterface.Game.Raid;
import com.Utils.LDBFormat;
import com.Utils.ID32;
import com.Utils.Signal;
import flash.geom.Point;
import flash.geom.Rectangle;
import GUI.Team.TeamMember;
import GUI.Team.TeamMenu;
import mx.data.to.ValueListIterator;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic class GUI.Team.RaidClip extends MovieClip
{
	static public var MENU_ALIGNMENT_LEFT : Number;
	static public var MENU_ALIGNMENT_RIGHT : Number;
	static public var STATE_NONE : Number;
	static public var STATE_DRAGGING : Number;
	static public var STATE_RESIZING : Number;
	static public var SIZE_AUTO : Number;
	static public var SIZE_SMALL : Number;
	static public var SIZE_MEDIUM : Number;
	static public var SIZE_LARGE : Number;
	static private var COLLAPSED_PADDING : Number;
	public var SignalSizeChanged : Signal;
	public var SignalFocusTargetSet : Signal;
	public var SignalTargetRollOut : Signal;
	public var SignalMemberRollOver : Signal;
	private var m_Content : MovieClip;
	private var m_MenuButton : MovieClip;
	private var m_CollapsedBackground : MovieClip;
	private var m_CollapsedInvisibleButton : MovieClip;
	private var m_SidePadding : Number;
	private var m_TeamPadding : Number;
	private var m_MenuAlignment : Number;
	private var m_RaidLabel : TextField;
	private var m_Raid : Raid;
	private var m_Teams : Array;
	private var m_TeamClips : Array;
	private var m_NumColumns : Number;
	private var m_DesiredColumns : Number;
	private var m_MovementState : Number;
	private var m_MemberSizeState : Number;
	private var m_TeamMenu : TeamMenu;
	private var m_ShowingBackground : Boolean;
	private var m_ResizeOffsetPoint : Point;
	private var m_IsMenuOpen : Boolean;
	private var m_WindowSize : Number;
	private var m_WindowFrameLocked : Boolean;
	private var m_ShowWindow : Boolean;
	private var m_ShowWindowFrame : Boolean;
	private var m_ShowGroupNames : Boolean;
	private var m_ShowHPNumbers : Boolean;
	private var m_ShowHealthBar : Boolean;
	private var m_ShowNametagIcons : Boolean;
	private var m_IsGroupDetached : Boolean;

	public function RaidClip();

	public function SetRaid(raid:Raid) : Void;

	public function GetRaid(raid:Raid) : Raid;

	public function AddTeam(team:Team, forceLayout:Boolean) : Void;

	public function MissedButton() : Boolean;

	private function ToggleRaidMenu() : Void;

	public function RaidMenuRemoved() : Void;

	public function GetBiggestTeam() : Point;

	public function Remove() : Void;

	public function GetVisibleTeamCount() : Number;

	public function Layout(sendSignal:Boolean) : Void;

	private function TeamClipSizeChanged() : Void;

	public function SlotDefensiveTargetChanged(targetID:ID32) : Void;

	public function SetFocusTarget(targetID:ID32) : Void;

	private function SlotFocusTargetSet(targetID:ID32) : Void;

	private function SlotTargetRollOut() : Void;

	private function SlotMemberRollOver(memberID:ID32) : Void;

	private function SlotRaidDisbanded() : Void;

	private function SlotRaidGroupAdded(teamID:ID32) : Void;

	private function SlotRaidGroupRemoved(teamID:ID32) : Void;

	private function SlotNewRaidLeader(teamID:ID32) : Void;

	private function SlotMousePress(buttonIdx:Number) : Void;

	private function SlotStartResizing(buttonIdx:Number) : Void;

	private function SlotMouseRelease() : Void;

	public function onMouseMove() : Void;

	private function StartResizing() : Void;

	private function StopResizing() : Void;

	private function UpdateResizing() : Void;

	private function ForceResize() : Void;

	public function DrawBackground() : Void;

	private function DrawMenu(alignment:Number) : Void;

	public function SetGroupVisibility(index:Number, value:Boolean, forceUpdate:Boolean) : Void;

	private function UpdateWindowSize(size:Number) : Void;

	public function GetTeamClips() : Array;

	public function SetShowWindow(show:Boolean) : Void;

	public function GetShowWindow() : Boolean;

	public function SetWindowFrameLocked(value:Boolean, forceUpdate:Boolean) : Void;

	public function GetWindowFrameLocked() : Boolean;

	public function SetShowWindowFrame(value:Boolean, forceUpdate:Boolean) : Void;

	public function GetShowWindowFrame() : Boolean;

	public function SetShowGroupNames(value:Boolean) : Void;

	public function GetShowGroupNames() : Boolean;

	public function SetWindowSize(value:Number) : Void;

	public function GetWindowSize() : Number;

	public function SetMenuAlignment(value:Number) : Void;

	public function GetMenuAlignment() : Number;

	public function SetNumberOfColumns(value:Number) : Void;

	public function GetNumberOfColumns() : Number;

	public function SetShowHPNumbers(value:Boolean, forceUpdate:Boolean) : Void;

	public function GetShowHPNumbers() : Boolean;

	public function SetShowHealthBar(value:Boolean, forceUpdate:Boolean) : Void;

	public function GetShowHealthBar() : Boolean;

	public function SetShowNametagIcons(value:Boolean) : Void;

	public function GetShowNametagIcons() : Boolean;

	public function SetIsGroupDetached(value:Boolean) : Void;

	public function GetIsGroupDetached() : Boolean;

}