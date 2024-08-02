package;

import flixel.FlxSprite;
import flixel.math.FlxAngle;

class Weapon extends FlxSprite
{
	public var parent:FlxSprite;

	public function new(X:Float, Y:Float, parent:FlxSprite)
	{
		super(X, Y);
		this.parent = parent;
		offset.y = -parent.height / 2;
		loadGraphic("assets/images/MPX/MPX Stock.png");
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		x = parent.x;
		y = parent.y;
		var newAngle = FlxAngle.angleBetweenMouse(this, true);
		angle = newAngle;
    if ((newAngle > 90 && newAngle < 180) || (newAngle < -90 && newAngle > -180)) {
      flipY = true;
    } else {
      flipY = false;
    }

	}
}
