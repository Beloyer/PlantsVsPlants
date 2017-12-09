package com.isartdigital.plantvsplant.game.plants 
{
	import flash.display.MovieClip;
	
	/**
	 * ...
	 * @author Allan
	 */
	public class Plants extends MovieClip 
	{
		public static var list:Vector.<Plants> = new Vector.<Plants>();
		public var speed: int;
		public var life: int;
		public var damage: int;
		public var price: int;
		
		public function Plants() 
		{
			super();
			list.push(this);
		}
		
		public function move():void
		{
			x += speed;
		}
	}

}