import com.Utils.LDBFormat;
import gfx.controls.Button;
import com.Utils.Signal;
import com.GameInterface.RadioButtonsDialog;
import gfx.core.UIComponent;
intrinsic class GUI.RadioButtonsDialog.RadioButtonsDialogController extends UIComponent
{
	static private var ACCEPT : String;
	static private var CANCEL : String;
	static private var RADIO_GROUP : String;
	private var m_RadioButtonInterface : RadioButtonsDialog;
	private var m_Title : TextField;
	private var m_OnlyOneMissionText : TextField;
	private var m_CheckBoxContainer : MovieClip;
	private var m_OKButton : MovieClip;
	private var m_CancelButton : MovieClip;
	private var m_RadioButtonsContainer : MovieClip;
	private var m_RadioButtons : Array;
	private var m_SelectedValue : Number;
	private var m_RadioButtonX : Number;
	private var m_RadioButtonY : Number;
	private var m_Radio : Object;

	public function RadioButtonsDialogController();

	private function configUI();

	public function AddOption(value:Number, label:String) : Void;

	public function Layout() : Void;

	private function UpdatePosition() : Void;

	public function GetSelectedData() : Number;

	public function SetTitle(label:String) : Void;

	public function SetInterface(rbInterface:RadioButtonsDialog) : Void;

	private function OnRadioToggle(event:Object) : Void;

	private function ResponseButtonEventHandler(event:Object) : Void;

}