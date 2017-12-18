import gfx.controls.ListItemRenderer;
import com.GameInterface.Lore;
import com.GameInterface.LoreNode;
import com.GameInterface.LoreBase;
import com.GameInterface.ShopInterface;
import com.GameInterface.Game.Character;
import com.GameInterface.Utils;
import com.GameInterface.DressingRoom;
import com.Utils.LDBFormat;
intrinsic class GUI.Emotes.EmoteListItemRenderer extends ListItemRenderer
{
	private var m_Name : TextField;
	private var m_Owned : MovieClip;
	private var data : LoreNode;
	private var m_PromoIcon : MovieClip;

	public function EmoteListItemRenderer();

	private function configUI();

	public function setData(data:Object) : Void;

	private function SlotTagAdded(tagId:Number);

	private function GetPromo();

}