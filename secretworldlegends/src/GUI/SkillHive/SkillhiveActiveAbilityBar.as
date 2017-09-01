import GUI.HUD.ActiveAbilitySlot;
import com.GameInterface.GUIUtils.FlashEnums;
import GUI.HUD.AbilitySlot;
import GUI.HUD.AbilityBase;
import com.GameInterface.Game.Shortcut;
import com.GameInterface.Game.ShortcutData;
import flash.filters.GlowFilter;
import mx.utils.Delegate;
import com.Utils.Signal;
import com.GameInterface.Utils;
import com.Utils.ShortcutLocation;
import com.Utils.Colors;
import com.GameInterface.Lore;
import com.GameInterface.Spell;
import com.GameInterface.SpellData;
import com.GameInterface.SpellBase;
import GUI.HUD.AugmentAbilitySlot;
intrinsic dynamic class GUI.SkillHive.SkillhiveActiveAbilityBar extends MovieClip
{
	public var m_AbilitySlots : Array;
	public var m_AugmentSlots : Array;
	public var SignalToggleVisibility : Signal;
	public var m_AuxilliarySlotAchievement : Number;
	public var AUGMENT_SLOT_ACHIEVEMENT : Number;
	public var DAMAGE_AUGMENT_BIT : Number;
	public var HEALING_AUGMENT_BIT : Number;
	public var SURVIVABILITY_AUGMENT_BIT : Number;
	public var SUPPORT_AUGMENT_BIT : Number;

	public function SkillhiveActiveAbilityBar();

	public function onLoad();

	public function onUnload();

	public function SlotTagAdded(tag:Number);

	public function GetTopFrameHeight() : Number;

	public function SlotToggleVisibility();

	public function EquipAugment(slotId:Number, spellId:Number);

	public function EquipActive(slotId:Number, spellId:Number);

	public function UnEquipActive(spellId:Number);

	public function HighlightSlot(slotId:Number);

	public function StopHighlightSlot(slotId:Number);

	public function SlotShortcutAdded(itemPos:Number) : Void;

	public function ValidateAugments() : Void;

	public function SlotShortcutRemoved(itemPos:Number) : Void;

	public function SlotShortcutMoved(p_from:Number, p_to:Number) : Void;

	public function SlotShortcutEnabled(itemPos:Number, enabled:Boolean) : Void;

	public function CanAddShortcut(pos:Number, spellId:Number) : Boolean;

	public function SlotDragEnd(event:Object);

	public function GetMouseSlotID() : Number;

	public function GetAbilityColors() : Array;

	public function GetAugmentColors() : Array;

	public function ToggleHighlightTopFrame(highlight:Boolean);

}