import com.Utils.LDBFormat;
import com.GameInterface.LoreNode;
import com.GameInterface.Lore;
import com.GameInterface.Game.Character;
import com.Utils.ID32;
import mx.utils.Delegate;
import com.GameInterface.DistributedValue;
import com.Utils.Signal;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import gfx.core.UIComponent;
import com.GameInterface.Tooltip.*;
intrinsic class GUI.Achievement.AchievementItem extends UIComponent
{
	static public var TYPE_PROGRESS : Number;
	static public var TYPE_CHILDREN : Number;
	static public var TYPE_SINGLE : Number;
	private var m_AchievementType : Number;
	private var m_Data : LoreNode;
	private var m_Title : TextField;
	private var m_Points : TextField;
	private var m_DescriptionText : TextField;
	private var m_ChildWidth : Number;
	private var m_TextPos : Number;
	private var m_ItemHeight : Number;
	private var m_ItemWidth : Number;
	private var m_AchievementProgressText : TextField;
	private var m_AchievementProgressBar : MovieClip;
	private var m_AchievementProgressBarBackground : MovieClip;
	private var m_CompleteCheck : MovieClip;
	private var m_RewardIcon : MovieClip;
	private var m_RewardNameArray : Array;
	private var m_Frame : MovieClip;
	private var m_Background : MovieClip;
	private var m_Icon : MovieClip;
	private var m_ExpandButton : MovieClip;
	private var m_SubAchievementsClip : MovieClip;
	private var m_IsExpanded : Boolean;
	private var m_IsInitialized : Boolean;
	private var m_IsCompleted : Boolean;
	private var m_IsInProgress : Boolean;
	private var m_IsSelected : Boolean;
	public var SignalClicked : Signal;
	public var SignalSizeChanged : Signal;

	public function AchievementItem();

	public function configUI();

	public function SetData(data:LoreNode);

	private function Init();

	private function Draw();

	private function Layout();

	public function SetWidth(width:Number);

	private function SlotTagAdded(tagId:Number, character:ID32);

	private function ActivateRewardTooltip(icon:MovieClip);

	private function SetAchievementCompleted();

	private function SetAchievementInProgress();

	private function AddNotification();

	private function AddChildNotification(dataNode:LoreNode, target:MovieClip);

	private function UpdateProgressBar();

	private function LoadImage(container:MovieClip, mediaId:Number);

	private function onLoadInit(target:MovieClip);

	private function onLoadError(target:MovieClip, errorcode:String, httpStatus:Number);

	public function SetSelected(selected:Boolean) : Void;

	public function GetHeight() : Number;

	public function GetBackground() : MovieClip;

	private function Contract(snap:Boolean);

	private function Expand(snap:Boolean);

	public function RepositionSubAchievements() : Number;

	private function ExpandHandler();

}