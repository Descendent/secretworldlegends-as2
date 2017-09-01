import com.Utils.Signal;
import com.Utils.ID32;
intrinsic class GUI.Friends.Views.Row extends MovieClip
{
	static public var FRIENDS_TYPE : String;
	static public var GUILD_TYPE : String;
	static public var IGNORED_TYPE : String;
	public var SignalRowPressed : Signal;
	public var m_Type : String;
	public var m_ID : ID32;
	public var m_Name : MovieClip;
	public var m_SecretSociety : MovieClip;
	public var m_Rank : MovieClip;
	public var m_Role : MovieClip;
	public var m_Region : MovieClip;
	public var m_Online : Boolean;

	public function Row();

	private function onMousePress(buttonIndex:Number, clickCount:Number) : Void;

}