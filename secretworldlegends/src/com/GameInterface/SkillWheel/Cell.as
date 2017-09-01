import com.GameInterface.SkillWheel.SkillWheel;
intrinsic class com.GameInterface.SkillWheel.Cell
{
	public var m_Id : Number;
	public var m_ClusterId : Number;
	public var m_Name : String;
	public var m_Abilities : Array;
	public var m_Completion : Number;
	public var m_TrainedAbilities : Number;

	public function Cell(id:Number, clusterId:Number);

}