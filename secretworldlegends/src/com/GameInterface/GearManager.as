import com.Utils.*;
intrinsic class com.GameInterface.GearManager
{
	static public var SignalGearManagerDataUpdated : Signal;
	static public var SignalGearManagerError : Signal;

	static public function IsLoaded() : Boolean;

	static public function CreateBuild(name:String, selectionFlags:Number) : Void;

	static public function UseBuild(name:String) : Void;

	static public function DeleteBuild(name:String) : Void;

	static public function RenameBuild(oldName:String, newName:String) : Void;

	static public function ForceReload();

	static public function ShareBuild(name:String);

	static public function DecodeGearLink(link:String) : Boolean;

	static public function GetCurrentCharacterBuild() : com.GameInterface.GearData;

	static public function GetBuild(name:String) : com.GameInterface.GearData;

	static public function GetBuildList() : Array;

	static public function IsPrimaryWeaponHidden() : Boolean;

	static public function IsSecondaryWeaponHidden() : Boolean;

	static public function IsAuxiliaryWeaponHidden() : Boolean;

	static public function SetPrimaryWeaponHidden(hidden:Boolean);

	static public function SetSecondaryWeaponHidden(hidden:Boolean);

	static public function SetAuxiliaryWeaponHidden(hidden:Boolean);

}