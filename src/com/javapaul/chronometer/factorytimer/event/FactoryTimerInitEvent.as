package com.javapaul.chronometer.factorytimer.event
{
	import flash.events.Event;
	
	public class FactoryTimerInitEvent extends Event
	{
		public static const TIMER_INIT:String = "TIMER_INIT";
		public var isInit:Boolean;
		public function FactoryTimerInitEvent(type:String, _isInit:Boolean)
		{
			super(type);
			isInit = _isInit;
		}
	}
}