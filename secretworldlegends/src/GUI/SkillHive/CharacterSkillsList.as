import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.GameInterface.Lore;
intrinsic class GUI.SkillHive.CharacterSkillsList extends MovieClip
{
	static private var AUXILLIARY_SLOT_ACHIEVEMENT : Number;
	static private var AUGMENT_SLOT_ACHIEVEMENT : Number;
	static private var AEGIS_SLOT_ACHIEVEMENT : Number;
	private var m_NumAnimating : Number;
	private var m_SkillCategories : Array;
	public var SignalStartAnimation : Signal;
	public var SignalStopAnimation : Signal;

	public function CharacterSkillsList();

	public function onEnterFrame() : Void;

	public function Animate() : Void;

	public function SlotStartAnimation() : Void;

	public function SlotStopAnimation() : Void;

	public function UpdateCharacterSkillPoints(newAmount:Number) : Void;

	public function GetBackgroundHeight() : Number;

}