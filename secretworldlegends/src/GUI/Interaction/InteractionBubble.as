import flash.geom.Point;
import gfx.core.UIComponent;
import com.GameInterface.Game.Dynel;
import com.Utils.LDBFormat;
import com.GameInterface.ProjectUtils;
intrinsic class GUI.Interaction.InteractionBubble extends UIComponent
{
	private var m_Dynel : Dynel;
	private var m_InteractionType : Number;
	private var m_Background : MovieClip;
	private var m_Text : TextField;

	public function InteractionBubble();

	public function configUI();

	private function UpdateText();

	public function onEnterFrame();

	public function GetDynel() : Dynel;

}