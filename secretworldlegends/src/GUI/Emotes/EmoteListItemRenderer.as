import gfx.controls.ListItemRenderer;
import com.GameInterface.Lore;
import com.GameInterface.LoreNode;
import com.GameInterface.LoreBase;
import com.GameInterface.ShopInterface;
import com.GameInterface.Game.Character;
import com.GameInterface.Utils;
import com.Utils.LDBFormat;
intrinsic class GUI.Emotes.EmoteListItemRenderer extends ListItemRenderer
{
	private var m_Name : TextField;
	private var m_Owned : MovieClip;
	private var data : LoreNode;
	private var m_PromoIcon : MovieClip;
	private var PROMO_TWEAKS : Array;

	public function EmoteListItemRenderer();

	private function configUI();

	public function setData(data:Object) : Void;

	private function SlotTagAdded(tagId:Number);

	private function GetPromo();

}