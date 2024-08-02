package;

import flixel.FlxG;
import flixel.FlxState;

class Nivel2 extends FlxState
{
  override public function create():Void
  {
    super.create();
    // Background
    FlxG.state.bgColor = 0xffacbcd7;
    var player:Player = new Player(32, 176);
    add(player);
  }

  override public function update(elapsed:Float):Void
  {
    super.update(elapsed);
  }
}