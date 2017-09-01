import com.Utils.LDBFormat;
import com.Utils.Signal;
import gfx.controls.Button;
import gfx.core.UIComponent;
import mx.transitions.easing.*;
intrinsic class GUI.LoginCharacterSelection.LoginDialog extends UIComponent
{
	public var SignalCancelLogin : Signal;
	private var m_Button : Button;
	private var m_TimeoutBar : MovieClip;
	private var m_Text : TextField;
	private var m_IsConfigured : Boolean;
	private var m_TimerRunning : Boolean;
	private var m_SidePadding : Number;
	private var m_DelayTimestamp : Number;
	private var m_TimeoutTimestamp : Number;
	private var m_TimeoutSeconds : Number;
	private var m_CurrentFrame : Number;
	private var m_CurrentText : String;
	private var m_CurrentButtonLabel : String;

	public function LoginDialog();

	private function configUI() : Void;

	private function SlotCancel();

	public function SetText(text:String) : Void;

	public function SetButtonText(text:String) : Void;

	public function SetTimeout(timeoutSeconds:Number, delaySeconds:Number) : Void;

	public function StopTimer() : Void;

	private function Layout() : Void;

	private function onEnterFrame() : Void;

}