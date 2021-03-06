﻿intrinsic class com.GameInterface.Tooltip.TooltipData
{
	public var m_Header : String;
	public var m_Title : String;
	public var m_IconName : String;
	public var m_SubTitle : String;
	public var m_ItemBindingDesc : String;
	public var m_MiscItemInfo : String;
	public var m_Descriptions : Array;
	public var m_IconID : com.Utils.ID32;
	public var m_Attributes : Array;
	public var m_CompareAttributes : Array;
	public var m_CurrentlyEquippedItems : Array;
	public var m_IsEquipped : Boolean;
	public var m_IsUnique : Boolean;
	public var m_Color : Number;
	public var m_CastTime : Number;
	public var m_RecastTime : Number;
	public var m_WeaponTypeRequirement : Number;
	public var m_ResourceGenerator : Number;
	public var m_ItemCriteriaType : Number;
	public var m_ItemCriteriaLevel : Number;
	public var m_ItemRank : String;
	public var m_WeaponType : Number;
	public var m_SpellType : Number;
	public var m_AttackType : Number;
	public var m_GMInfo : String;
	public var m_SellPrice : Number;
	public var m_SellToken : Number;
	public var m_PlayerSellPrice : Number;
	public var m_ItemSentTo : String;
	public var m_Durability : Number;
	public var m_MaxDurability : Number;
	public var m_GearScore : Number;
	public var m_EmptyPrefix : Boolean;
	public var m_EmptySuffix : Boolean;
	public var m_PrefixData : TooltipData;
	public var m_SuffixData : TooltipData;
	public var m_CenterHeader : Boolean;
	public var m_Padding : Number;
	public var m_MaxWidth : Number;
	static public var e_ModeNormal : Number;
	static public var e_ModeLabel : Number;
	static public var e_ModeSplitter : Number;

	public function TooltipData();

	public function AddDescription(desc:String);

	public function AddAttribute(left:String, right:String);

	public function AddAttributeHeader(header:String);

	public function AddAttributeSplitter();

}