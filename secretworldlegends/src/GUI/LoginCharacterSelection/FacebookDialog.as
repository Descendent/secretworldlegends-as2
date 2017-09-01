import gfx.core.UIComponent;
import gfx.controls.Button;
import com.Utils.LDBFormat;
import com.Utils.Signal;
intrinsic class GUI.LoginCharacterSelection.FacebookDialog extends UIComponent
{
	static private var FACEBOOK_DIALOG_TITLE : String;
	static private var FACEBOOK_DIALOG_MESSAGE : String;
	static private var LOGIN_WITH_FACEBOOK_BUTTON_LABEL : String;
	static private var CANCEL_BUTTON_LABEL : String;
	public var SignalLoginSelected : Signal;
	private var m_TitleTextField : TextField;
	private var m_MessageTextField : TextField;
	private var m_LoginWithFacebookButton : Button;
	private var m_CancelButton : Button;

	public function FacebookDialog();

	private function configUI() : Void;

	private function ClickEventHandler(event:Object) : Void;

}