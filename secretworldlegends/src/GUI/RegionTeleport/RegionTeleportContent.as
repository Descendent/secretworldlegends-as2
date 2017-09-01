import com.Components.WindowComponentContent;
import com.Utils.LDBFormat;
import gfx.controls.Button;
import com.GameInterface.LoreNode;
import com.GameInterface.Lore;
import com.GameInterface.DistributedValue;
import com.GameInterface.SpellBase;
import com.GameInterface.Game.Character;
import com.Utils.Colors;
import GUI.RegionTeleport.RegionTeleportScrollPanel;
intrinsic class GUI.RegionTeleport.RegionTeleportContent extends WindowComponentContent
{
	private var m_TeleportButton : Button;
	private var m_ScrollPanel : RegionTeleportScrollPanel;
	private var m_SelectPanelBG : MovieClip;
	private var m_SelectedDescription : TextField;
	private var m_SelectedTitle : TextField;
	private var m_SelectedMedia : MovieClip;
	private var m_ErrorText : TextField;
	private var m_FocusedTag : Number;
	static private var SELECT_PANEL_PADDING : Number;
	static private var DEFAULT_IMAGE_RDB : Number;
	static private var LDB_COOLDOWN : String;
	static private var LDB_LOCKED : String;

	public function RegionTeleportContent();

	private function configUI() : Void;

	private function SetLabels() : Void;

	private function SlotEntryFocused(loreNode:LoreNode) : Void;

	private function SlotEntryActivated(nodeId:Number) : Void;

	private function FocusDefaultEntry() : Void;

	private function UpdateFocusedEntry(loreNode:LoreNode) : Void;

	private function LoadImage(container:MovieClip, mediaId:Number);

	private function onLoadInit(target:MovieClip);

	private function TeleportClickHandler() : Void;

}