import com.Components.WindowComponentContent;
import com.Components.FCButton;
import com.GameInterface.GroupFinder;
import com.GameInterface.DistributedValue;
import com.GameInterface.Game.TeamInterface;
import com.GameInterface.Game.Team;
import com.GameInterface.Game.Raid;
import com.GameInterface.Game.Character;
import com.GameInterface.Tooltip.TooltipManager;
import com.GameInterface.Tooltip.TooltipData;
import com.GameInterface.Tooltip.TooltipInterface;
import com.GameInterface.Playfield;
import com.GameInterface.PvPMinigame.PvPMinigame;
import com.GameInterface.GUIModuleIF;
import com.Utils.LDBFormat;
import com.Utils.Archive;
import gfx.controls.Button;
import gfx.controls.CheckBox;
import mx.utils.Delegate;
import GUI.GroupFinder.GroupFinderScrollPanel;
intrinsic class GUI.GroupFinder.GroupFinderContent extends WindowComponentContent
{
	private var m_Header : MovieClip;
	private var m_AvailableQueuesLabel : TextField;
	private var m_SelectRolesLabel : TextField;
	private var m_TankRole : FCButton;
	private var m_DPSRole : FCButton;
	private var m_HealRole : FCButton;
	private var m_SignUpLeaveButton : Button;
	private var m_ScrollPanel : GroupFinderScrollPanel;
	private var m_SelectPanelBG : MovieClip;
	private var m_SelectedDescription : TextField;
	private var m_SelectedTitle : TextField;
	private var m_BonusSymbol : MovieClip;
	private var m_GoodLoot : MovieClip;
	private var m_SkipQueueLabel : TextField;
	private var m_SkipQueueCheckBox : CheckBox;
	private var m_RoleButtonArray : Array;
	private var m_SelectedMedia : MovieClip;
	private var m_Team : Team;
	private var m_Raid : Raid;
	private var m_ReadyPromptMonitor : DistributedValue;
	private var m_TooltipText : String;
	private var m_Tooltip : TooltipInterface;
	private var m_TooltipTimeout : Number;
	private var m_IsQueuedForPvP : Boolean;
	private var m_SelectedQueue : Number;
	private var m_RefreshIntervalId : Number;
	static private var TDB_AVAILABLE_QUEUES : String;
	static private var TDB_QUEUE_STATUS : String;
	static private var TDB_NOT_QUEUED : String;
	static private var TDB_JOINING_QUEUE : String;
	static private var TDB_QUEUED : String;
	static private var TDB_ACTIVE : String;
	static private var TDB_ERROR_ALREADY_QUEUED : String;
	static private var TDB_ERROR_PENDING_QUEUE : String;
	static private var TDB_ERROR_NOT_LEADER : String;
	static private var TDB_PREFERRED_ROLES : String;
	static private var TDB_SKIP_QUEUE : String;
	static private var TANK_BUTTON_TOOLTIP : String;
	static private var DPS_BUTTON_TOOLTIP : String;
	static private var HEALER_BUTTON_TOOLTIP : String;
	static private var SIGN_UP : String;
	static private var LEAVE : String;
	static private var ROLE_PADDING : Number;
	static private var SELECT_PANEL_PADDING : Number;
	static private var REFRESH_INTERVAL : Number;
	static private var SHAMBALA_ID : Number;
	static private var NYR_LFG_LOCK : Number;
	static private var NYR_ELITE_LOCK : Number;

	public function GroupFinderContent();

	private function configUI() : Void;

	private function SetLabels() : Void;

	private function Layout() : Void;

	private function Refresh() : Void;

	private function UpdateHeaderText() : Void;

	private function UpdateSignUpLeaveButtonText() : Void;

	private function UpdateSignUpLeaveButton() : Void;

	private function UpdateFocusedEntry(id:Number, image:Number, isRandom:Boolean, neededRole:Number) : Void;

	private function UpdateBonusLoot(queueId);

	private function SlotNeededRolesUpdated(neededRoles:Array);

	private function UpdateNeededRole(queueId:Number, neededRole:Number);

	private function LoadImage(container:MovieClip, mediaId:Number);

	private function onLoadInit(target:MovieClip);

	private function SlotEntryFocused(id:Number, image:Number, isRandom:Boolean, neededRole:Number) : Void;

	private function SlotEntryToggled() : Void;

	private function SlotClientJoinedTeam(team:Team) : Void;

	private function SlotClientLeftTeam() : Void;

	private function SlotClientJoinedRaid(raid:Raid) : Void;

	private function SlotClientLeftRaid() : Void;

	private function SlotLeaderChanged() : Void;

	private function SkipQueueCheckboxClicked() : Void;

	private function SlotYouAreInMatchMaking(mapID:Number, joinAsGroup:Boolean);

	private function SlotNoLongerInMatchMaking(playfieldId:Number);

	private function SlotClientJoinedGroupFinder() : Void;

	private function SlotClientLeftGroupFinder() : Void;

	private function SlotClientStartedGroupFinderActivity() : Void;

	private function SlotReadyPromptStatusChanged() : Void;

	private function RoleButtonClickHandler() : Void;

	private function SignUpLeaveClickHandler() : Void;

	public function SetRoles(rolesArray:Array) : Void;

	public function BuildArchive() : Archive;

	public function Close() : Void;

	private function GoodLootRollOverHandler() : Void;

	private function GoodLootRollOutHandler() : Void;

	private function BonusSymbolRollOverHandler() : Void;

	private function BonusSymbolRollOutHandler() : Void;

	private function StartTooltipTimeout();

	private function StopTooltipTimout();

	private function OpenTooltip();

	public function CloseTooltip();

	private function onUnload();

}