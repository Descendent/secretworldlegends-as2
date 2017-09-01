import flash.filters.ConvolutionFilter;
import GUI.SkillHive.ClusterClip;
import GUI.SkillHive.CellClip;
import GUI.SkillHive.SkillHiveDrawHelper;
import GUI.SkillHive.SkillhiveCellTooltip;
import com.Utils.Signal;
import com.Utils.LDBFormat;
import com.Utils.Colors;
import com.GameInterface.SkillWheel.Cell;
import com.GameInterface.SkillWheel.Cluster;
import com.GameInterface.Game.Character;
import com.GameInterface.FeatInterface;
import com.GameInterface.FeatData;
import com.GameInterface.Log;
import flash.geom.Point;
import flash.geom.Matrix;
import flash.filters.DropShadowFilter;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic class GUI.SkillHive.AbilityWheel extends MovieClip
{
	private var m_Id : Number;
	private var m_Name : String;
	private var m_ShortName : String;
	private var m_Character : Character;
	private var m_ButtonName : String;
	private var m_IsCurrentWheel : Boolean;
	public var SignalCellSelected : Signal;
	public var SignalCellAbilitySelected : Signal;
	private var m_IsInitialized : Boolean;
	private var m_Clusters : Array;
	private var m_StartClusterList : Object;
	private var m_ClusterLookup : Object;
	private var m_CellArray : Array;
	private var m_LeafClusterIdArray : Array;
	private var m_ParentClusterIdArray : Array;
	private var m_SelectedCellClip : CellClip;
	private var m_ClusterDistance : Number;
	private var m_WheelBackground : MovieClip;
	private var m_TemplateFilter : MovieClip;
	private var m_RingInnerRadius : Number;
	private var m_BackgroundInnerRadius : Number;
	private var m_DrawShadow : Boolean;
	private var m_HoveredCell : CellClip;
	private var m_CellTooltip : MovieClip;
	private var m_ClusterTooltip : MovieClip;
	private var m_HoveringTooltip : Boolean;
	private var m_DrawClusterTooltip : MovieClip;
	private var m_NumAbilities : Number;
	private var m_TrainedAbilities : Number;
	public var m_TemplateFilterClips : Array;
	public var m_TemplateFilterArray : Array;
	public var DAMAGE_AUGMENT : Number;
	public var SUPPORT_AUGMENT : Number;
	public var HEALING_AUGMENT : Number;
	public var SURVIVABILITY_AUGMENT : Number;

	public function AbilityWheel();

	public function InitializeWheel();

	/** Accessors **/
	public function SetId(id:Number);

	public function SetName(name:String);

	public function SetShortName(name:String);

	public function GetId() : Number;

	public function GetName() : String;

	public function GetShortName() : String;

	public function SetButtonName(buttonName);

	public function GetButtonName() : String;

	public function SetStartClusters(clusters:Object);

	public function SetClusters(clusters:Array);

	public function SetCharacter(character:Character);

	public function SetClusterDistance(clusterDistance:Number);

	public function GetClusterDistance() : Number;

	public function SetDrawShadow(drawShadow:Boolean);

	public function SetWheelRadius(ringInnerRadius:Number, backgroundInnerRadius:Number);

	public function SetTemplateFilterArray(templateArray:Array);

	public function SetWheelBackground(background:MovieClip);

	public function SetTemplateFilterClip(templateFilterClip:MovieClip);

	public function FindCell(clusterID:Number, cellID:Number) : Cell;

	public function FindCluster(clusterID:Number) : Cluster;

	public function HasCluster(clusterId:Number) : Boolean;

	public function GetCellClip(clusterIdx:Number, cellIdx:Number) : CellClip;

	public function GetCompletionText() : String;

	public function GetTotalCompletion() : String;

	public function GetTotalAbilities() : String;

	public function GetSelectedCell() : Cell;

	public function GetSelectedCellClip() : CellClip;

	public function SetSelectedCellFromIndex(clusterIndex:Number, cellIndex:Number);

	/** DRAWING FUNCTIONALITY **/
	public function MakeCluster(id:Number, angle:Number, radius:Number, startAngle:Number, parentCluster:MovieClip) : MovieClip;

	public function Redraw();

	public function DrawBackground();

	public function DrawTemplates();

	public function ClearTemplateFilterClips();

	public function IsLeafCluster(clusterID) : Boolean;

	public function IsParentCluster(clusterID) : Boolean;

	public function DrawSectorLine(parentClip:MovieClip, lineThickness:Number, lineColor:Number, lineAlpha:Number, startPoint:Point, startAngle:Number, startDistance:Number, endDistance:Number);

	public function CalculatePointOnCircumference(centerPoint:Point, distance:Number, angle:Number) : Point;

	public function DrawCellTemplate(cellClip:CellClip);

	public function DrawSector(parentClip:MovieClip, fillColor:Number, fillAlpha:Number, lineThickness:Number, lineColor:Number, lineAlpha:Number, startPoint:Point, startAngle:Number, endAngle:Number, startDistance:Number, endDistance:Number, useGradient:Boolean);

	/** Template Functionality **/
	public function GetAbilitiesInTemplate(clusterId:Number, cellId:Number) : Array;

	public function IsFeatInTemplate(featID:Number);

	/** MOUSE EVENTS **/
	public function SlotRollOverCluster(cluster:ClusterClip);

	public function SlotRollOutCluster(cluster:ClusterClip);

	public function SlotClickCell(cell:CellClip);

	public function SlotRollOutCell(cell:CellClip);

	public function SlotRollOverCell(cell:CellClip);

	public function SlotCellPressed(cellClip:CellClip);

	public function DeselectCell();

	public function SelectCell(clip:CellClip);

	/** CELL/CLUSTER TOOLTIPS **/
	public function OpenCellTooltip();

	public function CheckRemoveCellTooltip();

	public function RemoveCellTooltip();

	public function RemoveClusterTooltip();

	public function MakeClusterTooltip(clusterClip:ClusterClip) : MovieClip;

	public function MakeCellTooltip(cellClip:CellClip) : MovieClip;

	public function onRollOverTooltip() : Void;

	public function onRollOutTooltip() : Void;

	public function onPressTooltip() : Void;

	public function SlotTooltipAbilityPressed(abilityIndex:Number);

	/** COMPLETION/SKILLPOINTS **/
	public function CalculateNumAbilities();

	public function GetNumClusterAbilities(clusterID:Number) : Number;

	public function CalculateCompletion();

	public function CalculateCellCompletion(cell:Cell) : Number;

	public function CalculateClusterCompletion(clusterID:Number);

	public function SetIsCurrentWheel(value:Boolean) : Void;

	public function GetIsCurrentWheel() : Boolean;

}