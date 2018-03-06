import flash.external.*;
import com.Utils.Signal;
intrinsic class com.PatcherInterface.Patcher
{
	static private var m_ClassName : String;
	static public var SignalStatusTextChanged : Signal;
	static public var SignalProgressChanged : Signal;
	static public var SignalPatchNotesDownloaded : Signal;
	static public var SignalEULADownloaded : Signal;
	static public var SignalDownloadSizeChanged : Signal;
	static public var SignalPatchingDone : Signal;
	static public var SignalValidatingRDB : Signal;
	static public var SignalInitialize : Signal;
	static public var SignalBundleGroupsUpdated : Signal;
	static public var SignalRDBStatusChanged : Signal;
	static public var SignalBannerNodeAdded : Signal;
	static public var SignalPachingRestarted : Signal;

	static public function GetPatchStarted() : Boolean;

	static public function GetProgress() : Number;

	static public function GetShowEULAFlag() : Boolean;

	static public function RequestEULA() : Boolean;

	static public function GetEULAText() : String;

	static public function GetTotalDownloadSize() : String;

	static public function GetLanguageCount() : Number;

	static public function GetLanguageName(index:Number) : String;

	static public function GetLanguageCode(index:Number) : String;

	static public function SelectLanguage(index:Number) : Void;

	static public function GetLanguageSelection() : Number;

	static public function GetAudioLanguageSelection() : Number;

	static public function GetAudioLanguageCount() : Number;

	static public function GetAudioLanguageName(index:Number) : String;

	static public function SelectAudioLanguage(index:Number) : Void;

	static public function CheckForDirectX10Hardware() : Boolean;

	static public function CheckForDirectX11Hardware() : Boolean;

	static public function GetScreenResX() : Number;

	static public function GetScreenResY() : Number;

	static public function GetDisplayModeCount() : Number;

	static public function GetDisplayModeWidth(index:Number) : Number;

	static public function GetDisplayModeHeight(index:Number) : Number;

	static public function GetScreenModeSelection() : Number;

	static public function SelectScreenMode(index:Number) : Void;

	static public function GetOptionIPointX(name:String) : Number;

	static public function GetOptionIPointY(name:String) : Number;

	static public function SetOptionIPoint(name:String, x:Number, y:Number) : Void;

	static public function GetOptionBool(name:String) : Boolean;

	static public function SetOptionBool(name:String, value:Boolean) : Void;

	static public function GetOptionInt(name:String);

	static public function SetOptionInt(name:String, value:Number) : Void;

	static public function GetOptionString(name:String);

	static public function SetOptionString(name:String, value:String) : Void;

	static public function GetBundleCount();

	static public function GetBundleName(index:Number);

	static public function IsBundleMandatory(index:Number) : Boolean;

	static public function IsBundleSelected(index:Number) : Boolean;

	static public function ActivateBundle(index:Number, active:Boolean);

	static public function StartGame() : Void;

	static public function Cancel() : Void;

	static public function ShowAccountPage() : Void;

	static public function ShowSupportPage() : Void;

	static public function ShowExternalURL(url:String) : Void;

	static public function MinimizeWindow() : Void;

	static public function BeginMoveWindow() : Void;

	static public function EndMoveWindow() : Void;

	static public function MoveWindow(deltaX:Number, deltaY:Number) : Void;

	static public function ValidateRDB(compact:Boolean) : Void;

	static public function RestartDownload() : Void;

	static public function GetBannerCount() : Number;

	static public function GetBannerPath(index:Number) : String;

	static public function GetBannerTargetURL(index:Number) : String;

	static public function GetBannerDisplayTime(index:Number) : Number;

}