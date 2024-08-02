package;

import flixel.FlxG;
import flixel.FlxState;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		FlxG.mouse.visible = true;
		FlxG.debugger.visible = true;
		FlxG.autoPause = false;
		// Background
		FlxG.state.bgColor = 0xffacbcd7;
		var player:Player = new Player(32, 176);
		add(player);
		var weapon:Weapon = new Weapon(player.x, player.y, player);
		add(weapon);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
