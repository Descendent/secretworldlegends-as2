import com.Components.MultiColumnList.ColumnData;
import com.Components.MultiColumnList.MCLItemDefault;
import com.Components.MultiColumnList.MCLItemValueData;
import com.Components.MultiColumnListView;
import com.Components.WindowComponentContent;
import com.Components.RightClickItem;
import com.GameInterface.CharacterLFG;
import com.GameInterface.Friends;
import com.GameInterface.LookingForGroup;
import com.GameInterface.Playfield;
import com.GameInterface.Lore;
import com.GameInterface.LoreNode;
import com.GameInterface.Game.Character;
import com.GameInterface.Game.TeamInterface;
import com.GameInterface.Game.Team;
import com.GameInterface.Game.Raid;
import com.GameInterface.Utils;
import com.Utils.Archive;
import com.Utils.ID32;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import GUI.GroupSearch.GroupSearchPromptWindow;
import GUI.GroupSearch.GroupSearchFiltersWindow;
import gfx.controls.Button;
import gfx.controls.ScrollBar;
intrinsic class GUI.GroupSearch.GroupSearchContent extends WindowComponentContent
{
	static private var ARCHIVE_CONTENT_WIDTH : String;
	static private var ARCHIVE_CONTENT_HEIGHT : String;
	static private var ARCHIVE_COLUMN_PLAYER_WIDTH : String;
	static private var ARCHIVE_COLUMN_ROLE_WIDTH : String;
	static private var ARCHIVE_COLUMN_ACTIVITY_WIDTH : String;
	static private var ARCHIVE_COLUMN_LOCATION_WIDTH : String;
	static private var ARCHIVE_COLUMN_DIFFICULTY_WIDTH : String;
	static private var ARCHIVE_COLUMN_COMMENT_WIDTH : String;
	static private var ARCHIVE_SELECTED_ROLES : String;
	static private var ARCHIVE_SELECTED_ACTIVITY : String;
	static private var ARCHIVE_SELECTED_LOCATION : String;
	static private var ARCHIVE_SELECTED_DIFFICULTY : String;
	static private var ARCHIVE_COMMENT : String;
	static private var ARCHIVE_SELECTED_FILTERS : String;
	static private var ARCHIVE_SELECTED_DIFFICULTY_FILTERS : String;
	static private var VIEW : String;
	static private var SIGN_UP : String;
	static private var LEAVE : String;
	static private var FILTERS : String;
	static private var REFRESH : String;
	static private var GM_FIFO_MESSAGE : String;
	static private var SELECTED_FILTERS : String;
	static private var NO_FILTERS : String;
	static private var COLUMN_PLAYER_TITLE : String;
	static private var COLUMN_ROLE_TITLE : String;
	static private var COLUMN_ACTIVITY_TITLE : String;
	static private var COLUMN_LOCATION_TITLE : String;
	static private var COLUMN_DIFFICULTY_TITLE : String;
	static private var COLUMN_COMMENT_TITLE : String;
	static private var QUEUE_INFORMATION : String;
	static private var INVITE_TO_GROUP : String;
	static private var SEND_A_MESSAGE : String;
	static private var VIEW_ENTRY : String;
	static private var MEET_UP : String;
	static private var COLUMN_NAME_ID : Number;
	static private var COLUMN_ROLE_ID : Number;
	static private var COLUMN_ACTIVITY_ID : Number;
	static private var COLUMN_LOCATION_ID : Number;
	static private var COLUMN_DIFFICULTY_ID : Number;
	static private var COLUMN_COMMENT_ID : Number;
	static private var LEFT_CLICK_INDEX : Number;
	static private var RIGHT_CLICK_INDEX : Number;
	static private var RIGHT_CLICK_MOUSE_OFFSET : Number;
	private var m_LFGInterface : LookingForGroup;
	private var m_RefreshEnableInterval : Number;
	private var m_TopDivider : MovieClip;
	private var m_ListTitleHeader : MovieClip;
	private var m_List : MultiColumnListView;
	private var m_ListScrollBar : ScrollBar;
	private var m_GroupArray : Array;
	private var m_QueueInfo : MovieClip;
	private var m_SignUpLeaveButton : Button;
	private var m_FiltersButton : Button;
	private var m_RefreshButton : Button;
	private var m_PromptWindow : MovieClip;
	private var m_FiltersWindow : MovieClip;
	private var m_RightClickMenu : MovieClip;
	private var m_Character : Character;
	private var m_SelectedCharacterName : String;
	private var m_SelectedCharacterID : ID32;
	private var m_SelectedIndex : Number;
	private var m_MessageWindow : MovieClip;
	private var m_PersistentSelectedRoles : Array;
	private var m_PersistentFilters : Array;
	private var m_PersistentDifficultyFilters : Array;
	private var m_PersistentActivity : Number;
	private var m_PersistentLocation : Number;
	private var m_PersistentDifficulty : Number;
	private var m_PersistentComment : String;
	private var m_PersistentWidth : Number;
	private var m_PersistentHeight : Number;
	private var m_Team : Team;
	private var m_Raid : Raid;

	public function GroupSearchContent();

	private function configUI() : Void;

	public function SetSize(newWidth:Number, newHeight:Number);

	private function SlotFiltersChanged(changed:Boolean, filter:Array, difficultyFilter:Array);

	private function SlotPromptResponse(mode:String, selectedRolesArray:Array, selectedActivity:Number, selectedLocation:Number, selectedDifficulty:Number, comment:String, maxTeamSize:Number, signOut:Boolean) : Void;

	private function SetupButton(target:Button, toggle:Boolean, label:String, selected:Boolean) : Void;

	private function ButtonSelectHandler(event:Object) : Void;

	private function EnableRefresh() : Void;

	private function SlotClientLeftLFG() : Void;

	private function SlotClientJoinedLFG() : Void;

	private function SignOut() : Void;

	private function UpdateListHeaderTitleAndSearch() : Void;

	private function GetFilterString() : String;

	private function UpdateQueueInformation() : Void;

	private function GetCharacterActivityString(characterLFG:CharacterLFG);

	private function GetActivityString(signedActivityNum:Number);

	private function GetCharacterDifficultyString(characterLFG:CharacterLFG);

	private function GetDifficultyString(signedDifficultyNum:Number);

	private function SlotJoinTeam(team:Team) : Void;

	private function SlotLeftTeam() : Void;

	private function SlotJoinRaid(raid:Raid) : Void;

	private function SlotLeftRaid() : Void;

	private function GetTeamMemberCount() : Number;

	private function SlotUpdateList() : Void;

	private function AddCharacterToList(characterLFG:CharacterLFG) : Void;

	private function ToggleDisableControls(disable:Boolean) : Void;

	private function CreateRightClickMenu() : Void;

	private function HideRightClickMenu() : Void;

	private function SlotItemClicked(index:Number, buttonIndex:Number) : Void;

	private function SlotMovieClipAdded(itemIndex:Number, columnId:Number, movieClip:MovieClip) : Void;

	private function RowSelected(buttonIndex:Number, characterFullName:String, characterName:String, characterID:ID32) : Void;

	private function PositionRightClickMenu() : Void;

	private function onMousePress(buttonIndex:Number, clickCount:Number) : Void;

	private function InviteToGroupEventHandler() : Void;

	private function SendMessageEventHandler() : Void;

	private function MeetUpEventHandler() : Void;

	private function ViewEntryEventHandler() : Void;

	public function SetContentPersistence(persistence:Archive) : Void;

	public function GetContentPersistence() : Archive;

}