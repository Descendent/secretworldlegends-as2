import com.Utils.Signal;
import com.Utils.LDBFormat;
import com.GameInterface.LoreNode;
import com.GameInterface.Lore;
import com.GameInterface.LoreBase;
import com.GameInterface.Game.Character;
import com.Utils.ID32;
import flash.geom.Point;
import GUI.Achievement.ViewPanelBase;
import gfx.motion.Tween;
import mx.transitions.easing.*;
intrinsic class GUI.Achievement.LorePanelView extends ViewPanelBase
{
	private var m_CounterText : TextField;
	private var m_PanelNameText : TextField;
	private var m_Header : TextField;
	private var m_SubHeader : TextField;
	private var m_MainText : TextField;
	private var m_LoreProgress : MovieClip;
	private var m_ProgressView : MovieClip;
	private var m_SoundControlIndicator : MovieClip;
	private var m_PlayButton : MovieClip;
	private var m_PauseButton : MovieClip;
	private var m_StopButton : MovieClip;
	private var m_Filter : MovieClip;
	private var m_Overlay : MovieClip;
	private var m_DrawProgressMeters : Boolean;
	private var m_EntryWidth : Number;
	private var m_Viewpoints : Array;
	private var BUZZING_VIEWPOINT : Object;
	private var FILTH_VIEWPOINT : Object;
	private var LOCKED : Number;
	private var UNLOCKED : Number;
	private var m_TDB_LoreEntryLocked : String;

	public function LorePanelView();

	private function configUI();

	private function OnPlay();

	private function OnPause();

	private function OnStop();

	private function onEnterFrame();

	public function SetData(data:LoreNode);

	private function init();

	public function PositionButtons();

	public function SetSize(width:Number, height:Number);

	public function GetYPos(id:Number);

	public function SetViewpointByNode(id:Number);

	private function SlotTagAdded(tagId:Number, character:ID32);

	private function CreateViewpointDropdown();

	private function ViewpointSelected(event:Object);

	private function DrawOverlays();

	private function DrawLoreEntries();

	private function RepositionLoreEntries();

}