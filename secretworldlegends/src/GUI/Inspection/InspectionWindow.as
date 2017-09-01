import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.GameInterface.Game.Character;
import com.GameInterface.Game.CharacterBase;
import com.GameInterface.LoreBase;
import com.GameInterface.Utils;
import com.GameInterface.ShopInterface;
import com.Components.ItemSlot;
import com.Utils.ID32;
import com.Utils.Signal;
import com.Utils.LDBFormat;
import com.Utils.Faction;
import com.Utils.Text;
import mx.utils.Delegate;
import gfx.controls.Button;
import gfx.controls.ScrollingList;
import com.GameInterface.Tooltip.TooltipUtils;
import com.GameInterface.Tooltip.TooltipInterface;
import com.Components.WindowComponentContent;
import com.GameInterface.Lore;
intrinsic class GUI.Inspection.InspectionWindow extends WindowComponentContent
{
	public var SignalClose : Signal;
	public var SignalUpdateHeight : Signal;
	private var m_InspectionInventory : Inventory;
	private var m_ClothesInspectionInventory : Inventory;
	private var m_InspectionItemSlots : Array;
	private var m_InspectionCharacter : Character;
	private var m_ClientStaticInventory : Inventory;
	private var m_GenderMatch : Boolean;
	private var m_NameBox : MovieClip;
	private var m_ChakrasTitle : TextField;
	private var m_IconChakra_1 : MovieClip;
	private var m_IconChakra_2 : MovieClip;
	private var m_IconChakra_3 : MovieClip;
	private var m_IconChakra_4 : MovieClip;
	private var m_IconChakra_5 : MovieClip;
	private var m_IconChakra_6 : MovieClip;
	private var m_IconChakra_7 : MovieClip;
	private var m_IconGadget : MovieClip;
	private var m_WeaponsTitle : TextField;
	private var m_IconWeapon_1 : MovieClip;
	private var m_IconWeapon_2 : MovieClip;
	private var m_ClothesTitle : TextField;
	private var m_ClothingIconHeadgear1 : MovieClip;
	private var m_ClothingIconHeadgear2 : MovieClip;
	private var m_ClothingIconHats : MovieClip;
	private var m_ClothingIconNeck : MovieClip;
	private var m_ClothingIconChest : MovieClip;
	private var m_ClothingIconBack : MovieClip;
	private var m_ClothingIconHands : MovieClip;
	private var m_ClothingIconLeg : MovieClip;
	private var m_ClothingIconFeet : MovieClip;
	private var m_ClothingIconMultislot : MovieClip;
	private var m_ClothingNameHeadgear1 : TextField;
	private var m_ClothingNameHeadgear2 : TextField;
	private var m_ClothingNameHats : TextField;
	private var m_ClothingNameNeck : TextField;
	private var m_ClothingNameChest : TextField;
	private var m_ClothingNameBack : TextField;
	private var m_ClothingNameHands : TextField;
	private var m_ClothingNameLeg : TextField;
	private var m_ClothingNameFeet : TextField;
	private var m_ClothingNameMultislot : TextField;
	private var m_BuyHeadgear1 : MovieClip;
	private var m_BuyHeadgear2 : MovieClip;
	private var m_BuyHat : MovieClip;
	private var m_BuyNeck : MovieClip;
	private var m_BuyChest : MovieClip;
	private var m_BuyBack : MovieClip;
	private var m_BuyHands : MovieClip;
	private var m_BuyLeg : MovieClip;
	private var m_BuyFeet : MovieClip;
	private var m_BuyMultislot : MovieClip;
	private var m_Initialized : Boolean;

	public function InspectionWindow();

	public function configUI();

	private function SetLabels();

	private function Close();

	public function SetCharacter(characterID:ID32);

	private function UpdateData();

	private function InitializeChakras();

	private function InitializeWeapons();

	private function InitializeSlot(itemPos:Number, icon:MovieClip) : Void;

	private function InitializeClothes();

	private function HasItem(item) : Boolean;

	private function TryBuyItem(item:InventoryItem);

	private function BuyHeadgear1();

	private function SlotConfirmBuyHeadgear1(buttonId:Number);

	private function BuyHeadgear2();

	private function SlotConfirmBuyHeadgear2(buttonId:Number);

	private function BuyHat();

	private function SlotConfirmBuyHat(buttonId:Number);

	private function BuyNeck();

	private function SlotConfirmBuyNeck(buttonId:Number);

	private function BuyChest();

	private function SlotConfirmBuyChest(buttonId:Number);

	private function BuyBack();

	private function SlotConfirmBuyBack(buttonId:Number);

	private function BuyHands();

	private function SlotConfirmBuyHands(buttonId:Number);

	private function BuyLegs();

	private function SlotConfirmBuyLegs(buttonId:Number);

	private function BuyFeet();

	private function SlotConfirmBuyFeet(buttonId:Number);

	private function BuyMultiSlot();

	private function SlotConfirmBuyMultiSlot(buttonId:Number);

	private function SlotClientAddedStaticItem(inventoryID:com.Utils.ID32, itemPos:Number);

	private function SlotCharacterDestructed();

	private function SlotStartDragWindow();

	private function SlotStopDragWindow();

}