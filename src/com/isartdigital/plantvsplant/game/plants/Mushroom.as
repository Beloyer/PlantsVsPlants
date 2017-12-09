package com.isartdigital.plantvsplant.game.plants 
{
	import flash.display.MovieClip;
	
	/**
	 * ...
	 * @author Allan
	 */
	public class Mushroom extends Plants 
	{
		public const FRAME_TO_SHOOT: int = 120;
		public var actualFrame: int;
		
		public function Mushroom() 
		{
			super();
			speed = 2;
			life = 8;
			damage = 2;
		}
		
		override public function move():void 
		{	
			if (actualFrame == FRAME_TO_SHOOT)
			{
				var shoot: MushroomShoots = new MushroomShoots();
				addChild(shoot);
				actualFrame = 0;
				x += speed;
			}
			
			else 
			{
				x += speed
				actualFrame ++;
			}
		}
		
	}

}