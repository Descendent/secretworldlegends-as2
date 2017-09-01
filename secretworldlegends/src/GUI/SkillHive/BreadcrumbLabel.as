import com.Utils.Signal;
intrinsic class GUI.SkillHive.BreadcrumbLabel extends gfx.controls.Label
{
	private var m_LinkedMovieClip : MovieClip;
	private var m_IsInteractable : Boolean;
	public var SignalLabelPressed : Signal;

	public function BreadcrumbLabel();

	public function SetLinkedMovieClip(mc:MovieClip);

	public function IsInteractable();

	public function onRollOver();

	public function onRollOut();

	public function onDragOut();

	public function onRelease();

}