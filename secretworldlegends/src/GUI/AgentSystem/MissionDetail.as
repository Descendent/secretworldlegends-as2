import gfx.core.UIComponent;
import gfx.controls.Button;
import com.Components.ItemSlot;
import com.GameInterface.AgentSystemMission;
import com.GameInterface.AgentSystemAgent;
import com.GameInterface.AgentSystem;
import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.GameInterface.ShopInterface;
import com.GameInterface.Game.Character;
import com.GameInterface.LoreBase;
import com.Utils.Signal;
import com.Utils.LDBFormat;
import com.Utils.Text;
import com.Utils.Colors;
import GUI.AgentSystem.SettingsPanel;
import GUI.AgentSystem.RosterIcon;
intrinsic class GUI.AgentSystem.MissionDetail extends UIComponent
{
	private var m_CloseButton : Button;
	private var m_DeployButton : Button;
	private var m_ExpediteButton : Button;
	private var m_Progress : MovieClip;
	private var m_CommonBG : MovieClip;
	private var m_RareBG : MovieClip;
	private var m_EpicBG : MovieClip;
	private var m_AgentDetailBlocker : MovieClip;
	private var m_MissionData : AgentSystemMission;
	private var m_AgentData : AgentSystemAgent;
	private var m_Name : TextField;
	private var m_Description : TextField;
	private var m_Duration : TextField;
	private var m_AgentName : TextField;
	private var m_AgentDetails : MovieClip;
	private var m_AgentTraits : MovieClip;
	private var m_EquipmentHeader : TextField;
	private var m_EquipmentBG : MovieClip;
	private var m_Agent : RosterIcon;
	private var m_RequirementsHeader : TextField;
	private var m_Requirements : MovieClip;
	private var m_Stat0 : TextField;
	private var m_Stat1 : TextField;
	private var m_Stat2 : TextField;
	private var m_BonusHeader : TextField;
	private var m_BonusTraits : TextField;
	private var m_Trait0 : MovieClip;
	private var m_Trait1 : MovieClip;
	private var m_Trait2 : MovieClip;
	private var m_RewardsHeader : TextField;
	private var m_Intel : TextField;
	private var m_Supplies : TextField;
	private var m_Assets : TextField;
	private var m_XP : TextField;
	private var m_PrimaryStats : MovieClip;
	private var m_BonusMatchFrame : MovieClip;
	private var m_TotalTime : Number;
	private var m_TimeInterval : Number;
	private var m_Equipment : MovieClip;
	private var m_EquipSlot : ItemSlot;
	private var m_AgentOverride : Array;
	private var m_MissionOverride : AgentSystemMission;
	private var m_SuccessChance : Number;
	public var SignalClose : Signal;
	public var SignalStartMission : Signal;
	static private var COMMON : Number;
	static private var RARE : Number;
	static private var EPIC : Number;
	static private var UNLOCK_SLOT_2 : Number;

	public function MissionDetail();

	private function configUI();

	private function SetLabels();

	public function SetData(missionData:AgentSystemMission);

	private function UpdateEquipment();

	private function InitializeEquipmentSlot();

	private function UpdateRequirements();

	private function UpdateBonusTraits();

	private function UpdateRewards();

	private function UpdateTokenRewards();

	public function AssignAgent(agent:AgentSystemAgent);

	private function UpdateBonusMatch();

	public function UpdateAgentDisplay();

	private function UpdateAgentStats();

	private function UpdateAgentTraits();

	public function UpdateOverrideData();

	public function GetMissionData();

	private function UpdateButtons();

	private function Deploy();

	private function Expedite();

	public function SlotMissionCompleted(missionId:Number);

	private function SlotAvailableMissionsUpdated(starRating:Number);

	public function SlotAgentStatusUpdated(agentData:AgentSystemAgent);

	private function CloseButton();

	private function CloseInfo();

	private function RemoveFocus();

	private function UpdateTimer();

	private function ClearTimer();

	private function ClearTimeInterval();

	private function CalculateTimeString(totalSeconds:Number, calcDiff:Boolean) : String;

	private function onUnload() : Void;

}