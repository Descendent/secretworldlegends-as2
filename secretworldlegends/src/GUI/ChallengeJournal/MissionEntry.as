import gfx.core.UIComponent;
import com.Utils.Signal;
import com.Utils.LDBFormat;
import com.Utils.Colors;
import mx.utils.Delegate;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import com.GameInterface.Quest;
import com.GameInterface.QuestTask;
import com.GameInterface.QuestGoal;
import com.GameInterface.Quests;
import com.GameInterface.DistributedValue;
import com.GameInterface.Utils;
import com.GameInterface.Inventory;
import com.GameInterface.Game.Character;
import GUI.Mission.MissionUtils;
import com.Components.ItemSlot;
import com.Utils.Text;
intrinsic class GUI.ChallengeJournal.MissionEntry extends UIComponent
{
	private var m_Background : MovieClip;
	private var m_Frame : MovieClip;
	private var m_HitArea : MovieClip;
	private var m_Progress : MovieClip;
	private var m_Name : TextField;
	private var m_CompleteText : TextField;
	private var m_ClaimButton : MovieClip;
	public var SignalEntrySelected : Signal;
	public var SignalSizeChanged : Signal;
	public var m_Index : Number;
	public var m_MissionInfo : Quest;
	public var m_Character : Character;
	public var m_IsExpanded : Boolean;
	public var m_CanHit : Boolean;
	public var m_Completed : Boolean;
	private var m_IntervalId : Number;
	public var m_Description : MovieClip;
	public var m_RewardsArray : Array;
	public var m_BonusRewardsArray : Array;
	public var m_MissionIcon : MovieClip;
	public var CONTRACT_HEIGHT : Object;
	public var EXPAND_HEIGHT : Object;
	public var REWARD_SIZE : Object;
	public var REWARD_PADDING : Object;
	public var INCOMPLETE_ALPHA : Object;
	public var COMPLETE_ALPHA : Object;
	public var BONUS_MARKS_ITEM : Object;

	public function MissionEntry();

	public function SetData(missionInfo:Quest, index:Number) : Void;

	public function UpdateProgress(overrideSolves:Number) : Void;

	private function HitAreaReleaseHandler() : Void;

	public function Expand() : Void;

	public function Contract() : Void;

	private function CleanupAfterAnimation() : Void;

	private function AddDescription() : Void;

	private function RemoveDescription() : Void;

	private function AddRewards() : Void;

	private function RemoveRewards() : Void;

	public function SetComplete(completed:Boolean);

	private function SlotMemberStatusUpdated() : Void;

	public function SetHittable(hittable:Boolean);

	private function CheckUnclaimedRewards() : Void;

	private function FixLayers() : Void;

	private function ClaimRewards() : Void;

	private function OpenShop() : Void;

}