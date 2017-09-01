import com.GameInterface.Friends;
import com.Utils.LDBFormat;
import gfx.controls.Button;
import gfx.controls.TextArea;
import mx.utils.Delegate;
intrinsic class GUI.Friends.Views.MessageWindow extends MovieClip
{
	static public var RESPONSE_OK : String;
	static public var RESPONSE_CANCEL : String;
	static private var MESSAGE_TO : String;
	static private var SEND : String;
	static private var CANCEL : String;
	private var m_Recipient : String;
	private var m_Title : TextField;
	private var m_InputText : TextArea;
	private var m_OKButton : Button;
	private var m_CancelButton : Button;

	public function MessageWindow();

	private function onLoad() : Void;

	public function ShowMessageWindow(recipient:String) : Void;

	public function HideMessageWindow() : Void;

	private function ResponseButtonEventHandler(event:Object) : Void;

	private function TextChangeEventHandler();

}