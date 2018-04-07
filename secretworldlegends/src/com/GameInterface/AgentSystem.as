import com.GameInterface.AgentSystemAgent;
import com.GameInterface.AgentSystemMission;
import com.GameInterface.InventoryItem;
import com.GameInterface.Inventory;
import com.Utils.Signal;
import com.Utils.ID32;
intrinsic class com.GameInterface.AgentSystem
{
	static public var SignalPassiveChanged : Signal;
	static public var SignalActiveMissionsUpdated : Signal;
	static public var SignalMissionCompleted : Signal;
	static public var SignalAvailableMissionsUpdated : Signal;
	static public var SignalAgentStatusUpdated : Signal;

	static public function GetAgents() : Array;

	static public function GetAgentById(agentId:Number) : AgentSystemAgent;

	static public function GetAgentsBySuccessChance(missionId:Number) : Array;

	static public function GetSuccessChanceForAgent(agentId:Number, missionId:Number) : Number;

	static public function GetActiveMissions() : Array;

	static public function GetMissionsByStarRating(starRating:Number) : Array;

	static public function HasAgent(agentId:Number);

	static public function RecoverAgent(agentId:Number);

	static public function EquipPassive(passiveId:Number, slotId:Number);

	static public function UnequipPassive(slotId:Number);

	static public function GetPassiveInSlot(slotId:Number) : Number;

	static public function GetAgentForPassiveSlot(slotId:Number) : AgentSystemAgent;

	static public function GetTraitName(id:Number) : String;

	static public function GetTraitCategoryName(id:Number) : String;

	static public function GetArchetypeName(id:Number) : String;

	static public function StartMission(missionId:Number, agentId:Number);

	static public function IsMissionActive(missionId:Number) : Boolean;

	static public function IsMissionComplete(missionId:Number) : Boolean;

	static public function GetAgentOnMission(missionId:Number) : AgentSystemAgent;

	static public function IsAgentOnMission(agentId:Number) : Boolean;

	static public function IsAgentFatigued(agentId:Number) : Boolean;

	static public function GetAgentRecoverTime(agentId:Number) : Number;

	static public function GetAgentRecoveryCost(agentId:Number) : Number;

	static public function GetMissionCompletionCost(missionId:Number) : Number;

	static public function ExpediteMission(missionId:Number) : Number;

	static public function ConfirmAgentUnlock(agentId:Number, shiny:Boolean);

	static public function GetMissionRefreshTime(missionId:Number) : Number;

	static public function GetMissionCompleteTime(missionId:Number) : Number;

	static public function AcceptMissionReward(missionId:Number);

	static public function GetMissionReport(missionId:Number);

	static public function EquipItemOnAgent(srcInventory:ID32, srcSlot:Number, agentId:Number) : Boolean;

	static public function UnequipItemOnAgent(agentId:Number, dstInventory:ID32, dstSlot:Number) : Boolean;

	static public function GetItemOnAgent(agentId:Number) : InventoryItem;

	static public function GetAgentOverride(agentId:Number) : Array;

	static public function GetMissionOverride(missionId:Number, agentId:Number) : AgentSystemMission;

	static public function GetAgentXPForLevel(level:Number) : Number;

}