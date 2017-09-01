import com.Components.WindowComponentContent;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import mx.utils.Delegate;
import gfx.controls.Button;
import com.GameInterface.Game.Character;
import com.GameInterface.ShopInterface;
import GUI.LootBox.PossibleItem;
import com.GameInterface.Inventory;
import com.GameInterface.DistributedValue;
intrinsic class GUI.LootBox.LootBoxContent extends WindowComponentContent
{
	private var m_KeyPanel : MovieClip;
	private var m_PossibleItems : MovieClip;
	private var m_Background : MovieClip;
	private var m_OpenButton : Button;
	private var m_KeyIcon : MovieClip;
	private var m_BuyKeyPanel : MovieClip;
	private var m_Blackout : MovieClip;
	private var m_ReceivedItems : MovieClip;
	private var m_Character : Character;
	private var m_TokenType : Number;
	private var m_Chest : MovieClip;
	private var m_MoreAvailable : Boolean;
	public var SignalContentInitialized : Signal;
	private var m_Hovered : Boolean;
	private var m_ButtonHovered : Boolean;

	public function LootBoxContent();

	private function configUI() : Void;

	private function CloseChest();

	private function PurchaseKey();

	private function CheckHover();

	private function HoverChest();

	private function OpenChest();

	private function CheckChestFrame();

	private function OpenBox();

	private function SlotOfferedLootBox(possibleItems:Array, tokenType:Number, boxType:Number, backgroundId:Number);

	private function SlotOpenedLootBox(obtainedItems:Array, lootResult:Number, moreAvailable:Boolean);

	private function SlotPanelClosed();

	private function SlotTokenChanged(tokenID:Number, newAmount:Number, oldAmount:Number);

}