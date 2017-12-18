import gfx.core.UIComponent;
import gfx.controls.Button;
import gfx.controls.TextInput;
import com.Utils.Colors;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.Utils.Text;
import com.GameInterface.Tooltip.*;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic class GUI.LoginCharacterSelection.RenameCharacterDialog extends UIComponent
{
	static private var TEXT_INPUT_DEFAULT_STROKE_COLOR : Number;
	static private var TEXT_INPUT_HIGHLIGHT_STROKE_COLOR : Number;
	static private var MIN_CHAR_COUNT : Number;
	static private var MAX_CHAR_COUNT : Number;
	private var m_Background : MovieClip;
	private var m_ConfirmButton : Button;
	private var m_CancelButton : Button;
	private var m_Text : TextField;
	private var m_Pricetag : TextField;
	private var m_NamingGuide1 : TextField;
	private var m_NamingGuide2 : TextField;
	private var m_FirstNameInput : TextInput;
	private var m_LastNameInput : TextInput;
	private var m_NickNameInput : TextInput;
	private var m_KeyListener : Object;
	private var m_Description : String;
	private var m_CharInstance : Number;
	private var m_HasCost : Boolean;
	public var SignalSelected : Signal;
	private var m_SidePadding : Number;

	public function RenameCharacterDialog();

	private function onLoad();

	private function onUnload();

	public function configUI();

	private function OnFirstNameChanged();

	private function OnLastNameChanged();

	private function OnNickNameChanged();

	public function SetDescription(desc:String) : Void;

	public function SetPrice(price:Number) : Void;

	public function SetCharInstance(charInstance:Number);

	private function SlotCancelButton();

	private function SlotOkButton();

	public function Layout();

	private function TextFieldFocusEventHandler(event:Object) : Void;

}