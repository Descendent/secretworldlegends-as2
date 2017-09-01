import gfx.core.UIComponent;
import gfx.controls.ButtonGroup;
import gfx.controls.Button;
import gfx.controls.TileList;
import mx.utils.Delegate;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.GameInterface.CharacterCreation.CharacterCreation;
intrinsic dynamic class GUI.CharacterCreation.HexGridPicker extends UIComponent
{
	private var m_Title : TextField;
	private var m_ColorTitle : TextField;
	private var m_ItemList : TileList;
	private var m_ColorList : TileList;
	private var m_ColorDividerTop : MovieClip;
	private var m_ColorDividerBottom : MovieClip;
	private var m_Background : MovieClip;
	private var SignalItemSelected : Signal;
	private var SignalColorSelected : Signal;
	private var m_SelectedItemIndex : Number;
	private var m_SelectedColorIndex : Number;
	private var m_CharacterCreationIF : CharacterCreation;
	private var m_Initialized : Boolean;
	private var MAX_COLORS : Number;

	public function HexGridPicker();

	private function configUI();

	private function SelectedItemChanged(event:Object);

	private function SelectedColorChanged(event:Object);

	public function SetTitle(newTitle:String);

	public function SetItems(itemArray:Array, currentSelection:Number);

	public function SetColors(colorArray:Array, currentSelection:Number);

	public function SetSelectedItem(currentSelection:Number);

	public function SetSelectedColor(currentSelection:Number);

	public function HideColors(hideColors:Boolean);

	public function SetCharacterCreationIF(characterCreationIF:CharacterCreation);

}