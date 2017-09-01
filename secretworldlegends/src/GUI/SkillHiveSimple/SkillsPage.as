import com.Components.WindowComponentContent;
import com.Utils.Archive;
import com.Utils.LDBFormat;
import com.GameInterface.ProjectUtils;
import com.GameInterface.Game.Character;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic class GUI.SkillHiveSimple.SkillsPage extends WindowComponentContent
{
	private var m_Background : MovieClip;
	private var m_Footer : MovieClip;
	private var m_IsAnimating : Boolean;
	private var m_CharacterSkillsList : MovieClip;
	private var m_ScrollBar : MovieClip;
	private var m_Character : Character;
	private var m_VisibleListHeight : Number;
	static private var SCROLL_INTERVAL : Number;
	static private var SCROLL_SPEED : Number;
	static private var TOP_PADDING : Object;
	static private var SIDE_PADDING : Object;

	public function SkillsPage();

	private function configUI() : Void;

	private function CreateScrollBar() : Void;

	private function UpdateScrollBar() : Void;

	private function ScrollBarEventHandler(event:Object) : Void;

	public function onMouseWheel(delta:Number);

	public function SlotStartAnimation() : Void;

	public function SlotStopAnimation() : Void;

	private function UpdateFooter() : Void;

	private function SlotTokenChanged(tokenID:Number, newAmount:Number, oldAmount:Number);

	public function OnModuleActivated(config:Archive) : Void;

	public function OnModuleDeactivated();

}