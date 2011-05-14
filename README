Flixel Camera class with support for a texture overlay

### Example ###
Instantiate two cameras with different textures:

var specialCam:FlxFxCamera = new FlxFxCamera(0,0,FlxG.width/2,FlxG.height);
var specialCam2:FlxFxCamera = new FlxFxCamera(FlxG.width*FlxCamera.defaultZoom/2,0,FlxG.width/2,FlxG.height);
// reset default camera with FlxFxCamera
FlxG.resetCameras(specialCam);
FlxG.addCamera(specialCam2);

specialCam.setTexture( CamTexture.tvRGB() );
specialCam2.setTexture( CamTexture.scaleUp(FlxCamera.defaultZoom) );