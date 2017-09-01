import gfx.core.UIComponent;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import mx.utils.Delegate;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.GameInterface.LoreNode;
import com.GameInterface.Utils;
import GUI.RegionTeleport.PlayfieldEntry;
intrinsic class GUI.RegionTeleport.RegionTeleportScrollPanel extends UIComponent
{
	private var m_Background : MovieClip;
	private var m_ListContent : MovieClip;
	private var m_PlayfieldEntries : Array;
	private var m_Mask : MovieClip;
	private var m_ScrollBar : MovieClip;
	public var SignalEntryFocused : Signal;
	public var SignalEntryActivated : Signal;
	static private var LIST_TOP_PADDING : Object;
	static private var ENTRY_PADDING : Number;
	static private var SCROLL_SPEED : Number;
	static private var SCROLL_PADDING : Number;

	public function RegionTeleportScrollPanel();

	public function SetData(headerNode:LoreNode) : Void;

	private function CreateContent(headerNode:LoreNode) : Void;

	private function RemoveContent() : Void;

	private function LayoutEntries() : Void;

	private function ContentSizeUpdated() : Void;

	private function CreateScrollBar() : Void;

	private function OnScrollbarUpdate(event:Object) : Void;

	private function onMouseWheel(delta:Number) : Void;

	private function UpdateScrollbarVisibility() : Void;

	private function SlotEntryFocused(loreNode:LoreNode) : Void;

	private function SlotEntryActivated(nodeId:Number) : Void;

}