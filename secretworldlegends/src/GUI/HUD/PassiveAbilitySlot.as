import GUI.HUD.AbilitySlot;
import com.GameInterface.DistributedValue;
import com.GameInterface.Tooltip.*;
import com.GameInterface.Spell;
intrinsic class GUI.HUD.PassiveAbilitySlot extends GUI.HUD.AbilitySlot
{
	public function PassiveAbilitySlot(p_mc:MovieClip, p_id:Number);

	private function OnMouseUp() : Void;

	public function GetTooltipData() : TooltipData;

	public function SlotItemDroppedOnDesktop();

}