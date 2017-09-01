import com.GameInterface.Log;
import com.Utils.LDBFormat;
import com.GameInterface.DistributedValue;
import com.GameInterface.Tooltip.TooltipManager;
import com.GameInterface.Tooltip.TooltipData;
import com.GameInterface.Tooltip.TooltipInterface;
import com.GameInterface.Tooltip.TooltipDataProvider;
import com.GameInterface.ACGItem;
intrinsic class com.GameInterface.Tooltip.TooltipUtils
{
	static public function CreateAugmentTypeIcon(parentClip:MovieClip, clusterIndex:Number, initObject:Object) : Boolean;

	static public function CreateWeaponRequirementsIcon(parentClip:MovieClip, weaponRequirementsFlag:Number, initObject:Object) : Boolean;

	static public function CreateItemIconFromType(parentClip:MovieClip, weaponType:Number, initObject:Object) : Boolean;

	static private function CreateAugmentIcon(parentClip:MovieClip, iconName:String, initObject:Object) : Boolean;

	static private function CreateItemIcon(parentClip:MovieClip, itemArray:Array, initObject:Object) : Boolean;

	static public function GetWeaponRequirementString(spellRequirementsFlag:Number) : String;

	static private function GetWeaponRequirementIcons(spellRequirementsFlag:Number) : Array;

	static private function GetWeaponNamesFromRequirements(spellRequirementsFlag:Number) : Array;

	static private function GetAugmentIconByCluster(clusterIndex:Number) : String;

	static public function GetWeaponRequirementIconNameFromType(weaponType:Number) : String;

	static public function GetWeaponRequirementIconName(spellRequirementFlag:Number) : String;

	static public function ShowFloatingTooltip(acgItem:ACGItem, itemLevel:Number);

	static public function GetSpellTypeName(spellType:Number, weaponTypeRequirement:Number, resourceGenerator) : String;

	static public function GetSpellAttackTypeName(spellAttackType:Number);

	static public function AddTextTooltip(parentClip:MovieClip, text:String, maxWidth:Number, orientation:Number, showAtMouse:Boolean, showDelay:Boolean);

}