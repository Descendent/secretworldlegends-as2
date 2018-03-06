import gfx.core.UIComponent;
import gfx.controls.Button;
import com.Components.ItemSlot;
import com.GameInterface.AgentSystemMission;
import com.GameInterface.AgentSystemAgent;
import com.GameInterface.AgentSystem;
import com.GameInterface.AgentSystemReport;
import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.GameInterface.Game.Character;
import com.Utils.Signal;
import com.Utils.LDBFormat;
import com.Utils.Text;
import GUI.AgentSystem.RosterIcon;
intrinsic class GUI.AgentSystem.MissionReward extends UIComponent
{
	private var m_CloseButton : Button;
	private var m_ConfirmButton : Button;
	private var m_Background : MovieClip;
	private var m_CritBG : MovieClip;
	private var m_ReportHeader : TextField;
	private var m_MissionData : AgentSystemMission;
	private var m_AgentData : AgentSystemAgent;
	private var m_Name : TextField;
	private var m_Text : TextField;
	private var m_ConditionalText : TextField;
	private var m_AgentName : TextField;
	private var m_Agent : RosterIcon;
	private var m_RewardsHeader : TextField;
	private var m_BonusRewardsHeader : TextField;
	private var m_Intel : TextField;
	private var m_Supplies : TextField;
	private var m_Assets : TextField;
	private var m_Progress : MovieClip;
	private var m_XP : TextField;
	private var m_MissionComplete : MovieClip;
	private var m_CritAnim : MovieClip;
	private var m_SuccessAnim : MovieClip;
	private var m_LevelAnim : MovieClip;
	static private var SUCCESS_COMPLETE : Number;
	static private var SUCCESS_SUCCESS : Number;
	static private var SUCCESS_CRIT : Number;
	public var SignalClose : Signal;

	public function MissionReward();

	private function configUI();

	public function SetData(missionData:AgentSystemMission);

	public function AssignAgent(agent:AgentSystemAgent);

	public function FillReport();

	private function Confirm();

	private function CloseButton();

	private function CloseInfo();

	private function RemoveFocus();

}