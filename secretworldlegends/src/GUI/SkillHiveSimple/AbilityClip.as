﻿import gfx.core.UIComponent;
import com.GameInterface.FeatInterface;
import com.GameInterface.FeatData;
import com.GameInterface.Spell;
import com.GameInterface.Game.Shortcut;
import com.GameInterface.DistributedValue;
import com.GameInterface.Tooltip.*;
import com.GameInterface.Utils;
import com.Utils.LDBFormat;
import com.Utils.Colors;
import com.Utils.DragObject;
import com.Utils.Signal;
import flash.geom.Point;
import mx.utils.Delegate;
import GUI.HUD.AbilityBase;
intrinsic class GUI.SkillHiveSimple.AbilityClip extends UIComponent
{
	private var m_Ability : MovieClip;
	private var m_FeatData : FeatData;
	private var m_ResourceIconMonitor : DistributedValue;
	private var m_Tooltip : TooltipInterface;
	private var m_TooltipTimeout : Number;
	private var m_WasHit : Boolean;
	private var m_HitPos : Point;
	private var m_DragType : String;
	public var m_SignalAbilityFocus : Signal;

	public function AbilityClip();

	private function configUI();

	public function SetData(featData:FeatData);

	private function UpdateAbilityIcon() : Void;

	private function UpdateFilter();

	private function UpdateResourceIcons() : Void;

	private function onRelease() : Void;

	private function onMouseRelease(mouseBtnId:Number) : Void;

	private function onMousePress(mouseBtnId:Number) : Void;

	private function StartTooltipTimeout();

	private function StopTooltipTimeout();

	public function CloseTooltip() : Void;

	public function OpenTooltip() : Void;

	private function onRollOver() : Void;

	private function onRollOut() : Void;

	private function onDragOut() : Void;

	private function onUnload() : Void;

	private function onMouseMove() : Void;

}