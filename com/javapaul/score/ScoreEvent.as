package com.javapaul.score
{
	import flash.events.Event;
	
	public class ScoreEvent extends Event
	{
		public static const SCORE:String = "SCORE";
		public var isUp:Boolean;
		public function ScoreEvent(type:String, _isUp:Boolean)
		{
			super(type);
			this.isUp = _isUp;
		}
	}
}