import com.GameInterface.Game.Character;
import com.GameInterface.Game.CharacterBase;
import com.GameInterface.ProjectFeatInterface;
import com.GameInterface.FeatInterface;
import com.GameInterface.ProjectUtils;
import com.Utils.LDBFormat;
import flash.geom.Rectangle;
import mx.transitions.easing.*;
import com.Components.Numbers;
intrinsic class GUI.SkillHive.CharacterSkillPointPanel extends MovieClip
{
	private var SCROLL_SPEED : Number;
	private var m_Background : MovieClip;
	private var m_CharacterSkillPointButton : MovieClip;
	private var m_ButtonPulse : MovieClip;
	private var m_ButtonBackground : MovieClip;
	private var m_CharacterSkillsListBackground : MovieClip;
	private var m_CharacterSkillsList : MovieClip;
	private var m_CharacterSkillsSidePanel : MovieClip;
	private var m_Character : Character;
	private var m_ScrollBar : MovieClip;
	private var m_IsAnimating : Boolean;
	private var m_ScrollInterval : Number;
	private var m_SkillWheelLabel : String;
	private var m_CharacterSkillPointsLabel : String;
	private var m_NumbersBadgeAP : MovieClip;
	private var m_NumbersBadgeSP : MovieClip;

	public function CharacterSkillPointPanel();

	private function Init() : Void;

	private function UpdateCharacterSkillPoints() : Void;

	public function AnimateButtonPulse(animate:Boolean) : Void;

	private function CreateScrollBar() : Void;

	private function ScrollBarEventHandler(event:Object) : Void;

	private function UpdateScrollBar() : Void;

	private function UpdateSidePanelText() : Void;

	public function SlotFeatTrained() : Void;

	public function SlotStatChanged(statId:Number);

	public function SlotTokenChanged(tokenID:Number, newAmount:Number, oldAmount:Number) : Void;

	public function SetButtonText() : Void;

	public function SetSize(width:Number, height:Number) : Void;

	public function SlotStartAnimation() : Void;

	public function SlotStopAnimation() : Void;

	public function onMouseWheel(delta:Number);

}