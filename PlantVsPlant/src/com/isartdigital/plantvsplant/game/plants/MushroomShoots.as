package com.isartdigital.plantvsplant.game.plants 
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Allan
	 */
	public class MushroomShoots extends Mushroom
	{
		
		public function MushroomShoots() 
		{
			super();
			life = 1;
			speed = 5;
		}
		
		override public function move():void 
		{
			x += speed;
		}
		
	}

}