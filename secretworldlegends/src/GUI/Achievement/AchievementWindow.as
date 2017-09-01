import flash.geom.Rectangle;
import gfx.core.UIComponent;
import com.GameInterface.Utils;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.GameInterface.LoreNode;
import com.Utils.ID32;
import mx.transitions.easing.*;
import gfx.motion.Tween;
import GUI.Achievement.LorePanelView;
import com.GameInterface.Lore;
import mx.utils.Delegate;
import com.GameInterface.Game.Character;
import com.GameInterface.DistributedValue;
import com.GameInterface.LoreBase;
import com.Utils.Colors;
intrinsic class GUI.Achievement.AchievementWindow extends UIComponent
{
	private var m_ResizeButton : MovieClip;
	private var m_Background : MovieClip;
	private var m_ButtonBar : MovieClip;
	private var m_CloseButton : MovieClip;
	private var m_HelpButton : MovieClip;
	private var m_Divider : MovieClip;
	private var m_MainProgress : MovieClip;
	private var m_SearchBox : MovieClip;
	private var m_TotalPoints : MovieClip;
	static public var ACHIEVEMENT : Number;
	static public var LORE : Number;
	static public var SEASONAL_ACHIEVEMENT : Number;
	static public var TITLE : Number;
	static public var TUTORIAL : Number;
	private var m_IsResizing : Boolean;
	private var m_ViewY : Number;
	private var m_MenuY : Number;
	private var m_ProgressY : Number;
	private var m_MenuAllowedHeight : Number;
	private var m_ViewAllowedHeight : Number;
	private var m_CurrentSizePos : Rectangle;
	private var m_MenuWidth : Number;
	private var m_ViewWidth : Number;
	private var m_MinWindowWidth : Number;
	private var m_MinWindowHeight : Number;
	private var m_MenuScrollbarEnabled : Boolean;
	private var m_ViewScrollbarEnabled : Boolean;
	private var m_Padding : Number;
	private var m_ViewScrollbar : MovieClip;
	private var m_ViewMask : MovieClip;
	private var m_MenuScrollbar : MovieClip;
	private var m_MenuMask : MovieClip;
	private var m_AchievementProgress : MovieClip;
	private var m_CurrentTreeRootNode : LoreNode;
	private var m_CurrentSelectedNode : LoreNode;
	private var m_LoreDataNode : LoreNode;
	private var m_AchievementDataNode : LoreNode;
	private var m_SeasonalAchievementDataNode : LoreNode;
	private var m_TDB_Achievements : String;
	private var m_TDB_SeasonalAchievements : String;
	private var m_TDB_Lore : String;
	private var m_CurrentTab : Number;
	private var m_CurrentView : MovieClip;
	private var m_CurrentViewPanel : MovieClip;
	private var m_PanelLinkage : String;
	private var m_CurrentMenu : MovieClip;
	public var SignalClose : Signal;
	private var m_NodeFocus : DistributedValue;
	static public var SignalTagRead : Signal;
	public var m_TabButtonArray : Array;

	public function onUnload();

	public function AchievementWindow();

	public function configUI();

	private function ResizeWindow();

	public function SetSize(rect:Rectangle);

	public function GetSize() : Rectangle;

	private function SlotSetNodeFocus();

	private function GetTabId(tagId:Number);

	private function GetHeaderId(tabIndex:Number);

	public function SetTabFocus(focus:Number);

	public function GetTabFocus();

	private function Layout();

	private function SetAchievementProgress(node:LoreNode);

	private function ScrollToSelected();

	private function InitTabs();

	private function SlotTagAdded(tagId:Number, character:ID32);

	private function SlotStatChanged(statId:Number);

	private function TabSelected(event:Object);

	private function CreateView();

	private function SlotNodeClicked();

	private function SlotNodeSelected();

	private function UpdateMenuScrollBar();

	private function UpdateViewScrollBar();

	private function ScrollBar(parent:MovieClip, target:MovieClip, maxHeight:Number, width:Number, scrollbarName:String, maskName:String, defaultY:Number) : Boolean;

	private function onMouseWheel(delta:Number);

	private function OnScrollbarUpdate(event:Object) : Void;

	private function UpdateAchievementProgressView();

	private function UpdateTotalAchievementPoints();

	private function UpdateProgressView(inputNode:LoreNode, progressBar:MovieClip);

	private function CreateDataNode(type:Number, forceLoad:Boolean) : LoreNode;

	private function RemoveFocus() : Void;

	private function SlotCloseWindow(event:Object);

	private function HelpButtonClickedEventHandler() : Void;

	private function SlotResizePress();

	private function SlotResizeRelease();

	private function SlotResizeMove();

	private function StartDragAchievementWindow();

	private function StopDragAchievementWindow();

}