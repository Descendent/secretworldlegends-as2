import com.Utils.LDBFormat;
import GUI.Friends.Views.Row;
import mx.utils.Delegate;
import com.Components.RightClickItem;
import com.GameInterface.Game.Character;
import com.GameInterface.ProjectUtils;
import com.GameInterface.Friends;
import com.Utils.ID32;
import com.Utils.Faction;
import gfx.core.UIComponent;
import com.Components.MultiColumnListView;
intrinsic class GUI.Friends.Views.View extends UIComponent
{
	static public var FRIENDS_ITEM_TYPE : String;
	static public var CABAL_ITEM_TYPE : String;
	static public var IGNORED_ITEM_TYPE : String;
	static private var LEFT_CLICK_INDEX : Number;
	static private var RIGHT_CLICK_INDEX : Number;
	static private var RIGHT_CLICK_MOUSE_OFFSET : Number;
	static private var SCROLL_WHEEL_SPEED : Number;
	static private var ONLINE_COLOR : Number;
	static private var OFFLINE_COLOR : Number;
	static private var DRAGON : String;
	static private var TEMPLARS : String;
	static private var ILLUMINATI : String;
	private var m_Character : Character;
	private var m_List : MultiColumnListView;
	private var m_ScrollBar : MovieClip;
	private var m_RightClickMenu : MovieClip;
	private var m_AllowRightClick : Boolean;
	private var m_RowID : ID32;
	private var m_RowName : String;
	private var m_RowOnline : Boolean;
	private var m_MessageWindow : MovieClip;

	public function get allowRightClick() : Boolean;
	public function set allowRightClick(value:Boolean) : Void;


	private function View();

	private function configUI() : Void;

	private function CreateRightClickMenu() : Void;

	public function HideRightClickMenuAndMessagePrompt() : Void;

	private function HideRightClickMenu() : Void;

	private function onMousePress(buttonIndex:Number, clickCount:Number) : Void;

	private function RowSelected(buttonIndex:Number, itemID:ID32, playerName:String, playerIsOnline:Boolean, itemType:String) : Void;

	private function PositionRightClickMenu() : Void;

	private function SlotInviteToGroup() : Void;

	private function SlotRemoveFromGroup() : Void;

	private function SlotAddFriend() : Void;

	private function SlotRemoveFriend() : Void;

	private function SlotInviteToGuild() : Void;

	private function SlotRemoveFromGuild() : Void;

	private function SlotPromote() : Void;

	private function SlotDemote() : Void;

	private function SlotIgnore() : Void;

	private function SlotUnignore() : Void;

	private function SlotMeetUp() : Void;

	private function SlotSendMessage() : Void;

	private function GetFactionName(factionID:Number) : String;

}