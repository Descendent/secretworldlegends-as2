import com.Utils.ID32;
import com.Utils.Signal;
intrinsic class com.GameInterface.Loot
{
	public var SignalChanged : Signal;
	public var SignalClose : Signal;
	static public var SignalNewLockedItem : Signal;

	public function Loot(lootBagID:ID32);

	public function TryLootCash() : Void;

	public function TryLootItem(itemPos:Number, charID:ID32, desiredPosition:Number) : Void;

	public function TryLootAll() : Void;

	public function GetPersonalItemDropStat(itemPos:Number) : Number;

	public function Close() : Void;

}