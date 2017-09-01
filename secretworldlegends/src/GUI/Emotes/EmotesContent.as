import com.Components.WindowComponentContent;
import gfx.controls.ScrollingList;
import gfx.controls.Button;
import gfx.controls.ButtonGroup;
import com.Utils.LDBFormat;
import com.GameInterface.Lore;
import com.GameInterface.LoreNode;
import com.GameInterface.LoreBase;
import com.GameInterface.SpellBase;
import mx.utils.Delegate;
intrinsic class GUI.Emotes.EmotesContent extends WindowComponentContent
{
	private var m_ItemList : ScrollingList;
	private var m_TabGroup : ButtonGroup;
	private var m_NumTabs : Number;
	private var m_ImagesLoaded : Number;

	public function EmotesContent();

	private function configUI() : Void;

	private function SetLabels() : Void;

	private function SetupTabs() : Void;

	private function LoadImage(container:MovieClip, mediaId:Number);

	private function onLoadComplete();

	private function onLoadError();

	private function TabChanged(button:Button) : Void;

	private function OnItemSelected(event:Object) : Void;

	private function RemoveFocus();

}