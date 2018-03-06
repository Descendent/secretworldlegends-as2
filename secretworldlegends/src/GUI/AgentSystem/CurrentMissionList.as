import gfx.core.UIComponent;
import com.Utils.Signal;
import com.Utils.LDBFormat;
import com.GameInterface.AgentSystemMission;
import com.GameInterface.AgentSystem;
import com.GameInterface.LoreBase;
import GUI.AgentSystem.MissionSlot;
intrinsic class GUI.AgentSystem.CurrentMissionList extends UIComponent
{
	private var m_Slot_0 : MissionSlot;
	private var m_Slot_1 : MissionSlot;
	private var m_Slot_2 : MissionSlot;
	private var m_Header : TextField;
	public var SignalMissionSelected : Signal;
	public var SignalEmptyMissionSelected : Signal;
	static public var MAX_MISSIONS : Number;
	static public var UNLOCK_SLOT_2 : Number;

	public function CurrentMissionList();

	private function configUI();

	private function FillMissions();

	private function SlotTagAdded(tagId:Number);

	public function OnMissionSelected(missionData:AgentSystemMission);

	public function OnEmptyMissionSelected();

	private function RemoveFocus();

}