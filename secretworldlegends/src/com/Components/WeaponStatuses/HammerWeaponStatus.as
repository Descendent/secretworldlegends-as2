import com.GameInterface.Game.Character;
import com.GameInterface.Game.BuffData;
import gfx.core.UIComponent;
import gfx.motion.Tween;
import mx.utils.Delegate;
import mx.transitions.easing.*;
intrinsic class com.Components.WeaponStatuses.HammerWeaponStatus extends UIComponent
{
	private var m_HalfAnim : MovieClip;
	private var m_FullAnim : MovieClip;
	private var m_Mask1 : MovieClip;
	private var m_Mask2 : MovieClip;
	private var m_Fill1 : MovieClip;
	private var m_Fill2 : MovieClip;
	private var m_FillBG : MovieClip;
	private var m_Progress : MovieClip;
	private var m_ProgressMask : MovieClip;
	private var m_Character : Character;
	private var m_IntervalId : Number;
	static private var COUNTER_BUFF : Number;

	public function HammerWeaponStatus();

	private function configUI();

	private function onUnload();

	private function UpdateBuff(buffId:Number);

}