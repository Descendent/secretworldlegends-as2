import com.Utils.Signal;
intrinsic class com.Components.RightClickItem
{
	static public var LEFT_ALIGN : String;
	static public var CENTER_ALIGN : String;
	static public var RIGHT_ALIGN : String;
	private var m_Enabled : Boolean;
	private var m_IsNotification : Boolean;
	public var m_Label : String;
	public var m_IsHeadline : Boolean;
	public var m_Alignment : String;
	public var m_IsSeparator : Boolean;
	public var SignalItemClicked : Signal;

	public function RightClickItem(label:String, isHeadline:Boolean, alignment:String);

	static public function MakeSeparator() : RightClickItem;

	public function SetIsNotification(notification:Boolean) : Void;

	public function IsNotification() : Boolean;

	public function SetEnabled(enabled:Boolean) : Void;

	public function IsEnabled() : Boolean;

}