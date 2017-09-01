import gfx.core.UIComponent;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import mx.utils.Delegate;
import com.Components.WeaponResources.ResourceDataObject;
intrinsic class com.Components.ResourceBase extends UIComponent
{
	static public var DIRECTION_LEFT : String;
	static public var DIRECTION_RIGHT : String;
	static public var DISPLAY_BAR : Number;
	static public var DISPLAY_POINTS : Number;
	public var m_IsTweening : Boolean;
	private var m_MaxAmount : Number;
	private var m_PreviousAmount : Number;
	private var m_Amount : Number;
	private var m_IsTargetResourceBuilder : Boolean;
	private var m_IsDirectional : Boolean;
	private var m_ResourceDisplayType : Number;
	private var m_Throttle : Boolean;
	private var m_IsInCombat : Boolean;
	private var m_ResourceData : ResourceDataObject;
	private var m_Icon : MovieClip;
	private var m_Background : MovieClip;

	public function ResourceBase();

	private function configUI();

	public function SetAmount(amount:Number, snap:Boolean);

	public function SetScale(scale:Number);

	public function SetPosition(x:Number, y:Number);

	public function ToggleCombat(isInCombat:Boolean);

	public function SetThrottle(throttle:Boolean);

	public function SetData(resourceData:ResourceDataObject);

	public function GetTooltipId() : Number;

	public function IsTargetResourceBuilder();

	public function IsDirectional();

	public function GetResource() : Number;

	private function Layout(snap:Boolean);

}