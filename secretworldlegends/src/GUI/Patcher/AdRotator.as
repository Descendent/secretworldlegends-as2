import com.Utils.Signal;
import gfx.core.UIComponent;
import com.PatcherInterface.Patcher;
import GUI.Patcher.BannerItem;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic class GUI.Patcher.AdRotator extends UIComponent
{
	public var m_BannerList : Array;
	public var m_MovieClipLoader : MovieClipLoader;
	public var m_LoaderTarget : MovieClip;
	public var m_CurrentIndex : Number;

	public function AdRotator();

	private function configUI();

	private function OpenBannerAd();

	private function SlotShowBanner();

	private function SlotBannerNodeAdded(imagePath:String, targetURL:String, displayTime:Number);

}