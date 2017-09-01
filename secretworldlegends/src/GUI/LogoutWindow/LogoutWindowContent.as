import com.Components.WindowComponentContent;
import com.GameInterface.ProjectUtils;
import com.Utils.LDBFormat;
import gfx.controls.Button;
intrinsic class GUI.LogoutWindow.LogoutWindowContent extends WindowComponentContent
{
	private var m_NumSeconds : Number;
	private var m_EndTimestamp : Number;
	private var m_CurrentTimestamp : Number;
	private var m_CurrentFrame : Number;
	private var m_SecondsTextField : TextField;
	private var m_AnimationBar : MovieClip;
	private var m_ExitButton : Button;
	private var m_CancelButton : Button;

	public function LogoutWindowContent();

	private function configUI() : Void;

	public function onEnterFrame() : Void;

	private function SlotCancel() : Void;

	private function SlotExit() : Void;

	private function UpdateCountdown() : Void;

}