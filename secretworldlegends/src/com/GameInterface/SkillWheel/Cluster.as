import com.GameInterface.SkillWheel.SkillWheel;
intrinsic class com.GameInterface.SkillWheel.Cluster
{
	public var m_Id : Number;
	public var m_Name : String;
	public var m_Cells : Array;
	public var m_Clusters : Array;
	public var m_Completion : Number;
	public var m_TrainedAbilities : Number;
	public var m_DependenyCluster : Number;
	public var m_DependenyCells : Array;
	public var m_OverrideLocked : Boolean;

	public function Cluster(id:Number);

	public function SetDependency(clusterID:Number, cellIDArray:Array);

}