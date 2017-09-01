import com.GameInterface.Friends;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import GUI.Friends.FriendsContent;
import GUI.Friends.FriendsViewsContainer;
import gfx.controls.Button;
import gfx.controls.TextInput;
intrinsic class GUI.Friends.Views.PromptWindow extends MovieClip
{
	static public var RESPONSE_OK : String;
	static public var RESPONSE_CANCEL : String;
	static private var PLAYERS_NAME : String;
	static private var NAME : String;
	static private var OK : String;
	static private var CANCEL : String;
	public var SignalPromptResponse : Signal;
	private var m_TargetView : MovieClip;
	private var m_Title : TextField;
	private var m_InputTextLabel : TextField;
	private var m_InputText : TextInput;
	private var m_OKButton : Button;
	private var m_CancelButton : Button;

	public function PromptWindow();

	private function onLoad() : Void;

	private function RemoveFocus() : Void;

	public function ShowPrompt(targetView:MovieClip) : Void;

	public function HidePrompt() : Void;

	private function onKeyUp() : Void;

	private function InputTextChangedEventHandler(event:Object) : Void;

	private function ResponseButtonEventHandler(event:Object) : Void;

}