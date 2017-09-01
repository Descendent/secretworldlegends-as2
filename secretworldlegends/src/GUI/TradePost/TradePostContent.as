import com.Utils.LDBFormat;
import gfx.controls.ButtonBar;
import gfx.core.UIComponent;
import GUI.TradePost.TradePostViewsContainer;
import com.Components.WindowComponentContent;
import com.GameInterface.Game.Character;
import com.GameInterface.Guild.*;
import com.GameInterface.Inventory;
import com.GameInterface.DistributedValue;
import com.Utils.ID32;
intrinsic class GUI.TradePost.TradePostContent extends WindowComponentContent
{
	static private var BUY : String;
	static private var POSTAL_SERVICE : String;
	static private var EXCHANGE : String;
	static private var SCROLL_WHEEL_SPEED : Number;
	private var m_ButtonBar : ButtonBar;
	private var m_TabButtonArray : Array;
	private var m_ViewsContainer : MovieClip;
	private var m_ShowMailTabMonitor : DistributedValue;

	public function TradePostContent();

	private function configUI() : Void;

	private function SlotShowMailTab() : Void;

	private function RemoveFocus() : Void;

	private function SetSelectedContent(event:Object) : Void;

	public function SetSelectedIndex(value:Number) : Void;

	public function GetSelectedIndex() : Number;

}