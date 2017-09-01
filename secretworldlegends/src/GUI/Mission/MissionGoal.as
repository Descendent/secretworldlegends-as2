import flash.filters.GradientBevelFilter;
import gfx.core.UIComponent;
import com.GameInterface.Quest;
import com.GameInterface.QuestTask;
import com.GameInterface.Quests;
import com.GameInterface.QuestGoal;
import GUI.Mission.MissionGoalItem;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import mx.utils.Delegate;
import com.Utils.Signal;
import com.GameInterface.Log;
intrinsic class GUI.Mission.MissionGoal extends UIComponent
{
	private var m_Quest : Quest;
	private var m_MissionId : Number;
	private var m_GoalPhase : Number;
	private var m_AlignRight : Boolean;
	private var m_GoalList : Array;
	private var m_GoalsAnimating : Array;
	private var m_CurrentlyDisplayedGoalIDs : Array;
	public var m_GoalTrackers : Array;
	public var SignalAnimationsDone : Signal;

	public function MissionGoal();

	public function SetData(missionId:Number);

	public function Draw();

	private function GoalCreationAllowed(goal:QuestGoal) : Boolean;

	public function IsAnimationsPending() : Boolean;

	private function SlotGoalPhaseUpdated(missionId:Number) : Void;

	private function SlotGoalTimeLimitChanged(tierId:Number) : Void;

	public function TaskAdded();

	private function SlotGoalAnimationCompleted(uid:Number);

	private function SlotGoalAnimationStarted(uid:Number);

	private function SlotRemoveGoal(uid:Number);

	public function AlignText(alignRight:Boolean);

}