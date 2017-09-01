import com.GameInterface.Game.Character;
import com.GameInterface.Game.BuffData;
import com.Utils.Colors;
import com.Utils.LDBFormat;
import gfx.core.UIComponent;
import gfx.motion.Tween;
import mx.utils.Delegate;
import mx.transitions.easing.*;
intrinsic class com.Components.WeaponStatuses.ShotgunWeaponStatus extends UIComponent
{
	private var m_Shells : MovieClip;
	private var m_Base : MovieClip;
	private var m_DepleatedUranium : MovieClip;
	private var m_DragonsBreath : MovieClip;
	private var m_ArmorPiercing : MovieClip;
	private var m_Anima : MovieClip;
	private var m_ShellAnims : MovieClip;
	private var m_Character : Character;
	private var m_CurrentCount : Number;
	private var m_CurrentType : Number;
	private var m_PlaySound : Boolean;
	private var m_Empty : Boolean;
	static private var COUNTER_BUFF : Number;
	static private var DEPLEATED_URANIUM_BUFF : Number;
	static private var DRAGONS_BREATH_BUFF : Number;
	static private var ARMOR_PIERCING_BUFF : Number;
	static private var ANIMA_BUFF : Number;
	static private var MAX_COUNT : Number;
	static private var SHELL_START : Number;
	static private var SHELL_PADDING : Number;

	public function ShotgunWeaponStatus();

	private function configUI();

	private function onUnload();

	private function UpdateBuff(buffId:Number);

	private function GetCurrentTypeBuff() : Number;

	private function GetCurrentTypeColor() : Number;

}