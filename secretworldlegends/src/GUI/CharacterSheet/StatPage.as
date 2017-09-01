import com.Utils.LDBFormat;
import flash.geom.Rectangle;
import gfx.core.UIComponent;
import gfx.motion.Tween;
import gfx.utils.Delegate;
import mx.transitions.easing.*;
import com.GameInterface.Game.Character;
import com.GameInterface.Tooltip.*;
intrinsic class GUI.CharacterSheet.StatPage extends UIComponent
{
	static private var BACKGROUND_WIDTH : Number;
	static private var SCOREABLE_EQUIPMENT_SLOTS : Object;
	private var m_TDB_Offense : String;
	private var m_TDB_Defense : String;
	private var m_TDB_Healing : String;
	private var m_ScrollInterval : Number;
	private var m_StatPages : Object;
	private var m_Header : TextField;
	private var m_SkillRankTooltip : MovieClip;
	private var m_SkillRankLabel : TextField;
	private var m_SkillRankValue : TextField;
	private var m_GearScoreTooltip : MovieClip;
	private var m_GearScoreLabel : TextField;
	private var m_GearScoreValue : TextField;
	private var m_StatPage : MovieClip;
	private var m_ScrollBar : MovieClip;
	private var m_CloseButton : MovieClip;
	private var m_StatPageVisibleHeight : Number;
	public var m_StatPagePanelBackground : MovieClip;
	private var m_StatItems : Array;
	private var m_Weapons : Array;

	public function StatPage();

	private function configUI() : Void;

	public function SlotStatChanged(statId:Number);

	public function UpdateGearScore();

	public function SetWeapons(weapons:Array);

	private function Layout();

	public function OnScrollbarUpdate(event:Object) : Void;

	private function onMouseWheel(delta:Number);

	private function RemoveStatPage() : Void;

	private function CreateStatCluster(stat:String);

	public function OpenStatPage(statPage:String);

	private function InitializeLabels();

}