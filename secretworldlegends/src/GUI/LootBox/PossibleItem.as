import gfx.core.UIComponent;
import com.Utils.LDBFormat;
import com.Components.ItemSlot;
import com.GameInterface.InventoryItem;
intrinsic class GUI.LootBox.PossibleItem extends UIComponent
{
	private var m_Slot : MovieClip;
	private var m_Name : TextField;
	private var m_ItemSlot : ItemSlot;

	public function PossibleItem();

	public function SetData(item:InventoryItem) : Void;

}