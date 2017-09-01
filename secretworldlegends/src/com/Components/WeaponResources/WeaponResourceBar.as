import com.Components.ResourceBase;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic class com.Components.WeaponResources.WeaponResourceBar extends ResourceBase
{
	private var m_ResourceNumbers : MovieClip;
	private var m_ProgressAnimation : MovieClip;
	private var m_LowEnergyWarning : MovieClip;
	private var m_Bar : MovieClip;

	public function WeaponResourceBar();

	public function configUI();

	private function Layout(snap:Boolean);

	private function CleanupAfterAnimation();

}