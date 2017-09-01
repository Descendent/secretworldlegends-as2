import gfx.controls.ListItemRenderer;
import com.GameInterface.Game.Character;
import com.GameInterface.DressingRoom;
import com.GameInterface.DressingRoomNode;
import com.GameInterface.Inventory;
import com.Utils.ID32;
intrinsic class GUI.DressingRoom.CategoryListItemRenderer extends ListItemRenderer
{
	private var m_Text : TextField;
	private var m_Owned : MovieClip;
	private var m_Equipped : MovieClip;
	private var m_Data : DressingRoomNode;
	private var m_WardrobeInventory : Inventory;
	private var m_EquippedInventory : Inventory;

	public function CategoryListItemRenderer();

	private function configUI();

	public function setData(data:DressingRoomNode) : Void;

	public function Update() : Void;

}