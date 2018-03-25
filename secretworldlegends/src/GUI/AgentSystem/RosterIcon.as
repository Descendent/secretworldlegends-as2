import gfx.controls.ListItemRenderer;
import com.GameInterface.AgentSystemAgent;
import com.GameInterface.AgentSystem;
import com.Utils.LDBFormat;
import com.Utils.Colors;
import GUI.AgentSystem.SettingsPanel;
intrinsic class GUI.AgentSystem.RosterIcon extends ListItemRenderer
{
	private var m_Frame : MovieClip;
	private var m_Name : TextField;
	private var m_Level : TextField;
	private var m_Stat1 : MovieClip;
	private var m_Stat2 : MovieClip;
	private var m_Stat3 : MovieClip;
	private var m_TraitCategories : MovieClip;
	private var m_Timer : TextField;
	private var m_Success : MovieClip;
	private var m_Foil : MovieClip;
	private var m_Injured : MovieClip;
	private var m_Away : MovieClip;
	private var data : AgentSystemAgent;
	private var m_PortraitMode : Boolean;
	private var m_TotalTime : Number;
	private var m_TimeInterval : Number;
	private var m_OverrideData : Array;
	private var m_PortraitLoader : MovieClipLoader;
	private var m_PortraitLoading : Boolean;
	private var m_PortraitPath : String;
	private var m_PortraitClip : MovieClip;

	private function RosterIcon();

	public function setData(data:AgentSystemAgent) : Void;

	public function SetSuccessChance(chance:Number);

	public function SetPortraitMode(portraitMode:Boolean);

	private function ClearStates();

	private function UpdateStats();

	private function UpdateVisuals();

	private function UpdatePortraitVisibility();

	private function HighlightTraits();

	private function SlotAgentStatusUpdated(agentData:AgentSystemAgent);

	private function SlotMissionCompleted(missionId:Number);

	private function SlotActiveMissionsUpdated();

	private function LoadPortrait();

	private function onLoadInit(target:MovieClip);

	private function onLoadComplete();

	private function UpdateTimer();

	private function ClearTimer();

	private function ClearTimeInterval();

	private function CalculateTimeString(totalSeconds) : String;

	private function onUnload() : Void;

}