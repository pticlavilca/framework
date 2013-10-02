package com.javapaul.chronometer.factorytimer.event
{
	import flash.events.Event;
	
	public class FactoryTimerCurrentEvent extends Event
	{
		public static const CURRENT_TIMER:String = "CURRENT_TIMER";
		public var isCurrent:Boolean;
		public var time:String;
		
		public function FactoryTimerCurrentEvent(type:String, _isCurrent:Boolean, _time:String)
		{
			super(type);
			this.isCurrent = _isCurrent;
			this.time = _time;
		}
	}
}