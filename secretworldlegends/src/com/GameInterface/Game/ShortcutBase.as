import com.Utils.ID32;
intrinsic class com.GameInterface.Game.ShortcutBase
{
	static public function GetShortcutData(itemPos:Number) : Object;

	static public function RefreshShortcuts(fromPos:Number, count:Number) : Void;

	static public function MoveShortcut(fromPos:Number, toPos:Number) : Void;

	static public function RemoveFromShortcutBar(itemPos:Number) : Void;

	static public function UseShortcut(itemPos:Number, target:ID32) : Void;

	static public function AddSpell(itemPos:Number, spellId:Number) : Void;

}