import gfx.core.UIComponent;
import GUI.ChallengeJournal.MissionEntry;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic class GUI.ChallengeJournal.ScrollPanel extends UIComponent
{
	private var m_Background : MovieClip;
	private var m_ListContent : MovieClip;
	private var m_Mask : MovieClip;
	private var m_ScrollBar : MovieClip;
	private var m_MissionEntries : Array;
	private var ENTRY_PADDING : Number;
	private var SCROLL_SPEED : Number;
	private var SCROLL_PADDING : Number;

	public function ScrollPanel();

	public function SetData(challengeData:Array) : Void;

	public function SetSize(newWidth:Number, newHeight:Number) : Void;

	private function CreateContent(challengeData:Array) : Void;

	private function RemoveContent() : Void;

	private function ContentSizeUpdated() : Void;

	private function CreateScrollBar() : Void;

	private function OnScrollbarUpdate(event:Object) : Void;

	private function onMouseWheel(delta:Number) : Void;

	private function UpdateScrollbarVisibility() : Void;

	private function SlotEntrySelected(index:Number, isExpanded:Boolean) : Void;

	private function CleanupAfterAnimation() : Void;

	public function MissionCompleted(missionID:Number) : Void;

	public function GoalUpdated(goalID:Number, solvedTimes:Number) : Void;

}