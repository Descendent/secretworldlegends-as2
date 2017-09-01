import com.Components.WindowComponentContent;
import com.GameInterface.GroupFinder;
import com.Utils.LDBFormat;
import mx.utils.Delegate;
import gfx.controls.Button;
intrinsic class GUI.GroupFinder.GroupFinderReadyPromptContent extends WindowComponentContent
{
	private var m_AcceptButton : Button;
	private var m_CancelButton : Button;
	private var m_DPSIcon : MovieClip;
	private var m_TankIcon : MovieClip;
	private var m_HealIcon : MovieClip;
	private var m_NoRoleIcon : MovieClip;
	private var m_MainText : TextField;
	private var m_TimerText : TextField;
	private var m_RoleLabel : TextField;
	private var m_QueueLabel : TextField;
	private var m_ReadyText : TextField;
	private var m_TimerInterval : Number;
	private var m_SecondsRemaining : Number;
	private var m_HasAnswered : Boolean;
	static private var TIMER_TEXT : String;
	static private var TIMEOUT : Number;

	public function GroupFinderReadyPromptContent();

	private function configUI() : Void;

	private function SetLabels() : Void;

	private function SetInfo() : Void;

	private function UpdateTimer() : Void;

	private function secondsToTimeString(seconds:Number) : String;

	private function UpdateReadyCount(readyCount:Number, totalCount:Number);

	private function AcceptClickHandler() : Void;

	private function CancelClickHandler() : Void;

	private function Close() : Void;

}