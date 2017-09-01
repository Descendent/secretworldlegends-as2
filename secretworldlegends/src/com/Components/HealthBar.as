import flash.geom.Rectangle;
import com.GameInterface.Game.Dynel;
import com.GameInterface.Game.GroupElement;
import com.GameInterface.Game.Character;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import com.Utils.Colors;
import com.Utils.LDBFormat;
import com.GameInterface.DistributedValue;
intrinsic class com.Components.HealthBar extends MovieClip
{
	static public var STATTEXT_PERCENT : Number;
	static public var STATTEXT_NUMBER : Number;
	static private var AEGIS_PSYCHIC : Object;
	static private var AEGIS_TECH : Object;
	static private var AEGIS_DEMONIC : Object;
	private var m_Dynel : Dynel;
	private var m_GroupElement : GroupElement;
	private var m_Character : Character;
	private var m_CurrentStatID : Number;
	private var m_MaxStatID : Number;
	private var m_BoostStatID : Number;
	private var m_PinkShieldStatID : Number;
	private var m_BlueShieldStatID : Number;
	private var m_RedShieldStatID : Number;
	private var m_PinkShieldAbsoluteStatID : Number;
	private var m_BlueShieldAbsoluteStatID : Number;
	private var m_RedShieldAbsoluteStatID : Number;
	private var m_PinkShieldPercentStatID : Number;
	private var m_BlueShieldPercentStatID : Number;
	private var m_RedShieldPercentStatID : Number;
	private var m_PlayerShieldTypeStatID : Number;
	private var m_PlayerShieldCurrentStatID : Number;
	private var m_PlayerShieldMaxStatID : Number;
	private var m_AegisDamageTypeStatID : Number;
	private var m_ShieldsOnTop : Boolean;
	private var m_Max : Number;
	private var m_Current : Number;
	private var m_Boost : Number;
	private var m_BoostMask : MovieClip;
	private var m_Text : TextField;
	private var m_Bar : MovieClip;
	private var m_ShieldBar : MovieClip;
	private var m_SecondShield : MovieClip;
	private var m_ThirdShield : MovieClip;
	private var m_AegisDamageType : MovieClip;
	private var m_AlwaysVisible : Boolean;
	private var m_IsPlayer : Boolean;
	private var m_ShowText : Boolean;
	private var m_TextType : Number;
	private var m_TweenTime : Number;
	private var m_TweenLimitPercent : Number;
	private var m_ShowHPUnderAegis : DistributedValue;
	private var m_ShowAegisValues : DistributedValue;

	public function HealthBar();

	public function SetDynel(dynel:Dynel);

	public function SlotCharacterEntered();

	public function SlotCharacterExited();

	public function SetBarScale(xscale:Number, yscale:Number, textScale:Number, dotScale:Number);

	public function SetGroupElement(groupElement:GroupElement);

	public function SetCharacter(character:Character);

	private function ClearBar();

	private function SlotStatChanged(stat:Number, value:Number);

	private function SetMax(maxStat:Number, snap:Boolean) : Void;

	private function SetCurrent(currentValue:Number, boostValue:Number, snap:Boolean) : Void;

	private function UpdateEnemyShields();

	private function UpdateCurrentEnemyShield(currentShield:Number, currentAbsolute:Number, currentPercent:Number);

	private function UpdatePlayerShields();

	private function UpdateStatText();

	private function UpdateStatBar(snap:Boolean);

	private function UpdateAegisDamageType();

	public function Hide();

	public function Show();

	public function SetShowText(showText:Boolean);

	public function SetTextType(textType:Number);

	private function PositionUpcomingShields(top:Boolean);

	public function SetShieldsOnTop(top:Boolean);

}