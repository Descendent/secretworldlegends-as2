import gfx.core.UIComponent;
import gfx.controls.Button;
import gfx.controls.TextInput;
import mx.utils.Delegate;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.GameInterface.DistributedValue;
intrinsic class GUI.CabalManagement.EditRoleName extends UIComponent
{
	private var m_Title : TextField;
	private var m_NameInput : TextInput;
	private var m_ConfirmButton : Button;
	private var m_CancelButton : Button;
	private var SignalCancel : Signal;
	private var SignalEditName : Signal;
	private var m_CurrRole : String;
	private var m_RankNumber : String;
	private var m_KeyListener : Object;

	private function EditRoleName();

	private function configUI();

	private function OnTextChanged();

	private function SetLabels();

	private function CancelNameEdit();

	private function ConfirmNameEdit();

}