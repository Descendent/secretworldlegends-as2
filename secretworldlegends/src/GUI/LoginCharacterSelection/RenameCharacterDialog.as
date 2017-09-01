import gfx.core.UIComponent;
import gfx.controls.Button;
import gfx.controls.TextInput;
import com.Utils.Colors;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic class GUI.LoginCharacterSelection.RenameCharacterDialog extends UIComponent
{
	static private var TEXT_INPUT_DEFAULT_STROKE_COLOR : Number;
	static private var TEXT_INPUT_HIGHLIGHT_STROKE_COLOR : Number;
	private var m_Background : MovieClip;
	private var m_ConfirmButton : Button;
	private var m_CancelButton : Button;
	private var m_NameInput : MovieClip;
	private var m_Text : TextField;
	private var m_KeyListener : Object;
	private var m_Description : String;
	private var m_CharInstance : Number;
	public var SignalSelected : Signal;
	private var m_SidePadding : Number;

	public function RenameCharacterDialog();

	private function onLoad();

	private function onUnload();

	public function configUI();

	private function OnNameChanged();

	public function SetDescription(desc:String) : Void;

	public function SetCharInstance(charInstance:Number);

	private function SlotCancelButton();

	private function SlotOkButton();

	public function Layout();

	private function TextFieldFocusEventHandler(event:Object) : Void;

}