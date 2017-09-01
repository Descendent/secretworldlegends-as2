import com.Utils.Signal;
intrinsic class com.GameInterface.SpellBase
{
	static public var m_SpellList : Object;
	static public var m_PassivesList : Object;
	static public var SignalSpellUpdate : Signal;
	static public var SignalSpellLearned : Signal;
	static public var SignalSpellForgotten : Signal;
	static public var SignalPassiveUpdate : Signal;
	static public var SignalPassiveLearned : Signal;
	static public var SignalPassiveForgotten : Signal;
	static public var SignalPassiveAdded : Signal;
	static public var SignalPassiveRemoved : Signal;
	static public var SignalSpellbookReceived : Signal;

	static public function EquipPassiveAbility(abilityPos:Number, abilityId:Number) : Void;

	static public function UnequipPassiveAbility(abilityPos:Number) : Void;

	static public function MovePassiveAbility(fromPos:Number, toPos:Number) : Void;

	static public function GetPassiveAbility(abilityPos:Number) : Number;

	static public function EnterPassiveMode() : Void;

	static public function ExitPassiveMode() : Void;

	static public function CancelBuff(buffID:Number, casterID:Number) : Void;

	static public function IsTokenState(templateID:Number);

	static public function IsPassiveEquipped(spellId:Number) : Boolean;

	static public function GetSpellDescription(spellID:Number) : String;

	static public function GetSpellData(spellID:Number) : com.GameInterface.SpellData;

	static public function GetBuffData(spellID:Number) : com.GameInterface.Game.BuffData;

	static public function GetStat(spellID:Number, statID:Number) : Number;

	static public function GetSpellShortDescription(spellID:Number) : String;

	static public function GetSpellStaticDescription(spellID:Number) : String;

	static public function SummonPetFromTag(tagId:Number) : Boolean;

	static public function SummonMountFromTag(tagId:Number) : Void;

	static public function CastTeleportFromTag(tagId:Number) : Void;

	static public function CastEmoteFromTag(tagId:Number) : Void;

	static public function ActivateNotification(notificationID:Number) : Void;

}