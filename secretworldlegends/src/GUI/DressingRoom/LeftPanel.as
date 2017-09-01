import gfx.core.UIComponent;
import gfx.controls.Button;
import gfx.controls.ButtonGroup;
import gfx.controls.ScrollingList;
import gfx.controls.CheckBox;
import gfx.controls.DropdownMenu;
import com.Components.SearchBox;
import com.Utils.LDBFormat;
import com.Utils.Archive;
import mx.utils.Delegate;
import com.Utils.Signal;
import com.GameInterface.DressingRoom;
import com.GameInterface.DressingRoomNode;
import com.GameInterface.Game.Character;
intrinsic class GUI.DressingRoom.LeftPanel extends UIComponent
{
	private var m_Tab_0 : Button;
	private var m_Tab_1 : Button;
	private var m_Tab_2 : Button;
	private var m_Tab_3 : Button;
	private var m_Tab_4 : Button;
	private var m_Tab_5 : Button;
	private var m_Tab_6 : Button;
	private var m_Tab_7 : Button;
	private var m_Tab_8 : Button;
	private var m_Tab_9 : Button;
	private var m_Tab_10 : Button;
	private var m_Tab_11 : Button;
	private var m_Background : MovieClip;
	private var m_HeaderText : TextField;
	private var m_CategoryText : TextField;
	private var m_UnownedFilterText : TextField;
	private var m_CategoryList : ScrollingList;
	private var m_SearchBox : SearchBox;
	private var m_UnownedCheckBox : CheckBox;
	private var m_TabArray : Array;
	private var m_TabGroup : ButtonGroup;
	private var m_CategoryArray : Array;
	private var m_SearchText : String;
	private var SignalEquipSlotSelected : Signal;
	private var SignalCategorySelected : Signal;

	public function LeftPanel();

	private function configUI() : Void;

	private function SetLabels() : Void;

	private function SetupTabs() : Void;

	private function TabChanged(tab:Button) : Void;

	private function PopulateFilterTypeDropdown() : Void;

	private function PopulateCategoryList() : Void;

	private function FilterCategoryArray(categoryArray:Array) : Array;

	private function OnSearchText(event:Object) : Void;

	private function OnUnownedChanged() : Void;

	private function OnFilterTypeChanged() : Void;

	private function OnCategorySelected() : Void;

	private function RemoveFocus() : Void;

	public function OnModuleActivated(config:Archive) : Void;

	public function OnModuleDeactivated();

}