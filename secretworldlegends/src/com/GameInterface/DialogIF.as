import flash.external.ExternalInterface;
import com.Utils.Signal;
intrinsic class com.GameInterface.DialogIF
{
	static public var SignalShowDialog : Signal;
	public var SignalSelectedAS : Signal;
	public var m_PositiveAnswer : String;
	public var m_NegativeAnswer : String;
	public var m_Message : String;
	public var m_Buttons : Number;
	public var m_Window : MovieClip;
	public var m_IgnoreHideModule : MovieClip;

	public function Go(userDefinedData);

	public function Close();

	public function SetText(message:String);

	public function GetDialogData();

	public function SetAutocloseOnTeleport(autoClose:Boolean);

	public function SetAutocloseOnDeath(autoClose:Boolean);

	public function SetAutoCloseDistance(distance:Number);

	public function DisconnectAllSignals();

	public function SetIgnoreHideModule(ignore:Boolean);

}