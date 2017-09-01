import flash.external.ExternalInterface;
import com.Utils.Signal;
import com.Utils.ID32;
intrinsic class com.GameInterface.Game.Shortcut
{
	static public var m_ShortcutList : Object;
	static public var SignalShortcutAdded : Signal;
	static public var SignalShortcutRemoved : Signal;
	static public var SignalShortcutMoved : Signal;
	static public var SignalHotkeyChanged : Signal;
	static public var SignalShortcutStatChanged : Signal;
	static public var SignalShortcutEnabled : Signal;
	static public var SignalShortcutRangeEnabled : Signal;
	static public var SignalShortcutUsed : Signal;
	static public var SignalShortcutAddedToQueue : Signal;
	static public var SignalShortcutRemovedFromQueue : Signal;
	static public var SignalCooldownTime : Signal;
	static public var SignalShortcutsRefresh : Signal;
	static public var SignalSwapShortcut : Signal;
	static public var SignalSwapBar : Signal;
	static public var SignalRestoreSwapBar : Signal;
	static public var SignalNumPocketSlotsChanged : Object;

	static public function RefreshShortcuts(fromPos:Number, count:Number) : Void;

	static public function MoveShortcut(fromPos:Number, toPos:Number) : Void;

	static public function RemoveFromShortcutBar(itemPos:Number) : Boolean;

	static public function RemoveAugment(itemPos:Number) : Boolean;

	static public function UseShortcut(itemPos:Number) : Void;

	static public function AddSpell(itemPos:Number, spellId:Number) : Void;

	static public function AddAugment(itemPos:Number, spellId:Number) : Void;

	static public function AddItem(shortcutPos:Number, inventoryId:ID32, itemPos:Number) : Void;

	static public function GetNumPocketSlots() : Number;

	static public function GetMaxPocketSlots() : Number;

	static public function IsSpellEquipped(spellId:Number) : Boolean;

}