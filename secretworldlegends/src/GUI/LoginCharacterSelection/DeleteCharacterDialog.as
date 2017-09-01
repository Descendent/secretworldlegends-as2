import com.Utils.LDBFormat;
import com.Utils.Signal;
import gfx.core.UIComponent;
import gfx.controls.Button;
import gfx.controls.TextInput;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic class GUI.LoginCharacterSelection.DeleteCharacterDialog extends UIComponent
{
	public var SignalCancelDeleteCharacter : Signal;
	public var SignalConfirmDeleteCharacter : Signal;
	private var m_Background : MovieClip;
	private var m_CancelButton : Button;
	private var m_ConfirmButton : Button;
	private var m_PasswordInput : MovieClip;
	private var m_Text : TextField;
	private var m_KeyListener : Object;
	private var m_SidePadding : Number;

	public function DeleteCharacterDialog();

	private function onLoad() : Void;

	private function onUnload();

	private function KeyUpEventHandler() : Void;

	public function configUI() : Void;

	private function SlotCancelDelete() : Void;

	private function SlotConfirmDelete() : Void;

	public function LayoutHandler() : Void;

}