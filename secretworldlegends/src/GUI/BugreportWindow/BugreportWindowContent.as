import mx.utils.Delegate;
import com.GameInterface.DistributedValue;
import com.GameInterface.UtilsBase;
import gfx.controls.Button;
import gfx.controls.CheckBox;
import gfx.controls.TextArea;
import gfx.controls.TextInput;
import gfx.controls.DropdownMenu;
import gfx.core.UIComponent;
import com.Utils.LDBFormat;
import com.Components.WindowComponentContent;
intrinsic class GUI.BugreportWindow.BugreportWindowContent extends WindowComponentContent
{
	static private var TITLE_HOLDER_TEXT : String;
	static private var COMMENTS_HOLDER_TEXT : String;
	static private var CATEGORY_HOLDER_TEXT : String;
	static private var EMAIL_HOLDER_TEXT : String;
	static private var MISSION : String;
	static private var AUDIO : String;
	static private var VISUAL : String;
	static private var CHARACTER_CREATION : String;
	static private var WORLD_DESIGN : String;
	static private var ITEMS : String;
	static private var NPC : String;
	static private var COMBAT : String;
	static private var CONTROLS : String;
	static private var CAMERA : String;
	static private var TECHNICAL : String;
	static private var EXPLOIT : String;
	static private var GUI_STRING : String;
	static private var TEXT_DIALOGS : String;
	static private var CINEMATICS : String;
	static private var OTHER : String;
	static private var HOLDER_TEXT_COLOR : Number;
	static private var INPUT_TEXT_COLOR : Number;
	private var m_DirectionsLabel : TextField;
	private var m_TitleLabel : TextField;
	private var m_TitleTextInput : TextInput;
	private var m_CommentsLabel : TextField;
	private var m_CommentsTextArea : TextArea;
	private var m_CategoryDropMenu : DropdownMenu;
	private var m_ScreenshotCheckBox : CheckBox;
	private var m_NPCCheckBox : CheckBox;
	private var m_PlayerCheckBox : CheckBox;
	private var m_EmailLabel : TextField;
	private var m_EmailTextInput : TextInput;
	private var m_MandatoryFieldsLabel : TextField;
	private var m_SubmitButton : Button;
	private var m_CancelButton : Button;
	private var m_InputFieldsArray : Array;
	private var m_DictionaryHolderText : Object;
	private var m_KeyListener : Object;

	public function BugreportWindowContent();

	private function configUI() : Void;

	private function KeyListenerEventHandler(evt:Object) : Void;

	private function FocusInEventHandler(evt:Object) : Void;

	private function FocusOutEventHandler(evt:Object) : Void;

	private function SelectEventHandler(evt:Object) : Void;

	private function toggleSendReportButton() : Void;

	private function SendReportEventHandler() : Void;

	public function CancelEventHandler() : Void;

}