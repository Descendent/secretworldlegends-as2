import com.Components.WindowComponentContent;
import flash.geom.Rectangle;
import flash.geom.Point;
import mx.transitions.easing.*;
import mx.utils.Delegate;
import gfx.controls.UILoader;
import com.Utils.ID32;
import com.Utils.Signal;
import com.Utils.LDBFormat;
import gfx.controls.Label;
import com.Components.VideoPlayer;
import com.GameInterface.DistributedValue;
import com.GameInterface.NewsBase;
intrinsic class GUI.MediaPlayer.MediaPlayerContent extends WindowComponentContent
{
	private var m_TextView : MovieClip;
	private var m_ImageView : MovieClip;
	private var m_VideoPlayer : MovieClip;
	private var m_EngageImageView : MovieClip;
	private var m_News : NewsBase;
	public var SignalContentLoaded : Signal;
	public var SignalErrorLoading : Signal;
	private var m_ContentMargin : Number;
	private var m_ScreenMargin : Number;
	private var m_HasPreviouslyFailedLoading : Boolean;
	private var m_ImagePath : String;

	public function MediaPlayerContent();

	private function onLoad() : Void;

	public function Close() : Void;

	public function SetText(text:String) : Void;

	public function SetImage(image:Object) : Void;

	private function SlotLoadImageError(target_mc:MovieClip, errorCode:String, httpStatus:Number) : Void;

	public function SetVideo(video:Object) : Void;

	private function SlotFinishLoading() : Void;

	private function GetContentBoxSize() : Point;

	private function ParseResourceID(resourceID:Object) : String;

	private function ScaleText() : Void;

	private function ScaleImage(target:MovieClip) : Void;

	private function ScaleVideo();

	private function Layout();

	public function GetSize() : Point;

	public function SetEngageImage(url:String);

	public function SlotEngageNodeAdded(index:Number, path:String);

	public function SlotEngageImageDownloaded(index:Number);

}