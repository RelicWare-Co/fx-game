package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.input.keyboard.FlxKey;

class Player extends FlxSprite
{
	public function new(X:Float, Y:Float)
	{
		super(X, Y);

		loadGraphic("assets/images/knigth.png", true, 16, 23);

		// Walking speed
		maxVelocity.x = 100;
		maxVelocity.y = 100;
		// Gravity
		// acceleration.y = 400;
		// Deceleration (sliding to a stop)
		drag.x = maxVelocity.x * 4;
		drag.y = maxVelocity.y * 4;

    scale.x = 1.5;
    scale.y = 1.5;
		// Tweak the bounding box for better feel
		// width = 8;
		// height = 10;
		// offset.x = 3;
		// offset.y = 3;

		animation.add("idle", [3, 0, 1, 2], 9, true);
		animation.add("walk", [4, 5, 6, 7], 14, true);
		animation.add("walk_back", [4, 5, 6, 7], 14, true, true);
		animation.add("flail", [1, 2, 3, 0], 18, true);
		animation.add("jump", [4], 0, false);
	}

	override public function update(elapsed:Float):Void
	{
		acceleration.x = 0;
		acceleration.y = 0;
		if (FlxG.keys.anyPressed([LEFT, A]))
		{
			acceleration.x -= drag.x;
		}
		if (FlxG.keys.anyPressed([RIGHT, D]))
		{
			acceleration.x += drag.x;
		}
		if (FlxG.keys.anyPressed([UP, W]))
		{
			acceleration.y -= drag.y;
		}
		if (FlxG.keys.anyPressed([DOWN, S]))
		{
			acceleration.y += drag.y;
		}
		else if (velocity.x > 0)
		{
			animation.play("walk");
		}
		else if (velocity.x < 0)
		{
			animation.play("walk_back");
		}
		else
		{
			animation.play("idle");
		}

    if (FlxG.keys.anyJustPressed([L])) {
      FlxG.log.add("Hola");
			FlxG.switchState(Nivel2.new);
    }

		super.update(elapsed);
	}
}
