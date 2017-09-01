import mx.controls.Label;
import mx.utils.Delegate;
import com.GameInterface.MathLib.Vector3;
import com.GameInterface.Game.Character;
import com.GameInterface.Quests;
import com.GameInterface.Quest;
import com.GameInterface.QuestTask;
import com.GameInterface.QuestGoal;
import com.GameInterface.DistributedValue;
import com.GameInterface.Log;
import com.GameInterface.Utils;
import com.Components.WindowComponent;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import com.Utils.Archive;
import com.Utils.Colors;
import com.Utils.LDBFormat;
import com.Utils.Format;
import com.Utils.Text;
import flash.geom.Point;
import gfx.core.UIComponent;
import gfx.controls.Button;
import com.Components.ItemSlot;
import GUI.Mission.MissionUtils;
intrinsic class GUI.MissionJournal.JournalWindow extends com.Components.WindowComponentContent
{
	public var m_ResolutionScaleMonitor : DistributedValue;
	public var m_Missions : Array;
	public var m_ExpandedTiersArray : Array;
	public var m_Level : Number;
	public var m_Character : Character;
	public var m_IsMember : Boolean;
	public var m_ContentSize : Point;
	public var m_MissionDescFormat : TextFormat;
	private var m_HeaderNameFormat : TextFormat;
	public var m_HeaderSubTextFormat : TextFormat;
	public var m_HeaderTimerTextFormat : TextFormat;
	public var m_GoalFormat : TextFormat;
	public var m_CashFormat : TextFormat;
	public var m_DropDownFormat : TextFormat;
	public var m_TooltipTextFormat : TextFormat;
	public var m_DebugFormat : TextFormat;
	public var m_ExpandedMissionID : Number;
	public var m_TooltipController : Object;
	public var m_TooltipTimeoutId : Number;
	public var m_CinematicAudioHandle : Number;
	public var m_DeltaMultiplier : Number;
	public var m_IsResizing : Boolean;
	public var m_NeedRedraw : Boolean;
	public var m_DropdownHeight : Number;
	public var m_ScrollBarArchivedPosition : Number;
	private var m_TDB_Tier : Object;
	private var m_TDB_Tier_MixedCase : Object;
	private var m_TDB_AllRegions : Object;
	private var m_TDB_CurrentMisionons : Object;
	private var m_TDB_FinishedMissions : Object;
	private var m_TDB_AbandonedMissions : Object;
	private var m_TDB_PlayAudio : Object;
	private var m_TDB_PlayVideo : Object;
	private var m_TDB_ShowImage : Object;
	public var m_ScrollBar : MovieClip;
	public var m_Mask : MovieClip;
	public var m_Content : MovieClip;
	public var m_Menu : MovieClip;
	public var m_Background : MovieClip;
	public var m_DeleteMissionButton : MovieClip;
	public var m_ShareButton : MovieClip;
	public var m_LocationButton : MovieClip;
	public var m_PauseMissionButton : MovieClip;
	public var m_MissionDropdown : MovieClip;
	public var m_CloseButton : MovieClip;
	public var m_JournalTypeIndexSelected : Number;
	public var m_JournalTypeCurrentMissionIndex : Number;
	public var m_JournalTypeFinishedMissionIndex : Number;
	public var m_JournalTypeAbandonedMissionIndex : Number;
	public var m_PlayfieldDropdown : MovieClip;
	public var m_PlayfieldNames : Array;
	public var m_PlayfieldIndexSelected : Number;
	public var m_LastPlayfieldNameSelected : Object;
	public var NM_DIFFICULTY : Number;

	public function JournalWindow();

	public function SetModuleData(archive:Archive);

	public function GetModuleData() : Archive;

	private function onEnterFrame();

	private function SetRedrawFlag();

	public function SetSize(width:Number, height:Number);

	public function GetSize() : Point;

	public function configUI();

	private function SlotMemberStatusUpdated(member:Boolean);

	private function SlotStatUpdated(statId:Number);

	private function CreateInitialWindow();

	private function OnJournalTypeSelection(event:Object);

	private function OnPlayfieldSelection(event:Object);

	private function SetSelectedPlayfieldIndex(index:Number) : Void;

	private function AreRewardsVisible() : Boolean;

	private function AttachDropdown(name:String, parent:MovieClip, contentArray:Array, selectedIndex:Number) : MovieClip;

	private function FindMissionByID(id:Number) : Object;

	private function FindCurrentTier(missionId:Number) : Object;

	/**
     * Create the header for each Mission Tier with buttons and methods for expanding
     * @param	parent:MovieClip - reference to the journal window
     * @param	mission:com.GameInterface.Quest) - the mission object for this item
     * @return MovieClip - reference to the clip created in this method
     */
	private function CreateSingleMissionClip(parent:MovieClip, mission:com.GameInterface.Quest) : MovieClip;

	private function SetupButton(target:MovieClip, positionX:Number, mission:com.GameInterface.Quest, clickHandler:String) : Void;

	private function CreateOpenMission(parent:MovieClip, mission:com.GameInterface.Quest) : Void;

	private function CreateRewards(parent:Object, mission:Object) : Void;

	private function CreateSingleTierClip(parent:MovieClip, mission:com.GameInterface.Quest, index:Number) : MovieClip;

	private function CreateSingleGoal(parent:MovieClip, goal:com.GameInterface.QuestGoal) : MovieClip;

	private function UpdateMissionDropdownBoxes();

	private function Redraw() : Void;

	private function CompareMissions(mission1:Object, mission2:Object);

	private function MediaButtonHandler(event:Object) : Void;

	private function CloseWindowHandler() : Void;

	private function TrashcanHandler(event:Object);

	private function PauseHandler(event:Object);

	private function ShareHandler(event:Object);

	private function CinematicAudioHandler(event:Object);

	private function LocationHandler(event:Object);

	private function OnScrollbarUpdate(event:Object) : Void;

	private function SetExpandedMissionID(id:Number);

	private function TierNameClickHandler(event:Object);

	private function ToggleExpandMissionEventHandler(evt:Object) : Void;

	private function ToggleExpandMission(id:Number) : Void;

	private function ExpandCurrentTier(missionID:Number) : Void;

	private function SlotFocusMission(missionId:Number);

	private function onMouseWheel(delta:Number);

	private function IsTierExpanded(item:Object) : Boolean;

	private function SearchArray(target:Array, item:Object) : Number;

}