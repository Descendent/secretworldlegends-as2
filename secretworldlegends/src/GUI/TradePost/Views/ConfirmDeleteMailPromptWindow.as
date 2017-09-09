import com.Utils.LDBFormat;
import gfx.controls.Button;
import gfx.core.UIComponent;
import com.Utils.Signal;
import mx.utils.Delegate;
intrinsic class GUI.TradePost.Views.ConfirmDeleteMailPromptWindow extends UIComponent
{
	static private var DELETE_MAIL_PROMPT_TITLE : String;
	static private var DELETE_MAIL_PROMPT_MESSAGE : String;
	static private var DELETE_ALL_MAIL_PROMPT_MESSAGE : String;
	static private var DELETE_MAIL_NOATTACHMENTS_PROMPT_MESSAGE : String;
	static private var DELETE_ALL_MAIL_NOATTACHMENTS_PROMPT_MESSAGE : String;
	static private var OK_LABEL : String;
	static private var CANCEL_LABEL : String;
	public var SignalPromptResponse : Signal;
	private var m_Background : MovieClip;
	private var m_Title : TextField;
	private var m_Message : TextField;
	private var m_OKButton : Button;
	private var m_CancelButton : Button;
	private var m_KeyListener : TextField;
	private var m_DeleteAll : Boolean;

	public function ConfirmDeleteMailPromptWindow();

	private function configUI() : Void;

	public function ShowPrompt(hasAttachments:Boolean, deleteAll:Boolean) : Void;

	private function ResponseButtonEventHandler(event:Object) : Void;

	private function KeyUpEventHandler() : Void;

}