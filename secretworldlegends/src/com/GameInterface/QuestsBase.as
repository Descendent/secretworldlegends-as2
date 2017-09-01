import com.GameInterface.Quest;
import com.GameInterface.QuestGiver;
import com.Utils.ID32;
import com.Utils.Signal;
intrinsic class com.GameInterface.QuestsBase
{
	static public var SignalQuestAvailable : Signal;
	static public var SignalGoalProgress : Signal;
	static public var SignalGoalPhaseUpdated : Signal;
	static public var SignalGoalFinished : Signal;
	static public var SignalQuestEvent : Signal;
	static public var SignalTaskAdded : Signal;
	static public var SignalMissionRemoved : Object;
	static public var SignalPlayerTiersChanged : Object;
	static public var SignalQuestChanged : Object;
	static public var SignalTierCompleted : Object;
	static public var SignalTierFailed : Object;
	static public var SignalMissionCompleted : Object;
	static public var SignalMissionFailed : Object;
	static public var SignalCompletedQuestsChanged : Object;
	static public var SignalQuestCooldownChanged : Object;
	static public var SignalQuestGiverEnterVicinity : Signal;
	static public var SignalQuestGiverLeaveVicinity : Signal;
	static public var SignalGoalTimeLimitChanged : Signal;
	static public var SignalQuestRewardMakeChoice : Signal;
	static public var SignalQuestRewardInventorySpace : Signal;
	static public var SignalQuestRewardAcceptAcknowledged : Signal;
	static public var SignalSendMissionReport : Signal;
	static public var SignalOpenMissionWindow : Signal;

	static public function DeleteCurrentQuestOfMainQuest(mainQuestTemplateID:Number) : Void;

	static public function AcceptQuestFromQuestgiver(mainQuestTemplateID:Number, questGiverID:ID32) : Void;

	static public function GetQuest(questID:Number, includeGoals:Boolean, isFromQuestGiver:Boolean) : Quest;

	static public function GetQuestGiver(questGiverID:ID32, includeQuests:Boolean) : QuestGiver;

	static public function GetQuestByQuestGiverID(questGiverID:Number) : Quest;

	static public function GetAllAbandonedQuests() : Array;

	static public function GetMainQuestIDByQuestID(questID:Number) : Number;

	static public function GetMainQuestLevel(questID:Number) : Number;

	static public function GetAllActiveQuests() : Array;

	static public function GetAllCompletedQuests() : Array;

	static public function GetAllCompletedQuestsByRegion() : Object;

	static public function GetAllQuestsOnCooldown() : Array;

	static public function GetAllActiveChallenges() : Array;

	static public function GetAllCompletedChallenges() : Array;

	static public function IsMissionActive(missionTemplateId:Number) : Boolean;

	static public function IsMissionPaused(missionTemplateId:Number) : Boolean;

	static public function IsChallengeMission(missionTemplateId:Number) : Boolean;

	static public function ShareQuest(questID:Number) : Void;

	static public function ShareQuestUnderMouse(questId:Number) : Void;

	static public function PauseQuest(questId:Number) : Void;

	static public function ShowQuestOnMap(questID:Number) : Void;

	static public function AcceptQuestReward(taskInstance:Number, index:Number) : Void;

	static public function IsSwitchNecessary(questID:Number) : Boolean;

	static public function ShowMedia(rdbType:Number, rdbID:Number) : Void;

	static public function CloseMedia(rdbID:Number) : Void;

	static public function ShowQuestTaskMedia(questTaskID:Number) : Void;

	static public function GetSolvedTextForQuest(mainQuestID:Number, questID:Number);

	static public function MissionReportWindowOpened() : Void;

	static public function GetAllRewards() : Array;

	static public function GetAllChallengeRewards() : Array;

	static public function AnyUnsentReports() : Boolean;

}