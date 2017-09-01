import com.Utils.Archive;
intrinsic class com.GameInterface.GUIModuleIFBase
{
	private var m_Name : String;

	public function Open() : Void;

	public function Close() : Void;

	public function IsActive() : Boolean;

	public function GetModuleName() : String;

	public function GetVariableName() : String;

	public function StoreConfig(config:Archive) : Void;

	static public function CloseFullscreenModule() : Void;

	public function LoadConfig() : Archive;

}