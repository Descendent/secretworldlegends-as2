import com.GameInterface.FeatData;
import com.GameInterface.ProjectSpell;
import com.GameInterface.SpellData;
import com.GameInterface.Spell;
import com.GameInterface.Lore;
intrinsic class GUI.SkillHive.PowerInventorySearch
{
	private var m_IsPurchased : Boolean;
	private var m_IsAvailable : Boolean;
	private var m_IsLocked : Boolean;
	private var m_SearchText : String;
	private var m_Category : Number;
	private var m_WeaponFlag : Number;
	static public var ALL : Object;
	static public var ACTIVE : Object;
	static public var PASSIVE : Object;
	static public var ACTIVE_ELITE : Object;
	static public var PASSIVE_ELITE : Object;
	static public var ACTIVE_AUXILLIARY : Object;
	static public var PASSIVE_AUXILLIARY : Object;
	static private var AUXILLIARY_SLOT_ACHIEVEMENT : Number;

	public function PowerInventorySearch();

	public function CompareText(featData:FeatData) : Boolean;

	public function CompareControls(featData:FeatData);

	public function SetSearchText(text:String);

	public function SetPurchased(purchased:Boolean);

	public function SetAvailable(available:Boolean);

	public function SetLocked(locked:Boolean);

	public function SetCategory(category:Number);

	public function SetWeaponFlag(weaponFlag:Number);

	public function SetAllControls(isSet:Boolean);

	private function CheckAuxPermissions(featData:FeatData);

	private function CheckCategory(featData:FeatData);

	private function CheckWeaponType(featData:FeatData);

}