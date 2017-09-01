intrinsic class com.Utils.Archive
{
	private var m_Dictionary : Object;

	public function Archive();

	public function AddEntry(name:String, value);

	public function ReplaceEntry(name:String, value);

	public function DeleteEntry(name:String) : Void;

	public function FindEntry(name:String, defaultValue);

	public function FindEntryArray(name:String) : Array;

	public function Clear();

	public function toString() : String;

}