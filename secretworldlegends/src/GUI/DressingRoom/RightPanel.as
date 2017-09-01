import gfx.core.UIComponent;
import gfx.controls.Button;
import gfx.controls.TileList;
import gfx.controls.ScrollingList;
import mx.utils.Delegate;
import com.Utils.Signal;
import com.Utils.LDBFormat;
import com.Utils.Text;
import com.Utils.ID32;
import com.GameInterface.Game.Character;
import com.GameInterface.Inventory;
import com.GameInterface.DressingRoom;
import com.GameInterface.DressingRoomNode;
import com.GameInterface.ShopInterface;
import com.GameInterface.DialogIF;
intrinsic class GUI.DressingRoom.RightPanel extends UIComponent
{
	private var m_Background : MovieClip;
	private var m_CloseButton : Button;
	private var m_HeaderText : TextField;
	private var m_EquippedBanner : TextField;
	private var m_EquippedText : TextField;
	private var m_SourceBanner : MovieClip;
	private var m_SourceText : TextField;
	private var m_ColorPicker : MovieClip;
	private var m_ItemSelector : MovieClip;
	private var m_PriceDisplay : MovieClip;
	private var m_ImageBacker : MovieClip;
	private var m_ConfirmButton : Button;
	private var m_LockIcon : MovieClip;
	private var m_ClearPreview : MovieClip;
	private var m_Thumbnail : MovieClip;
	private var m_CurrentMode : Number;
	private var m_SelectedNode : DressingRoomNode;
	private var m_WardrobeInventory : Inventory;
	private var m_EquippedInventory : Inventory;
	private var m_EnableStickyPreview : Boolean;
	private var m_StickyPreviewNodeId : Number;
	private var SignalCloseDressingRoom : Signal;
	static public var MODE_NO_DATA : Number;
	static public var MODE_COLORS : Number;
	static public var MODE_ITEMS : Number;

	public function RightPanel();

	private function configUI() : Void;

	private function Update();

	private function ClearPreview();

	public function ClearStickyPreview();

	public function SetData(node:DressingRoomNode) : Void;

	private function SetDisplayMode(displayMode:Number);

	private function OnItemSelected();

	private function OnColorSelected();

	private function OnItemClicked(event:Object);

	private function SetVisualNode(nodeData:DressingRoomNode);

	private function UpdateEquipped(nodeData:DressingRoomNode);

	private function UpdateOwnership(nodeData:DressingRoomNode);

	private function LoadImage(container:MovieClip, mediaId:Number);

	private function onLoadInit(target:MovieClip);

	private function ConfirmSelection();

	private function SlotConfirmPurchase(buttonId:Number);

	private function GetSource(node:DressingRoomNode) : String;

	private function GetPrice(node:DressingRoomNode) : Number;

	private function GetTokenType(node:DressingRoomNode) : Number;

	private function GetIcon(node:DressingRoomNode) : Number;

	private function nodeCompare(node1, node2) : Number;

	private function CloseDressingRoom();

	private function RemoveFocus();

}