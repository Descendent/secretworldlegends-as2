import com.Utils.LDBFormat;
import com.GameInterface.LoreNode;
import com.GameInterface.Lore;
import com.GameInterface.LoreBase;
import com.GameInterface.Game.Character;
import com.Utils.ID32;
import com.Utils.Signal;
import GUI.Achievement.ViewPanelBase;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic class GUI.Achievement.AchievementsPanelView extends ViewPanelBase
{
	static public var ACHIEVEMENT_EXPANDED : Number;
	static public var ACHIEVEMENT_CONTRACTED : Number;
	private var m_IsLeafNode : Boolean;
	private var m_Data : LoreNode;
	private var m_SelectedAchievement : MovieClip;
	private var m_TDB_LoreEntryLocked : String;
	private var m_DrawProgressMeters : Boolean;
	private var m_ProgressBackground : MovieClip;
	public var SignalClicked : Signal;

	public function AchievementsPanelView();

	public function SetData(data:LoreNode);

	private function configUI();

	private function init();

	public function GetYPos(id:Number);

	public function SetSize(width:Number, height:Number);

	private function DrawAchievementsEntries();

	private function SlotTagAdded(tagId:Number, character:ID32);

	private function SlotAchievementSizeChanged(id:Number, action:Number);

	private function SlotAchievementClicked(id:Number, action:Number, snap:Boolean);

	private function UpdateWindowContentSize(id:Number, snap:Boolean);

	private function EmitSignalClicked();

}