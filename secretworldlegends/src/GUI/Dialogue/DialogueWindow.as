import com.GameInterface.DistributedValue;
import com.GameInterface.Game.Dynel;
import com.GameInterface.Game.Character;
import com.GameInterface.DialogueBase;
import com.GameInterface.ProjectUtils;
import com.GameInterface.Utils;
import com.GameInterface.Lore;
import gfx.controls.Button;
import gfx.core.UIComponent;
import com.Utils.ID32;
import flash.geom.Point;
import com.Utils.LDBFormat;
import com.GameInterface.MathLib.Vector3;
import com.GameInterface.QuestGiver;
import com.GameInterface.Quests;
import com.GameInterface.Quest;
import GUI.Mission.MissionSignals;
import mx.transitions.easing.*;
import mx.utils.Delegate;
import com.Utils.Colors;
import com.Utils.Signal;
import com.Utils.Text;
import flash.filters.DropShadowFilter;
import com.Components.ItemSlot;
intrinsic class GUI.Dialogue.DialogueWindow extends UIComponent
{
	private var MISSION_STATE_IN_PROGRESS : Number;
	private var MISSION_STATE_PAUSED : Number;
	private var MISSION_STATE_COOLDOWN : Number;
	private var MISSION_STATE_IDLE : Number;
	private var MISSION_STATE_LOCKED : Number;
	private var MISSION_STATE_COMPLETE_REPETABLE : Number;
	private var MISSION_STATE_DLC : Number;
	private var MOUSE_ACTION_OVER : Number;
	private var MOUSE_ACTION_OUT : Number;
	private var MOUSE_ACTION_DOWN : Number;
	private var ACTION_OPEN : Number;
	private var ACTION_DISABLED : Number;
	private var ACTION_ENABLE : Number;
	private var ACTION_DISABLE : Number;
	private var ACTION_OPEN_AND_ENABLE : Number;
	private var NM_DIFFICULTY : Number;
	private var m_DynelName : MovieClip;
	private var m_MissionClip : MovieClip;
	private var m_MissionList : Array;
	private var m_DialogueClip : MovieClip;
	private var m_QuestionClips : Array;
	private var m_Questions : Array;
	private var m_Depths : Array;
	private var m_DynelID : ID32;
	private var m_LockToScreen : Boolean;
	private var m_ResolutionScaleMonitor : DistributedValue;
	private var m_Dynel : Dynel;
	private var m_Character : Character;
	private var m_QuestGiver : QuestGiver;
	private var m_IsDialogueStarted : Boolean;
	private var m_IsDialogueOpen : Boolean;
	private var m_HasReceivedQuestions : Boolean;
	private var m_CurrentDialoguePlaying : Number;
	private var m_IsOpeningInProgress : Boolean;
	private var m_OpenTimer : Number;
	private var m_WasOpen : Boolean;
	private var m_AnimationDuration : Number;
	private var m_TweenDuration : Number;
	private var m_ShowNames : Boolean;
	private var m_OpenMissionID : Number;
	private var m_IconSizes : Number;
	private var m_IconSize : Number;
	private var m_IconTotal : Number;
	private var m_MaxScale : Number;
	private var m_TotalSelectorHeight : Number;
	private var m_MinAlpha : Number;
	private var m_MaxAlpha : Number;
	private var m_NormalScale : Number;
	private var m_MinScale : Number;
	private var m_ClipYAnchor : Number;
	private var m_MaxSizedIconX : Number;
	private var m_MissionThrottleIntervalId : Number;
	private var m_MissionThrottleInterval : Number;
	private var m_EnableInterval : Number;
	private var m_PowerRank : Number;
	private var m_Level : Number;
	private var m_Shadow : DropShadowFilter;
	private var m_HeadlineTextFormat : TextFormat;
	private var m_ActionTextFormat : TextFormat;
	private var m_TimerTextFormat : TextFormat;
	private var m_CurrentDialogueMask : MovieClip;
	private var m_LoadingSymbol : MovieClip;
	private var m_ShowWindow : Boolean;
	private var m_IsMember : Boolean;
	private var m_EscapeNode : com.GameInterface.EscapeStackNode;

	public function DialogueWindow();

	public function configUI();

	public function onUnload();

	private function onMousePress(buttonIndex:Number, clickNumber:Number);

	public function SlotStatUpdated(statId:Number);

	public function SlotMemberStatusUpdated(member:Boolean);

	public function SlotVoiceStarted(voiceHandle:Number);

	public function SlotVoiceFinished(voiceHandle:Number);

	public function SlotVoiceAborted(voiceHandle:Number);

	public function GetVoiceEntry(voiceHandle:Number);

	public function onEnterFrame() : Void;

	public function LockToScreen(lock:Boolean);

	public function IsLocked() : Boolean;

	public function EscapePressed();

	public function SlotEnteredReticuleMode();

	public function OpenFirstIncompleteMission();

	private function UpdateWindow();

	private function SetMissionThrottle();

	private function AnimateUnusedMissions();

	private function ToggleDialogue();

	public function CheckOpenDialogue();

	public function OpenDialogue();

	public function CloseDialogue(snap:Boolean);

	private function CloseDialogueContent(snap:Boolean) : Void;

	public function CleanDialogue();

	public function EndConversation();

	public function SetQuestions(questions:Array);

	public function SetTopicDepths(depths:Array);

	private function FillQuestions();

	private function SlotQuestionChosen(index:Number, topicDepth:Number);

	private function ClearQuestions();

	public function SlotMissionCompleted(missionID:Number);

	public function SlotQuestAvailable(idQuestGiver:Number, questName:String, mainQuestType:Number, unused:Number, questGiverType:Number, questGiverInstance:Number, tier:Number) : Void;

	public function SlotTaskAdded(missionID:Number);

	public function SlotQuestCooldownChanged(cooldownEvent:Number, cooldownID:Number);

	public function SlotTierRemoved(missionID:Number);

	public function SlotQuestEvent(missionID:Number, questEventID:Number);

	private function SlotQuestChanged();

	private function SlotTagAdded(tagId:Number, character:ID32);

	private function SlotTagsReceived();

	private function Clear();

	private function Draw();

	private function CheckHide();

	public function RedrawMissions();

	private function DrawDialogue();

	public function DrawMissions();

	public function QuestCompare(a:Quest, b:Quest) : Number;

	private function ClearMissions();

	private function GetMissionState(quest:Quest);

	private function IsMissionValid(id:Number) : Boolean;

	private function IsMissionCompleted(id:Number) : Boolean;

	private function CreateSingleSelector(quest:com.GameInterface.Quest, currentIndex:Number) : MovieClip;

	public function SlotMissionIconClicked(event:Object);

	private function CooldownFrameHandler();

	private function AddIconModifier(state:Number, parent:MovieClip);

	private function GetActionText(state:Number) : String;

	private function MoveButtonPlayhead(button:MovieClip, action:Number, isSwitchNecessary:Boolean, state:Number, questID:Number, missionType:Number);

	public function IsMissionOpen(missionID:Number);

	private function CloseAllMissionClips(snap:Boolean);

	public function AnimateSelector(movieclipIcon:MovieClip, snap:Boolean, callee:String) : Void;

	private function ToggleOpeningProgress();

	private function CooldownLayout(selector:MovieClip, add:Boolean);

	private function Animate(movieClip:MovieClip, y:Number, snap:Boolean) : Void;

}