import com.Components.WindowComponentContent;
import com.Utils.LDBFormat;
import com.Utils.Text;
import com.Utils.ID32;
import com.Utils.Archive;
import mx.utils.Delegate;
import gfx.controls.Button;
import com.GameInterface.Inventory;
import com.GameInterface.AgentSystem;
import com.GameInterface.AgentSystemAgent;
import com.GameInterface.AgentSystemMission;
import com.GameInterface.DistributedValue;
import com.GameInterface.Tooltip.*;
import com.GameInterface.Game.Character;
import GUI.AgentSystem.Roster;
import GUI.AgentSystem.CurrentMissionList;
import GUI.AgentSystem.MissionDetail;
import GUI.AgentSystem.AgentInfo;
import GUI.AgentSystem.InventoryPanel;
intrinsic class GUI.AgentSystem.AgentSystemContent extends WindowComponentContent
{
	private var m_Roster : Roster;
	private var m_MissionList : CurrentMissionList;
	private var m_Intel : TextField;
	private var m_Supplies : TextField;
	private var m_Assets : TextField;
	private var m_AbilitiesHeader : TextField;
	private var m_InventoryHeader : TextField;
	private var m_RosterFooter : TextField;
	private var m_InventoryPanel : InventoryPanel;
	private var m_HelpButton : Button;
	private var m_HelpPanel : MovieClip;
	private var m_AgentInfoSheet : MovieClip;
	private var m_AvailableMissionList : MovieClip;
	private var m_MissionDetail : MovieClip;
	private var m_MissionReward : MovieClip;
	private var m_Character : Character;

	public function AgentSystemContent();

	private function configUI();

	private function SetLabels();

	private function ShowHelp();

	private function HideHelp();

	private function SlotAgentSelected(agentData:AgentSystemAgent);

	private function SlotAssignAgent(agent:AgentSystemAgent);

	private function SlotCloseInfoSheet();

	private function SlotEmptyMissionSelected();

	private function SlotCloseAvailableMissions();

	private function UpdateCurrentMissionVisibility();

	private function SlotMissionSelected(missionData:AgentSystemMission);

	private function SlotStartMission(missionId:Number, agentId:Number);

	private function SlotCloseMissionReward();

	private function SlotCloseMissionDetail();

	private function OnModuleActivated(config:Archive) : Void;

	private function InitializeCurrentMissions();

	private function OnModuleDeactivated(config:Archive) : Archive;

	private function SlotTokenAmountChanged(tokenId:Number, newAmount:Number, oldAmount:Number);

	private function SlotReceiveItem(srcInventory:ID32, srcSlot:Number);

	private function SlotInventoryItemRightClicked(srcInventory:ID32, srcSlot:Number);

}