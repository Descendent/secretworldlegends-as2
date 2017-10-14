import com.GameInterface.DressingRoomNode;
intrinsic class com.GameInterface.DressingRoom
{
	static public function GetRootNodeId() : Number;

	static public function GetParent(nodeId:Number) : DressingRoomNode;

	static public function GetChildren(nodeId:Number) : Array;

	static public function NodeOwned(nodeId:Number) : Boolean;

	static public function NodeEquipped(nodeId:Number) : Boolean;

	static public function EquipNode(nodeId:Number) : Void;

	static public function PurchaseNode(nodeId:Number) : Boolean;

	static public function PreviewNodeItem(nodeId:Number) : Void;

	static public function ClearPreview() : Void;

	static public function GetEventTweakName(eventId:Number) : String;

	static public function IsEventActive(eventId:Number) : Boolean;

}