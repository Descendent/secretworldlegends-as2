import com.Components.WindowComponentContent;
import gfx.controls.ScrollingList;
import gfx.controls.Button;
import gfx.controls.ButtonGroup;
import gfx.controls.CheckBox;
import com.Utils.LDBFormat;
import com.Utils.Text;
import com.Utils.Archive;
import com.GameInterface.Lore;
import com.GameInterface.LoreNode;
import com.GameInterface.LoreBase;
import com.GameInterface.SpellBase;
import com.GameInterface.ShopInterface;
import com.GameInterface.DialogIF;
import com.GameInterface.Game.Character;
import mx.utils.Delegate;
intrinsic class GUI.Emotes.EmotesContent extends WindowComponentContent
{
	private var m_CategoryText : TextField;
	private var m_UnownedLabel : TextField;
	private var m_UnownedCheckbox : CheckBox;
	private var m_ItemList : ScrollingList;
	private var m_LockIcon : MovieClip;
	private var m_PriceDisplay : MovieClip;
	private var m_FavoriteIcon : MovieClip;
	private var m_ConfirmButton : Button;
	private var m_ConfirmBG : MovieClip;
	private var m_DescriptionText : TextField;
	private var m_SourceText : TextField;
	private var m_SourceBanner : MovieClip;
	private var m_TabGroup : ButtonGroup;
	private var m_NumTabs : Number;
	private var m_TabArray : Array;
	private var m_FavoritesTab : Button;
	private var m_Favorites : Array;
	static private var ULTIMATE_ABILITY_UNLOCK : Number;

	public function EmotesContent();

	private function configUI() : Void;

	private function SetLabels() : Void;

	private function SetupTabs() : Void;

	private function TabChanged(button:Button) : Void;

	private function FilterChanged();

	private function Filter(input:Array) : Array;

	private function OnItemSelected(event:Object) : Void;

	private function OnItemClicked(event:Object) : Void;

	private function SlotTagAdded(tagId:Number) : Void;

	private function ConfirmCurrent() : Void;

	private function SlotConfirmPurchase(buttonId:Number);

	private function UpdateFooter(loreNode:LoreNode);

	private function IsFavorite(loreNode:LoreNode) : Boolean;

	private function FavoriteRollOver() : Void;

	private function FavoriteRollOut() : Void;

	private function FavoriteRelease() : Void;

	private function RemoveFocus();

	public function OnModuleActivated(config:Archive);

	public function OnModuleDeactivated() : Archive;

}