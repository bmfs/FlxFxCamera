package org.flixel {
	
	import flash.display.*;
	
	/**
	 * Represents the texture which can be set as an overlay in FlxFxCamera.
	 * 
	 * @author	bmfs
	 */
	public class CamTexture{
		
		public var alpha:Number;
		public var blendMode:String;
		public var texture:BitmapData;
		
		
		public function CamTexture(T:BitmapData, Alpha:Number, Blend:String){
			this.texture = T;
			this.alpha = Alpha;
			this.blendMode = Blend;
		}
		
		
		/*********************************
		 * Preset Textures
		 *********************************/
		
		/**
		 * Decomposes each pixel in 3 pixels(RGB). (kind of TV effect)
		 */
		public static function tvRGB():CamTexture
		{
			var t:BitmapData = new BitmapData(2, 2, false, 0x000000);
			
			t.setPixel(0, 0, 0xff0000);
			t.setPixel(1, 0, 0x00ff00);
			t.setPixel(0, 1, 0x0000ff);
			
			return new CamTexture(t, 1, BlendMode.MULTIPLY);
		}
		
		/**
		 * Gives bevel to each scaledUp Pixel
		 */
		public static function scaleUp(upscale:int):CamTexture
		{
			var t:BitmapData = new BitmapData(upscale, upscale, false, 0x808080);
			
			t.setPixel(0, 0, 0xffffff);
			t.setPixel(upscale-1, upscale-1, 0x0);
			for(var x:int=1;x<upscale;x++) {
				t.setPixel(x, 0, 0xE0E0E0);
				t.setPixel(x, 1, 0xffffff);
				t.setPixel(x, upscale-1, 0x0);
			}
			for(var y:int=1;y<upscale;y++) {
				t.setPixel(0, y, 0xffffff);
				t.setPixel(upscale-1, y, 0x0);
			}
			
			return new CamTexture(t, 0.3, BlendMode.OVERLAY);
		}
	}
}