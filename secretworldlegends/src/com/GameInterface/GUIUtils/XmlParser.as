intrinsic class com.GameInterface.GUIUtils.XmlParser
{
	private var m_Values : Object;

	public function XmlParser(p_xml:XMLNode);

	private function recursiveXmlLoop(p_xmlnode:XMLNode, p_valueobject:Object) : Void;

	private function getAttributes(p_xmlnode:XMLNode, p_valueobject:Object) : Object;

	public function GetValue(p_name:String);

	private function getValueByName(p_name:String, p_valueobject:Object);

	public function hasAttribute(p_context:XMLNode);

}