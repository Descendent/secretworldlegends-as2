import com.Components.WindowComponentContent;
import com.Utils.LDBFormat;
import com.Utils.Archive;
import gfx.controls.Button;
import gfx.controls.CheckBox;
import com.GameInterface.Lore;
import com.GameInterface.LoreNode;
import com.GameInterface.LoreBase;
import com.GameInterface.SpellBase;
import com.GameInterface.ShopInterface;
import com.GameInterface.Utils;
import com.GameInterface.DialogIF;
import com.GameInterface.Game.Character;
import com.Utils.Colors;
import com.Utils.Text;
import GUI.PetInventory.PetClip;
intrinsic class GUI.PetInventory.PetInventoryContentBase extends WindowComponentContent
{
	private var m_PreviousButton : Button;
	private var m_NextButton : Button;
	private var m_SummonButton : Button;
	private var m_FavoriteCheckBox : CheckBox;
	private var m_OwnedCheckBox : CheckBox;
	private var m_UnownedCheckBox : CheckBox;
	private var m_FavoritesCheckBox : CheckBox;
	private var m_Name : TextField;
	private var m_Description : TextField;
	private var m_Rarity : TextField;
	private var m_FavoriteLabel : TextField;
	private var m_OwnedLabel : TextField;
	private var m_UnownedLabel : TextField;
	private var m_FavoritesLabel : TextField;
	private var m_TagPrice : MovieClip;
	private var m_RootNode : LoreNode;
	private var m_UnownedNodes : Array;
	private var m_OwnedNodes : Array;
	private var m_NodeClips : Array;
	private var m_FavoriteTags : Array;
	private var m_SelectedNodeClip : PetClip;
	private var m_CurrPage : Number;
	private var m_MountEquipStyle : Number;
	private var m_VisibleMountType : Number;
	private var m_SelectedMount : Number;
	private var m_SelectedSpeed : Number;
	private var m_OwnedButtonText : String;
	private var m_PurchaseButtonText : String;
	private var ICONS_START_X : Number;
	private var ICONS_START_Y : Number;
	private var ICONS_BUFFER : Number;
	private var ICONS_PER_ROW : Number;
	private var NODES_PER_PAGE : Number;

	public function PetInventoryContentBase();

	private function configUI();

	public function OnModuleActivated(config:Archive) : Void;

	public function OnModuleDeactivated();

	private function SetLabels() : Void;

	private function GetNodes() : Void;

	private function DrawNodeClips() : Void;

	public function SelectNodeClip(nodeClip:PetClip) : Void;

	private function SummonNode(nodeId:Number) : Void;

	private function SlotConfirmPurchase(buttonId:Number);

	private function PageBackward() : Void;

	private function PageForward() : Void;

	private function FiltersChanged() : Void;

	private function GetDisplayArray() : Array;

	private function FavoriteSelected() : Void;

	private function UpdatePagination() : Void;

	private function RemoveFocus() : Void;

	private function SlotTagAdded(tagId:Number) : Void;

}