import gfx.controls.ListItemRenderer;
import com.GameInterface.LoreNode;
import com.GameInterface.LoreBase;
import com.GameInterface.Game.Character;
intrinsic class GUI.Emotes.EmoteListItemRenderer extends ListItemRenderer
{
	private var m_Name : TextField;
	private var m_LockIcon : MovieClip;
	private var m_LoreNode : LoreNode;
	private var LOCKED_ALPHA : Object;
	private var UNLOCKED_ALPHA : Object;

	public function EmoteListItemRenderer();

	private function configUI();

	public function setData(data:Object) : Void;

}