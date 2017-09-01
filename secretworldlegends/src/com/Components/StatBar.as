import com.GameInterface.GUIUtils.StringUtils;
import com.GameInterface.Game.Dynel;
import com.GameInterface.Game.GroupElement;
import com.GameInterface.DistributedValue;
import mx.utils.Delegate;
import gfx.motion.Tween;
import mx.transitions.easing.*;
intrinsic class com.Components.StatBar extends MovieClip
{
	public var m_Dynel : Dynel;
	public var m_GroupElement : GroupElement;
	public var m_Current : Number;
	public var i_StatText : TextField;
	public var i_Bar : MovieClip;
	public var m_Max : Number;
	public var m_CurrentFrame : Number;
	public var m_TargetFrame : Number;
	public var m_NameXOrgPos : Number;
	public var m_ShowStatText : Boolean;
	public var m_ShowStatTextAsPercent : Boolean;
	public var m_CurrentStatID : Number;
	public var m_MaxStatID : Number;
	public var m_FadeWhenInactive : Boolean;
	public var m_FadeTimer : Number;
	public var m_Fading : Boolean;
	public var m_AlwaysVisible : Boolean;
	public var m_FrameCount : Number;
	public var m_FrameResetHack : Number;
	public var m_CurrentFrameHack : Number;
	public var m_CurrentFrameHackMax : Number;

	public function StatBar();

	public function Init(CurrentStatID:Number, MaxStatID:Number, AlwaysVisible:Boolean);

	public function SetFadeWhenInactive(fade:Boolean);

	public function SetDynel(dynel:Dynel);

	public function SetGroupElement(groupElement:GroupElement);

	public function SlotCharacterEntered();

	public function SlotCharacterExited();

	private function ClearBar();

	private function SlotStatChanged(stat:Number, value:Number);

	private function SetMax(maxStat:Number) : Void;

	private function UpdateStatText();

	private function SetCurrent(stat:Number) : Void;

	public function Update();

	private function onEnterFrame();

	private function UpdateStatBar();

	public function Hide();

	public function Show();

	public function SetShowText(show:Boolean);

	private function OnFadeTimer();

}