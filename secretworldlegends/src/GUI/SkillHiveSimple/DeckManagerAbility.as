import gfx.core.UIComponent;
import com.GameInterface.SpellData;
import com.GameInterface.Spell;
import com.GameInterface.DistributedValue;
import com.GameInterface.Tooltip.*;
import com.GameInterface.Utils;
import com.Utils.LDBFormat;
import com.Utils.Colors;
import com.Utils.DragObject;
import mx.utils.Delegate;
intrinsic class GUI.SkillHiveSimple.DeckManagerAbility extends UIComponent
{
	private var m_Ability : MovieClip;
	private var m_SpellData : SpellData;
	private var m_Tooltip : TooltipInterface;
	private var m_TooltipTimeout : Number;

	public function AbilityClip();

	private function configUI();

	public function SetData(spellData:SpellData);

	private function UpdateAbilityIcon() : Void;

	private function onMousePress(mouseBtnId:Number) : Void;

	private function StartTooltipTimeout();

	private function StopTooltipTimeout();

	public function CloseTooltip() : Void;

	public function OpenTooltip() : Void;

	private function onRollOver() : Void;

	private function onRollOut() : Void;

	private function onDragOut() : Void;

	private function onUnload() : Void;

	private function onMouseMove() : Void;

}