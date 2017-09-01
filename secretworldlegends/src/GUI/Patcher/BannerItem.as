import flash.display.BitmapData;
import com.Utils.Signal;
import com.PatcherInterface.Patcher;
intrinsic class GUI.Patcher.BannerItem
{
	public var m_Path : String;
	public var m_DisplayTime : Number;
	public var m_Data : MovieClip;
	public var m_TargetUrl : String;
	public var m_IsLoaded : Boolean;
	public var m_Index : Number;
	public var SignalLoaded : Signal;

	public function BannerItem(index:Number, commonTarget:MovieClip, path:String, targetURL:String, displayTime:Number);

	private function onLoadComplete(mc:MovieClip);

	private function onLoadError(mc:MovieClip, errorCode:String);

}