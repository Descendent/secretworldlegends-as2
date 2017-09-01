import com.GameInterface.SpellBase;
intrinsic class com.GameInterface.Spell extends SpellBase
{
	static public function IsPassiveSpell(spellId:Number) : Boolean;

	static public function IsActiveSpell(spellId:Number) : Boolean;

	static public function GetNextFreePassiveSlot();

}