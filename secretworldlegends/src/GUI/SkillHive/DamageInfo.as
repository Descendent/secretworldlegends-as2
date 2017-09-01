import com.GameInterface.Game.Character;
import com.Utils.ID32;
import com.Utils.Colors;
import mx.transitions.easing.*;
/**
 * Draws a square around the stage when damage is inflicted on character and animates it out
 */
intrinsic class GUI.SkillHive.DamageInfo
{
	private var m_DrawClip : MovieClip;
	private var m_PrevHealth : Number;
	private var m_CharacterId : ID32;

	public function DamageInfo(ref:MovieClip);

	/**
     * Sets the caharacter to current client cjharacter and assigns the ID membervariable
     * @param	character:Character - the player
     */
	public function SetCharacter(character:Character) : Void;

	/**
     * Fires when a character takes damage
     */
	private function SlotDamageInfo(statID:Number, damage:Number, absorb:Number, attackResultType:Number, attackType:Number, attackOffensiveLevel:Number, attackDefensiveLevel:Number, context:Number, targetID:ID32, iconID:ID32, iconColorLine:Number);

	/**
     * Draws an attack frame if there is noone active at the moment
     */
	private function DrawAttackFrame() : Void;

}