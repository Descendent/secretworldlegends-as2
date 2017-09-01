intrinsic class GUI.Friends.FriendsViewsContainer extends MovieClip
{
	static public var FRIENDS_VIEW : String;
	static public var GUILD_VIEW : String;
	static public var IGNORED_VIEW : String;
	private var m_FriendsView : MovieClip;
	private var m_GuildView : MovieClip;
	private var m_IgnoredView : MovieClip;
	private var m_ViewsArray : Array;
	private var m_View : String;

	public function get view() : String;
	public function set view(value:String) : Void;


	public function FriendsViewsContainer();

	private function Init() : Void;

	public function ToggleRightClickMenu(value:Boolean) : Void;

}