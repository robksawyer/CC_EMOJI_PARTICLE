package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.effects.particles.FlxParticle;
import flixel.addons.effects.FlxTrail;
import flixel.util.FlxRandom;

class EmojiParticle extends FlxParticle
{

  public function new() 
  {
    super();

    var randEmoji = FlxRandom.intRanged(158,167);
    loadGraphic("assets/images/20x20/" + randEmoji + ".png");
    var trail = new FlxTrail(this, null, 10, 1, 0.4);

    //this.alpha = 0.4;
    exists = false;

  }

  override function update():Void
  {
    if(alpha > 0)
    {
      this.alpha -= 0.003;
    }
    super.update();
  }

  override public function onEmit():Void
  {
    exists = true;
    visible = true;
    //this.alpha = 0.4;
  }
  
}