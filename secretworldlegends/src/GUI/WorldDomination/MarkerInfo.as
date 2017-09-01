import com.Utils.Signal;
intrinsic class GUI.WorldDomination.MarkerInfo extends MovieClip
{
	static public var LEFT : String;
	static public var RIGHT : String;
	static private var X_POSITION : Number;
	static private var CLOSE_BUTTON_SIZE : Number;
	public var m_Button : MovieClip;
	private var m_Container : MovieClip;
	private var m_IsSelected : Boolean;

	public function get selected() : Boolean;
	public function set selected(value:Boolean) : Void;


	public function MarkerInfo();

	public function SetupInfo(alignment:String, title:String, subtitle:String, buttonName:String) : Void;

}