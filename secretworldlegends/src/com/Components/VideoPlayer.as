import flash.geom.Point;
import mx.utils.Delegate;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import gfx.controls.Button;
import gfx.controls.Label;
import gfx.core.UIComponent;
import flash.filters.DropShadowFilter;
import mx.transitions.easing.*;
intrinsic class com.Components.VideoPlayer extends UIComponent
{
	private var m_NetConnection : NetConnection;
	private var m_NetStream : NetStream;
	private var m_Sound : Sound;
	private var m_VideoView : Video;
	private var m_ShowOverlay : Boolean;
	private var m_IsInitialized : Boolean;
	private var m_IsPlaying : Boolean;
	private var m_AudioTracks : Array;
	private var m_SubtitleCount : Number;
	private var m_WantedAudioTrack : Number;
	private var m_WantedSubtitleTrack : Number;
	private var m_WantedVolume : Number;
	public var SignalInitialized : Signal;
	public var SignalLoaded : Signal;
	public var SignalFailedToLoad : Signal;
	public var SignalStopped : Signal;
	public var m_VideoPath : String;
	public var m_VideoStatusView : Label;
	public var m_VideoPlayerBg : MovieClip;
	public var m_PlayButton : Button;
	public var m_PauseButton : Button;
	public var m_Subtitle : TextField;
	private var counter : Number;

	public function VideoPlayer();

	public function SetSubtitleTrack(track:Number);

	public function SetAudioTrack(track:Number);

	public function SetVolume(volume:Number);

	private function onMouseMove();

	private function HideShowControls();

	private function onMouseUp();

	private function configUI();

	private function PausePlayVideo();

	private function onUnload();

	private function onEnterFrame();

	private function PlayVid();

	private function StopVid();

	private function OnStatusUpdate(infoObject:Object);

	public function IsInitialized() : Boolean;

	public function LoadVideo(path:String) : Void;

	private function UpdateLayout();

	public function GetVideoSize() : Point;

	public function PauseVideo();

	public function StartVideo();

	public function SetShowOverlay(show:Boolean);

	public function SetLoop(loop:Boolean);

	private function SetIsPlaying(isPlaying:Boolean);

}