import flash.external.*;
import com.Utils.Signal;
import GUIFramework.ClipNode;
import GUIFramework.SFClipLoaderBase;
intrinsic class GUIFramework.SFClipLoader
{
	static private var m_Loader : MovieClipLoader;
	static private var m_CurrentScreenRes : flash.geom.Point;
	static private var m_NextClipID : Number;
	static public var SignalDisplayResolutionChanged : Signal;
	static public var SignalFrameStarted : Signal;
	static private var s_TopLevelClips : Array;
	static private var s_ModalClips : Array;

	static private function SetupLoader() : Void;

	static public function OnScreenResChanged() : Void;

	static public function CreateEmptyMovieClip(name:String, depthLayer:Number, subDepth:Number) : MovieClip;

	static public function LoadClip(url:String, objectName:String, stretchToScreen:Boolean, depthLayer:Number, subDepth:Number, loadArguments:Array) : ClipNode;

	static public function AddClip(objectName:String, clip:MovieClip, depthLayer:Number, subDepth:Number) : ClipNode;

	static public function UnloadClip(objectName:String);

	static public function FindClipByPos(x:Number, y:Number) : Number;

	static public function GetClipIndex(movie:MovieClip) : Number;

	static public function MoveToFront(index:Number) : Void;

	static public function SetClipLayer(index:Number, depthLayer:Number, subDepth:Number) : Void;

	static public function AddClipNode(clipNode:ClipNode);

	static public function RemoveClipByIndex(index:Number) : Void;

	static public function RemoveClipNode(movie:MovieClip) : Void;

	static public function OnLoadInit(clip:MovieClip);

	static private function UpdateClipSize(clipNode:ClipNode);

	static private function OnLoadComplete(movie:MovieClip, status:Number) : Void;

	static private function OnLoadError(movie:MovieClip, status:Number) : Void;

	static private function AddModalBlocker();

	static private function RemoveModalBlocker();

	static public function MakeClipModal(clip:MovieClip, makeModal:Boolean);

	static public function PrintTopLevelClipsDebug();

}