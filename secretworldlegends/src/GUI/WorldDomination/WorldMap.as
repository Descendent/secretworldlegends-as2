import com.GameInterface.Game.BuffData;
import com.GameInterface.Game.Character;
import com.GameInterface.Spell;
import com.GameInterface.ProjectUtils;
import com.GameInterface.PvPMinigame.PvPMinigame;
import com.GameInterface.Tooltip.TooltipUtils;
import com.GameInterface.Tooltip.TooltipInterface;
import com.GameInterface.Utils;
import com.GameInterface.PendingReward;
import com.GameInterface.DistributedValue;
import com.Utils.Colors;
import com.Utils.Format;
import com.Utils.ID32;
import com.Utils.LDBFormat;
import mx.utils.Delegate;
import flash.geom.Rectangle;
import GUI.WorldDomination.Marker;
import GUI.WorldDomination.MarkerInfo;
import GUI.WorldDomination.SidePanel;
import GUI.WorldDomination.MiniMapReward;
intrinsic class GUI.WorldDomination.WorldMap extends MovieClip
{
	static private var EL_DORADO_INSTRUCTIONS : String;
	static private var STONEHENGE_INSTRUCTIONS : String;
	static private var FUSANG_PROJECTS_INSTRUCTIONS : String;
	static private var SHAMBALA_INSTRUCTIONS : String;
	static private var ACTIVE_BUFFS_LABEL : String;
	static private var BATTLE_RANK_TITLE : String;
	static private var BATTLE_XP_TITLE : String;
	static private var BATTLE_RANK_TOOLTIP_TITLE : String;
	static private var BATTLE_RANK_TOOLTIP_TEXT : String;
	static private var BUFF_SUPPORT_DRAGON : String;
	static private var BUFF_SUPPORT_TEMPLARS : String;
	static private var BUFF_SUPPORT_ILLUMINATI : String;
	static private var MARKER_INFO_SCALE : Number;
	static private var LINE_THICKNESS : Number;
	static private var LINE_COLOR : Number;
	static private var LINE_ALPHA : Number;
	static private var MAP_HEIGHT_PERCENTAGE : Number;
	static private var MAP_HEIGHT_ADDITIONAL_PERCENTAGE : Number;
	static private var BATTLE_RANK_BAR_TOTAL_SECTIONS : Number;
	static private var BATTLE_XP_PER_SECTION : Number;
	static private var BATTLE_RANK_ICON_INSTANCE : Number;
	static private var BATTLE_RANK_FULL_SECTION_COLOR : Number;
	static private var BATTLE_RANK_PARTIAL_SECTION_COLOR : Number;
	public var m_SidePanelWidth : Number;
	public var m_MarkerArray : Array;
	public var m_ElDoradoMarker : Marker;
	public var m_StonehengeMarker : Marker;
	public var m_FusangProjectsMarker : Marker;
	public var m_ShambalaMarker : Marker;
	private var m_MarkerInfoArray : Array;
	private var m_ElDoradoMarkerInfo : MovieClip;
	private var m_StonehengeMarkerInfo : MovieClip;
	private var m_FusangProjectsMarkerInfo : MovieClip;
	private var m_ShambalaMarkerInfo : MovieClip;
	private var m_Character : Character;
	private var m_MapBackground : MovieClip;
	private var m_Map : MovieClip;
	private var m_Grid : MovieClip;
	private var m_SineWave1 : MovieClip;
	private var m_SineWave2 : MovieClip;
	private var m_Instructions : MovieClip;
	private var m_CouncilLogo : MovieClip;
	private var m_BackgroundCouncilLogo : MovieClip;
	private var m_BorderShadow : MovieClip;
	private var m_BattleRankIconContainer : MovieClip;
	private var m_BattleRankIconTooltipContainer : MovieClip;
	private var m_BattleRankProgressBarContainer : MovieClip;
	private var m_BattleRankLabel : TextField;
	private var m_ActiveBuffsLabel : TextField;
	private var m_WorldDominationBuff : MovieClip;
	private var m_CouncilSupportBuff : MovieClip;
	private var m_CustodianBuff : MovieClip;
	private var m_PvPSpoilsIcon : MovieClip;
	public var m_NotificationThrottleIntervalId : Number;
	public var m_NotificationThrottleInterval : Number;
	private var m_ElDoradoInQueue : Boolean;
	private var m_ElDoradoInZone : Boolean;
	private var m_StonehengeInQueue : Boolean;
	private var m_StonehengeInZone : Boolean;
	private var m_FusangProjectsInQueue : Boolean;
	private var m_FusangProjectsInZone : Boolean;
	private var m_InstructionsAreVisible : Boolean;
	private var m_BuffSupport : String;

	public function WorldMap();

	private function onLoad() : Void;

	private function Init() : Void;

	private function onUnload() : Void;

	public function SlotPendingRewardsUpdated() : Void;

	public function AnimatePvPSpoils() : Void;

	private function OpenPvPSpoils() : Void;

	private function CreateWorldDominationBuffs() : Void;

	private function CreateBattleRank() : Void;

	private function UpdateBattleRank() : Void;

	public function Layout() : Void;

	private function CreateSineWave(target:MovieClip, y:Number, width:Number, offsetWidth:Number, height:Number, frequency:Number) : Void;

	public function SlotMarkerSelected(name:String) : Void;

	public function SlotMarkerInfoSelected(name:String) : Void;

	public function SlotInstructionsAreVisible(visible:Boolean) : Void;

	public function EnableMarkers(value:Boolean) : Void;

	private function DropdownSelected(name:String) : Void;

}