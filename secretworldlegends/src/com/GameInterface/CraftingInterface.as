import com.Utils.Signal;
intrinsic class com.GameInterface.CraftingInterface
{
	static public var SignalCraftingResultFeedback : Signal;

	static public function StartCrafting(inventoryType:Number);

	static public function StartDisassembly(inventoryType:Number);

	static public function StartEmpowerment(inventoryType:Number);

	static public function StartFusion(inventoryType:Number);

	static public function EndCrafting();

	static public function CloseCrafting();

	static public function SetDisassemblySlot(slotID:Number);

	static public function DestroyGlyph(inventoryType:Number);

	static public function RecoverGlyph(inventoryType:Number, cost:Number);

	static public function DestroySignet(inventoryType:Number);

	static public function RecoverSignet(inventoryType:Number, cost:Number);

}