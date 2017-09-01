import com.GameInterface.SkillWheel.Cluster;
import com.GameInterface.Game.Character;
import com.GameInterface.FeatInterface;
import com.GameInterface.FeatData;
import com.Utils.Signal;
import GUI.SkillHive.SkillHiveDrawHelper;
import mx.utils.Delegate;
intrinsic class GUI.SkillHive.ClusterClip extends MovieClip
{
	private var CLUSTER_COLOR_RANGED : Number;
	private var CLUSTER_COLOR_RANGED_PROGRESS : Number;
	private var CLUSTER_COLOR_RANGED_FULL : Number;
	private var CLUSTER_COLOR_RANGED_LIGHT : Number;
	private var CLUSTER_COLOR_MELEE : Number;
	private var CLUSTER_COLOR_MELEE_PROGRESS : Number;
	private var CLUSTER_COLOR_MELEE_FULL : Number;
	private var CLUSTER_COLOR_MELEE_LIGHT : Number;
	private var CLUSTER_COLOR_MAGIC : Number;
	private var CLUSTER_COLOR_MAGIC_PROGRESS : Number;
	private var CLUSTER_COLOR_MAGIC_FULL : Number;
	private var CLUSTER_COLOR_MAGIC_LIGHT : Number;
	private var CLUSTER_COLOR_MISC : Number;
	private var CLUSTER_COLOR_MISC_PROGRESS : Number;
	private var CLUSTER_COLOR_MISC_FULL : Number;
	private var CLUSTER_COLOR_MISC_LIGHT : Number;
	private var CLUSTER_COLOR_AUXILLIARY : Number;
	private var CLUSTER_COLOR_AUXILLIARY_PROGRESS : Number;
	private var CLUSTER_COLOR_AUXILLIARY_FULL : Number;
	private var CLUSTER_COLOR_AUXILLIARY_LIGHT : Number;
	private var CLUSTER_COLOR_AUG_DAMAGE : Number;
	private var CLUSTER_COLOR_AUG_DAMAGE_PROGRESS : Number;
	private var CLUSTER_COLOR_AUG_DAMAGE_FULL : Number;
	private var CLUSTER_COLOR_AUG_DAMAGE_LIGHT : Number;
	private var CLUSTER_COLOR_AUG_SUPPORT : Number;
	private var CLUSTER_COLOR_AUG_SUPPORT_PROGRESS : Number;
	private var CLUSTER_COLOR_AUG_SUPPORT_FULL : Number;
	private var CLUSTER_COLOR_AUG_SUPPORT_LIGHT : Number;
	private var CLUSTER_COLOR_AUG_HEALING : Number;
	private var CLUSTER_COLOR_AUG_HEALING_PROGRESS : Number;
	private var CLUSTER_COLOR_AUG_HEALING_FULL : Number;
	private var CLUSTER_COLOR_AUG_HEALING_LIGHT : Number;
	private var CLUSTER_COLOR_AUG_SURVIVABILITY : Number;
	private var CLUSTER_COLOR_AUG_SURVIVABILITY_PROGRESS : Number;
	private var CLUSTER_COLOR_AUG_SURVIVABILITY_FULL : Number;
	private var CLUSTER_COLOR_AUG_SURVIVABILITY_LIGHT : Number;
	static public var CLUSTER_ANGLE_DISTANCE : Object;
	static public var CELL_ANGLE_DISTANCE : Object;
	private var m_Cluster : Cluster;
	public var m_Angle : Number;
	public var m_Radius : Number;
	public var m_StartAngle : Number;
	public var m_ParentCluster : ClusterClip;
	public var m_Character : Character;
	public var m_ClusterDistance : Number;
	public var m_DrawShadow : Boolean;
	private var m_SubClusterClips : Array;
	private var m_EmptyColor : Number;
	private var m_ProgressColor : Number;
	private var m_FullColor : Number;
	private var m_LightColor : Number;
	public var SignalClick : Signal;
	public var SignalRollOver : Signal;
	public var SignalRollOut : Signal;
	private var m_NameLabel : MovieClip;
	private var m_DrawClip : MovieClip;
	private var m_Lock : MovieClip;
	public var m_IsLocked : Boolean;
	public var m_Alpha : Number;
	private var m_Thickness : Number;

	public function ClusterClip();

	public function Draw();

	public function DrawCells();

	public function UpdateLabel();

	public function SetCluster(cluster:Cluster);

	public function UpdateColors();

	public function GetCluster() : Cluster;

	public function GetID();

	public function GetColor() : Number;

	public function AddSubClusterClip(subClusterClip:MovieClip);

	public function GetSubClusterClip(clusterID:Number);

	public function IsLocked() : Boolean;

	public function SlotClick();

	public function HasData();

	public function SlotRollOver();

	public function SlotRollOut();

}