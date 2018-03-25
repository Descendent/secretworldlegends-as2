import gfx.core.UIComponent;
import com.Utils.Signal;
import com.Utils.LDBFormat;
import com.Utils.Text;
import com.Utils.Colors;
import mx.utils.Delegate;
import com.Components.ItemSlot;
import com.GameInterface.AgentSystemMission;
import com.GameInterface.AgentSystemAgent;
import com.GameInterface.AgentSystem;
import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.GameInterface.ShopInterface;
import com.GameInterface.Game.Character;
import GUI.AgentSystem.RosterIcon;
intrinsic class GUI.AgentSystem.MissionSlot extends UIComponent
{
	private var m_MissionData : AgentSystemMission;
	private var m_Name : TextField;
	private var m_TimerIcon : MovieClip;
	private var m_Timer : TextField;
	private var m_HitArea : MovieClip;
	private var m_AgentIcon : RosterIcon;
	private var m_BonusView : MovieClip;
	private var m_Currency : MovieClip;
	private var m_MemberBG : MovieClip;
	private var m_LockedBG : MovieClip;
	private var m_ActiveBG : MovieClip;
	private var m_EmptyBG : MovieClip;
	private var m_AvailableBG : MovieClip;
	private var m_CompleteBG : MovieClip;
	private var m_RefreshBG : MovieClip;
	private var m_ExpediteButton : MovieClip;
	private var m_Patron : MovieClip;
	private var m_TotalTime : Number;
	private var m_TimeInterval : Number;
	private var m_Reward : MovieClip;
	private var m_BonusReward : MovieClip;
	public var SignalMissionSelected : Signal;
	public var SignalEmptyMissionSelected : Signal;
	private var m_State : Number;
	private var m_IsMember : Boolean;
	private var m_IsLocked : Boolean;
	private var m_Character : Character;
	private var m_MissionOverride : AgentSystemMission;
	private var m_Initialized : Boolean;
	private var m_AssignedAgentId : Number;
	static public var STATE_EMPTY : Number;
	static public var STATE_AVAILABLE : Number;
	static public var STATE_ACTIVE : Number;
	static public var STATE_COMPLETE : Number;
	static public var STATE_MEMBER : Number;
	static public var STATE_LOCKED : Number;
	static public var STATE_REFRESH : Number;
	static public var COMMON : Number;
	static public var RARE : Number;
	static public var EPIC : Number;

	public function MissionSlot();

	private function configUI();

	private function SetLabels();

	private function UpdateDisplay();

	private function UpdateStats();

	private function UpdateBonusView();

	private function UpdateReward();

	private function ClearRewards();

	public function SetState(missionState:Number);

	public function SetData(missionData:AgentSystemMission);

	public function ClearData();

	public function SetMembersOnly(membersOnly:Boolean);

	private function SlotMemberStatusUpdated(member:Boolean);

	public function SetLocked(locked:Boolean);

	public function SlotMissionCompleted(missionId:Number);

	private function ExpediteMission();

	private function HitAreaReleaseHandler();

	private function RemoveFocus();

	private function UpdateTimer();

	private function ClearTimer();

	private function ClearTimeInterval();

	private function CalculateTimeString(totalSeconds) : String;

	private function onUnload() : Void;

}