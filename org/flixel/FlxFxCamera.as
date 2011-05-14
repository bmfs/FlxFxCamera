package org.flixel
{
	
	import org.flixel.*;
	import flash.display.*;
	
	/**
	 * Extends <code>FlxCamera</code> to support a texture overlay.
	 * 
	 * @author	bmfs
	 */
	public class FlxFxCamera extends FlxCamera
	{
		
		private var parent:DisplayObjectContainer;
		private var texture:Bitmap;
		
		public function FlxFxCamera(X:int,Y:int,Width:int,Height:int,Zoom:Number=0){
			super(X,Y,Width,Height,Zoom);
			
		}
		
		/**
		 * Sets the texture overlay for the camera.
		 * 
		 * @param	Texture				The texture to be applied as overlay.
		 */
		public function setTexture(Texture:CamTexture):void
		{
			
			parent = this._flashBitmap.parent;
			
			
			var w:int = width*FlxCamera.defaultZoom;
			var h:int = height*FlxCamera.defaultZoom;
			var bd:BitmapData = new BitmapData(w,h);
			
			if (texture == null){
				texture = new flash.display.Bitmap(bd);
				parent.addChildAt(texture, parent.numChildren);
			}
			
			var s:Sprite = new Sprite();
			var g:Graphics = s.graphics;
			g.beginBitmapFill(Texture.texture, null, true, false);
			g.drawRect(0, 0, w, h);
			g.endFill();
			texture.bitmapData.draw(s);
			texture.blendMode = Texture.blendMode;
			texture.alpha = Texture.alpha;
			texture.x = x;
			texture.y = y;
		}
	}
}