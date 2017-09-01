import com.GameInterface.Game.Character;
import com.GameInterface.Game.BuffData;
import com.Utils.Colors;
import gfx.core.UIComponent;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic class com.Components.WeaponStatuses.ChaosWeaponStatus extends UIComponent
{
	private var m_Character : Character;
	static private var COUNTER_BUFF : Number;
	static private var FRAMES : Array;
	private var m_ForceFull : Boolean;

	public function ChaosWeaponStatus();

	private function configUI();

	private function onUnload();

	private function UpdateBuff(buffId:Number);

	private function ForceFullTimeout();

	private function SlotCharacterDied();

	private function GetBuffCount();

}