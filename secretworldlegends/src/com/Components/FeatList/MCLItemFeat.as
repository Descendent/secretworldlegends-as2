import com.Components.MultiColumnList.MCLItem;
import com.GameInterface.SpellData;
import com.GameInterface.Spell;
import com.GameInterface.FeatData;
import com.Utils.LDBFormat;
intrinsic class com.Components.FeatList.MCLItemFeat extends MCLItem
{
	static public var FEAT_COLUMN_ICON : Object;
	static public var FEAT_COLUMN_ICON_WITH_SYMBOL : Object;
	static public var FEAT_COLUMN_NAME : Object;
	static public var FEAT_COLUMN_CATEGORY : Object;
	static public var FEAT_COLUMN_TYPE : Object;
	static public var FEAT_COLUMN_SUBTYPE : Object;
	static public var FEAT_COLUMN_EFFECT : Object;
	static public var FEAT_COLUMN_COST : Object;
	static public var s_SubTypesArray : Object;
	static public var s_EffectsArray : Object;
	public var m_FeatData : FeatData;
	public var m_SubType : String;
	public var m_Effect : String;
	public var m_Category : String;
	public var m_WeaponRequirement : Number;
	public var m_WeaponType : String;

	public function MCLItemFeat(featData:FeatData);

	public function Compare(sortColumn:Number, item:MCLItem);

	private function UpdateSubTypes();

	private function UpdateEffects();

	private function UpdateCategory();

}