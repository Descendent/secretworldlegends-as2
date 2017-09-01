intrinsic class com.Components.MultiColumnList.MCLItem
{
	private var m_Id : Object;

	public function MCLItem(id:Object);

	public function GetId() : Object;

	public function SetId(id:Object);

	public function Compare(sortColumn:Number, item:MCLItem);

	private function CompareString(string1:String, string2:String);

	private function CompareNumber(number1:Number, number2:Number);

}