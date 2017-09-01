import gfx.controls.ListItemRenderer;
import com.GameInterface.DressingRoom;
import com.GameInterface.DressingRoomNode;
import com.GameInterface.Game.Character;
import com.GameInterface.Inventory;
import com.Utils.ID32;
intrinsic class GUI.DressingRoom.ColorPickerItemRenderer extends ListItemRenderer
{
	public var m_Top : MovieClip;
	public var m_Bottom : MovieClip;
	private var m_LockIcon : MovieClip;
	private var m_Default : MovieClip;
	private var m_WardrobeInventory : Inventory;
	private var m_EquippedInventory : Inventory;
	private var data : DressingRoomNode;

	private function BaseHeadItemRenderer();

	public function setData(data:DressingRoomNode) : Void;

	public function Update();

}