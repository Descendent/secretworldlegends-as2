import gfx.controls.ListItemRenderer;
import com.Utils.Colors;
import com.GameInterface.Utils;
intrinsic class GUI.LockoutTimers.LockoutListItemRenderer extends ListItemRenderer
{
	private var m_TimeText : TextField;
	private var m_Text : TextField;
	private var m_Name : String;
	private var m_Time : Number;
	private var m_TimerID : Number;
	private var m_TimerType : Number;
	private var m_IconName : String;
	private var m_Icon : MovieClip;
	static private var TYPE_BUFF : Object;
	static private var TYPE_MISSION : Object;

	public function LockoutListItemRenderer();

	private function configUI();

	public function setData(data:Object) : Void;

	private function CalculateTimeString(totalSeconds) : String;

	private function OnUpdateTimer();

}