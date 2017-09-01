import com.Components.WindowComponentContent;
import com.Utils.LDBFormat;
import gfx.controls.ButtonBar;
import GUI.Friends.FriendsViewsContainer;
import GUI.Friends.Views.PromptWindow;
import com.GameInterface.Friends;
import com.GameInterface.DistributedValue;
intrinsic class GUI.Friends.FriendsContent extends WindowComponentContent
{
	static public var ADD_FRIEND : String;
	static public var CABAL_MANAGEMENT : String;
	static public var INVITE_TO_CABAL : String;
	static public var IGNORE_PLAYER : String;
	static private var GENERAL_GAP : Number;
	static private var RESULT_CONTROLS_Y : Number;
	static private var FRIENDS : String;
	static private var GUILD : String;
	static private var IGNORED : String;
	private var m_ButtonBar : ButtonBar;
	private var m_TabButtonArray : Array;
	private var m_ViewsContainer : MovieClip;
	private var m_AddButton : MovieClip;
	private var m_CabalManagementButton : MovieClip;
	private var m_PromptWindow : MovieClip;

	public function FriendsContent();

	private function configUI() : Void;

	private function RemoveFocus(event:Object) : Void;

	private function SetSelectedContent(event:Object) : Void;

	private function ViewResponseButtonClickEventHandler() : Void;

	private function SlotPromptResponse() : Void;

}