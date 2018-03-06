import gfx.core.UIComponent;
import gfx.controls.ButtonBar;
import gfx.controls.Button;
import com.Utils.Signal;
import com.Utils.LDBFormat;
import com.GameInterface.AgentSystemMission;
import com.GameInterface.AgentSystem;
import com.GameInterface.Game.Character;
import com.GameInterface.LoreBase;
import GUI.AgentSystem.MissionSlot;
intrinsic class GUI.AgentSystem.AvailableMissionList extends UIComponent
{
	private var m_CloseButton : Button;
	private var m_ButtonBar : ButtonBar;
	private var m_Slot_0 : MissionSlot;
	private var m_Slot_1 : MissionSlot;
	private var m_Slot_2 : MissionSlot;
	private var m_Slot_3 : MissionSlot;
	private var m_Slot_4 : MissionSlot;
	public var SignalMissionSelected : Signal;
	public var SignalClose : Signal;
	public var m_TabIndex : Number;
	static public var MAX_MISSIONS : Number;
	static public var TUTORIAL_COMPLETE : Number;
	static public var UNLOCK_2_STAR : Number;
	static public var UNLOCK_3_STAR : Number;
	static public var UNLOCK_4_STAR : Number;
	static public var UNLOCK_5_STAR : Number;
	static public var UNLOCK_6_STAR : Number;

	public function AvailableMissionList();

	private function configUI();

	public function FillButtonBar();

	public function TabSelected(event:Object);

	private function FillMissions();

	private function SlotTagAdded(tagId:Number);

	private function SlotAvailableMissionsUpdated(starRating:Number);

	public function OnMissionSelected(missionData:AgentSystemMission);

	private function CloseButton();

	private function Close();

	private function RemoveFocus();

}