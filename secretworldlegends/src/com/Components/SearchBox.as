import gfx.core.UIComponent;
import gfx.controls.Button;
import mx.utils.Delegate;
intrinsic class com.Components.SearchBox extends UIComponent
{
	private var m_DefaultText : String;
	private var m_IsDefaultText : Boolean;
	private var m_SearchOnInput : Boolean;
	private var m_MinSearchLength : Number;
	private var m_SearchButton : MovieClip;
	private var m_SearchText : TextField;
	private var m_Background : MovieClip;

	public function SearchBox();

	public function SlotTextFieldFocus(oldFocus, newFocus);

	public function SlotTextChanged(textfield_txt:TextField);

	public function SetShowSearchButton(showButton:Boolean);

	public function SetSearchOnInput(search:Boolean, minimumLength:Number);

	public function SetWidth(width:Number);

	private function configUI() : Void;

	public function SetDefaultText(text:String);

	public function GetSearchText() : String;

	private function SlotClick();

	private function SlotKeyDown();

}