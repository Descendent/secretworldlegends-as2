import gfx.controls.ListItemRenderer;
import com.GameInterface.LoreNode;
import com.GameInterface.LoreBase;
import com.GameInterface.Game.Character;
intrinsic class GUI.Emotes.EmoteListItemRenderer extends ListItemRenderer
{
	private var m_Name : TextField;
	private var m_Owned : MovieClip;
	private var data : LoreNode;

	public function EmoteListItemRenderer();

	private function configUI();

	public function setData(data:Object) : Void;

	private function SlotTagAdded(tagId:Number);

}