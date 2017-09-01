import com.Components.WindowComponentContent;
import com.GameInterface.BrowserImageMetadata;
import com.GameInterface.Browser.Browser;
import com.GameInterface.DistributedValue;
import com.Utils.ImageLoader;
import gfx.controls.UILoader;
import mx.utils.Delegate;
import flash.geom.Point;
intrinsic class GUI.ItemShopBrowser.ItemShopBrowserContent extends WindowComponentContent
{
	private var m_MouseListener : Object;
	private var m_Loader : UILoader;
	private var m_Browser : Browser;
	static private var SCROLL_AMOUNT : Number;

	public function ItemShopBrowserContent();

	private function configUI() : Void;

	private function onUnload() : Void;

	private function MouseMoveEventHandler() : Void;

	private function MouseDownEventHandler() : Void;

	private function MouseWheelEventHandler(delta:Number) : Void;

	private function MouseUpEventHandler() : Void;

	private function GetBrowserMouseLocation() : Point;

}