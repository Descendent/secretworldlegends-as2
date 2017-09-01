import gfx.core.UIComponent;
import gfx.controls.Button;
import com.GameInterface.Quests;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import mx.utils.Delegate;
intrinsic class GUI.Mission.MissionRewardButton extends UIComponent
{
	private var m_ReportText : TextField;
	private var m_RewardText : TextField;
	private var m_ReportsIcon : MovieClip;
	private var m_Animation : MovieClip;
	private var m_HitArea : MovieClip;
	static public var SignalReportSent : Signal;
	private var m_AlignRight : Boolean;

	public function MissionRewardButton();

	private function configUI();

	public function SetText();

	private function SendReport(event:Object);

	public function AlignRight(alignRight:Boolean);

	public function SlotSendMissionReportHotkeyPressed(event:Object);

}