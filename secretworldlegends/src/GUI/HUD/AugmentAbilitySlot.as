import GUI.HUD.AbilitySlot;
import com.GameInterface.DistributedValue;
import com.GameInterface.Tooltip.*;
import com.GameInterface.Game.Shortcut;
import GUI.HUD.ActiveAbility;
intrinsic class GUI.HUD.AugmentAbilitySlot extends GUI.HUD.AbilitySlot
{
	private var m_Ability : ActiveAbility;

	public function AugmentAbilitySlot(p_mc:MovieClip, p_id:Number);

	private function OnMouseUp() : Void;

	public function GetTooltipData() : TooltipData;

	public function SlotItemDroppedOnDesktop();

	public function UpdateAbilityFlags(enabled:Boolean, flag:Number);

}