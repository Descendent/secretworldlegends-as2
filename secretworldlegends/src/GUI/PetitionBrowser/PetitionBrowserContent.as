import com.Components.WindowComponentContent;
import com.GameInterface.BrowserImageMetadata;
import com.GameInterface.Browser.Browser;
import com.Utils.ImageLoader;
import gfx.controls.UILoader;
import mx.utils.Delegate;
import flash.geom.Point;
import com.GameInterface.DistributedValue;
intrinsic class GUI.PetitionBrowser.PetitionBrowserContent extends WindowComponentContent
{
	static private var SCROLL_AMOUNT : Number;
	private var m_Loader : UILoader;
	private var m_Browser : Browser;
	private var m_PetitionFocusMonitor : DistributedValue;
	private var m_MouseListener : Object;

	public function PetitionBrowserContent();

	private function configUI() : Void;

	private function onUnload() : Void;

	private function SlotPetitionFocusChanged() : Void;

	private function MouseWheelEventHandler(delta:Number) : Void;

	private function MouseMoveEventHandler() : Void;

	private function MouseDownEventHandler() : Void;

	private function MouseUpEventHandler() : Void;

	private function GetBrowserMouseLocation() : Point;

	public function Deconstruct() : Void;

}