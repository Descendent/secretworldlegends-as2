import GUI.HUD.PassiveAbilitySlot;
import GUI.HUD.AbilitySlot;
import com.GameInterface.Spell;
import com.GameInterface.SpellBase;
import com.GameInterface.SpellData;
import flash.filters.GlowFilter;
import mx.utils.Delegate;
import com.Utils.Signal;
import com.Utils.Colors;
import com.GameInterface.Utils;
import com.GameInterface.Lore;
intrinsic dynamic class GUI.SkillHive.SkillhivePassiveAbilityBar extends MovieClip
{
	public var m_NumAbilities : Number;
	public var m_PassiveAbilitySlots : Array;
	public var SignalToggleVisibility : Signal;

	public function SkillhivePassiveAbilityBar();

	public function onLoad();

	public function onUnload();

	public function CanAddPassive(pos:Number, spellId:Number) : Boolean;

	public function SlotToggleVisibility();

	public function EquipPassive(slotId:Number, spellId:Number);

	public function UnEquipPassive(spellId:Number);

	public function HighlightSlot(slotId:Number);

	public function StopHighlightSlot(slotId:Number);

	public function SlotPassiveAdded(itemPos:Number) : Void;

	public function SlotPassiveRemoved(itemPos:Number) : Void;

	public function SlotDragEnd(event:Object);

	public function GetMouseSlotID() : Number;

	public function GetAbilityColors() : Array;

}