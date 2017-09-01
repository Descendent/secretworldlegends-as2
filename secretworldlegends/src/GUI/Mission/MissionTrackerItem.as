import gfx.core.UIComponent;
import com.GameInterface.Quest;
import com.GameInterface.QuestTask;
import com.GameInterface.Quests;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import GUI.Mission.MissionGoal;
import com.GameInterface.Log;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import com.GameInterface.DistributedValue;
intrinsic class GUI.Mission.MissionTrackerItem extends UIComponent
{
	private var m_TierName : TextField;
	private var m_TierNumbers : TextField;
	private var m_MissionTimer : MovieClip;
	private var m_BonusBG : MovieClip;
	private var m_Quest : Quest;
	private var m_QuestId : Number;
	private var m_EnableProgress : Boolean;
	private var m_Goals : MissionGoal;
	private var m_IsMissionJournalActive : DistributedValue;
	public var SignalSetAsMainMission : Signal;
	public var SignalDoubleClicked : Signal;
	public var SignalAnimationsDone : Signal;
	static private var NM_DIFFICULTY : Object;

	public function MissionTrackerItem();

	private function configUI();

	public function GetMissionId() : Number;

	public function ShowProgress(show:Boolean);

	public function SetData(quest:Quest);

	public function SetGoalVisibility(visible:Boolean, snap:Boolean);

	public function Draw();

	public function DrawTierInfo();

	public function IsAnimationPending(attachListener:Boolean);

	public function TaskAdded(tierId:Number);

	private function DispatchAnimationDone();

	private function IconDoubleClickHandler(event:Object, controllerIdx:Number);

	private function IconClickHandler(event:Object);

	public function AlignText(alignRight:Boolean);

}