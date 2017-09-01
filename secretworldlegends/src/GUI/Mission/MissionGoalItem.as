import flash.filters.DropShadowFilter;
import mx.utils.Delegate;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import com.GameInterface.QuestGoal;
import gfx.core.UIComponent;
import com.GameInterface.Quests;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.GameInterface.Log;
import com.GameInterface.Game.Character;
intrinsic class GUI.Mission.MissionGoalItem extends UIComponent
{
	private var m_GoalNameWidth : Number;
	public var m_GoalNameAnim : MovieClip;
	public var m_GoalNumAnim : MovieClip;
	private var m_GoalProgressCursor : MovieClip;
	private var m_GoalCompleteCursor : MovieClip;
	private var m_GoalFailedCursor : MovieClip;
	private var m_Timer : MovieClip;
	private var m_IsAnimating : Boolean;
	private var m_IsComplete : Boolean;
	private var m_IsFailed : Boolean;
	private var m_GoalProgressAnimationActive : Boolean;
	private var m_SolvedTimes : Number;
	private var m_RepeatCount : Number;
	private var m_AlignRight : Boolean;
	public var m_DesiredY : Number;
	private var m_WillTimeoutSucceed : Boolean;
	private var m_GoalNumSwitchNumbersFrame : Number;
	private var m_GoalProgressEnableNumbersFrame : Number;
	private var m_GoalCompleteTweenNameFrame : Number;
	private var m_MaxNameWidth : Number;
	public var SignalGoalAnimationCompleted : Signal;
	public var SignalGoalAnimationStarted : Signal;
	public var SignalGoalCompleted : Signal;
	private var m_QueuedProgress : Array;
	public var m_UID : Number;
	public var m_GoalID : Number;
	private var m_Goal : QuestGoal;
	private var m_TierID : Number;

	public function MissionGoalItem();

	private function configUI();

	public function ForceGoalComplete(tierId:Number);

	public function WillSelfDetruct() : Boolean;

	public function SetData(goal:QuestGoal, willTimeoutSucceed:Boolean, uid:Number, tierId:Number);

	public function Draw();

	private function SlotGoalProgress(tierId:Number, goalId:Number, solvedTimes:Number, repeatCount:Number);

	private function SlotTierFailed(tierId:Number, showFeedback:Boolean);

	private function SlotGoalFinished(tierId:Number, goalId:Number);

	private function RemoveProgressCursor();

	private function GoalProgressFrameMonitor();

	private function GoalNumFrameMonitor();

	private function GoalFailedFrameMonitor();

	private function GoalCompleteFrameMonitor();

	private function GoalNameFrameMonitor();

	public function AlignText(alignRight:Boolean);

}