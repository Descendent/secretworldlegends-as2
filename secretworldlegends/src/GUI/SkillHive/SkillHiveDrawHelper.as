import flash.geom.Matrix;
intrinsic class GUI.SkillHive.SkillHiveDrawHelper
{
	static public var s_RingThickness : Number;
	static public var s_ShadeThickness : Number;
	static public var s_ShadowColor : Number;

	static public function MakeArch(clip:MovieClip, radius:Number, angle:Number, thickness:Number, startAngle:Number, color:Number, alpha:Number, strokeWidth:Number, strokeColor:Number, drawShadow:Boolean, shadowBleedColor:Number);

	/**
     * Draws the outer and inner part of a shade
     * @param	shade
     * @param	pieceEnd
     * @param	pieceSize
     * @param	radius
     * @param	thickness
     * @param	end
     * @param	pieces
     */
	static public function DrawShade(clip:MovieClip, pieceEnd:Number, pieceSize:Number, radius:Number, thickness:Number, end:Number, pieces:Number, bleedColor:Number) : Void;

	/** DRAWING FUNCTIONALITY **/
	static private function CreateGradientBoxMatrix(radius:Number, thickness:Number) : Matrix;

}