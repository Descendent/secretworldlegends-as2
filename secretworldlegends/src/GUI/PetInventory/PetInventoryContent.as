import GUI.PetInventory.PetInventoryContentBase;
import com.Utils.LDBFormat;
import com.Utils.Archive;
import gfx.controls.Button;
import gfx.controls.CheckBox;
import com.GameInterface.Lore;
import com.GameInterface.LoreNode;
import com.GameInterface.LoreBase;
import com.GameInterface.SpellBase;
import com.GameInterface.Utils;
import com.GameInterface.DressingRoom;
import com.Utils.Colors;
import com.GameInterface.ShopInterface;
import GUI.PetInventory.PetClip;
intrinsic class GUI.PetInventory.PetInventoryContent extends PetInventoryContentBase
{
	public function PetInventoryContent();

	private function configUI();

	private function SetLabels() : Void;

	private function GetNodes() : Void;

	private function NodeCompare(node1:LoreNode, node2:LoreNode);

	public function SelectNodeClip(nodeClip:PetClip) : Void;

	private function SummonNode(nodeId:Number) : Void;

}