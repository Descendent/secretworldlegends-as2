import com.GameInterface.Game.Character;
import com.GameInterface.Game.GroupElement;
import com.GameInterface.Game.BuffData;
import com.GameInterface.Log;
import com.GameInterface.DistributedValue;
import com.GameInterface.Tooltip.TooltipData;
import com.GameInterface.Tooltip.TooltipManager;
import com.GameInterface.Tooltip.TooltipInterface;
import com.Utils.LDBFormat;
import flash.geom.Point;
import mx.utils.Delegate;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import gfx.core.UIComponent;
intrinsic class com.Components.States extends UIComponent
{
	private var m_States : Object;
	private var m_NumStacks : Number;
	private var m_DisabledAlpha : Number;
	private var m_Character : Character;
	private var m_GroupElement : GroupElement;
	private var m_FadeTimer : Number;
	private var m_Hindered : MovieClip;
	private var m_Impaired : MovieClip;
	private var m_Weakened : MovieClip;
	private var m_Afflicted : MovieClip;
	private var m_Tooltip : TooltipInterface;
	private var m_CurrentTooltipClip : MovieClip;

	public function States();

	private function onMouseMove();

	private function ShowTooltip(state:Object);

	private function SlotTooltipLayout();

	private function CloseTooltip();

	public function AddExistingStates();

	public function SetCharacter(character:Character);

	public function SetGroupElement(groupElement:GroupElement);

	public function SlotCharacterEntered();

	public function SlotCharacterExited();

	public function SlotStateAdded(stateID:Number, buffID:Number, snap:Boolean);

	public function SlotStateUpdated(stateID:Number, buffID:Number);

	public function SlotStateRemoved(stateID:Number, buffID:Number);

	public function HideIfEmpty();

	public function OnFadeTimer();

	public function ClearAllStates();

	public function SetStatesVisibility(visibility:Boolean);

}