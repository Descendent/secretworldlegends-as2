import flash.external.ExternalInterface;
import com.Utils.Signal;
import com.Utils.ID32;
intrinsic class com.GameInterface.DynelSlot
{
	public var Name : String;
	public var m_Id : ID32;
	public var OnClient : Boolean;
	public var Stats : Object;
	public var Buffs : Object;
	public var StatUpdated : Signal;
	public var DynelOnClient : Signal;
	public var BuffActivated : Object;
	public var BuffDeactivated : Object;

	public function DynelSlot();

	public function Exists() : Boolean;

	public function IsNpc() : Boolean;

	public function IsPlayer() : Boolean;

	public function IsSimpleDynel() : Boolean;

	public function IsDestructible() : Boolean;

	public function GetID();

}