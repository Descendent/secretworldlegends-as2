import com.Utils.ID32;
import com.Utils.Signal;
import com.GameInterface.InventoryItem;
import com.GameInterface.InventoryBase;
intrinsic class com.GameInterface.Inventory extends InventoryBase
{
	public function Inventory(invID:ID32);

	public function GetItemAt(index:Number) : InventoryItem;

}