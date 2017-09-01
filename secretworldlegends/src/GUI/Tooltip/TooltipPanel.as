import flash.geom.Point;
import gfx.controls.Label;
import mx.utils.Delegate;
import com.GameInterface.DistributedValue;
import com.GameInterface.Tooltip.TooltipData;
import com.GameInterface.Tooltip.TooltipUtils;
import com.GameInterface.Utils;
import com.Utils.LDBFormat;
import GUI.Tooltip.TooltipEntry;
import com.Utils.Colors;
intrinsic class GUI.Tooltip.TooltipPanel
{
	private var m_Width : Number;
	private var m_Padding : Number;
	private var m_ShowIcon : Boolean;
	private var m_CompareMode : Boolean;
	private var m_CenterHeader : Boolean;
	private var m_CurrentlyEquipped : Boolean;
	private var m_TooltipEntries : Array;
	public var SignalSizeChanged : com.Utils.Signal;
	private var m_ResolutionScaleMonitor : DistributedValue;
	private var m_TooltipScaleMonitor : DistributedValue;
	public var m_Clip : MovieClip;
	private var m_IconView : MovieClip;
	private var m_WeaponIconView : MovieClip;
	private var m_AttachingHeaderWithWeaponIcon : Boolean;
	private var m_ContentSize : Point;

	public function TooltipPanel(parentClip:MovieClip, tooltipData:TooltipData, compareMode:Boolean);

	private function CreateTextField(parent:MovieClip, htmlText:String, bold:Boolean) : TextField;

	public function ConvertNewLines(text:String);

	private function AddTextField(htmlText:String, bold:Boolean) : Void;

	private function AddDivider();

	private function RemoveOverflowDividers();

	private function RemoveOverflowPadding();

	private function AddPadding(padding:Number);

	private function Layout() : Void;

	public function GetSize() : flash.geom.Point;

	public function SetPosition(pos:flash.geom.Point) : Void;

	public function RemoveMovieClip() : Void;

	public function CreateCastTimeView(castTime:Number, recastTime:Number) : MovieClip;

	public function CreateIconFromName(iconName:String);

	public function CreateWeaponsIcon(weaponType) : MovieClip;

	public function CreateWeaponRequirementIcon(weaponRequirement) : MovieClip;

	public function CreateIcon(iconID:com.Utils.ID32) : MovieClip;

	public function OnIconLoaded(iconMC:MovieClip);

	public function ShowCloseButton(show:Boolean);

	public function SetCompareMode(compareMode:Boolean) : Void;

	public function ShowIcon(show:Boolean);

	private function ColorToText(color:Number) : String;

}