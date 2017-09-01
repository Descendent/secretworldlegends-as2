import com.Utils.Signal;
intrinsic class com.GameInterface.RadioButtonsDialog
{
	public var SignalSelectedAS : Signal;

	static public function CreateDialogAS() : RadioButtonsDialog;

	public function Respond(buttonIdx:Number, selection:Number) : Void;

	public function Show() : Void;

	public function Close() : Void;

	public function SetAutocloseOnTeleport(autoClose:Boolean) : Void;

	public function SetAutocloseOnDeath(autoClose:Boolean) : Void;

	public function SetAutoCloseDistance(distance:Number) : Void;

}