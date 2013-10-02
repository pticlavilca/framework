package com.javapaul.chronometer.factorytimer

{
	import com.javapaul.util.DateConvert;
	import com.javapaul.chronometer.factorytimer.event.FactoryTimerCompleteEvent;
	import com.javapaul.chronometer.factorytimer.event.FactoryTimerCurrentEvent;
	import com.javapaul.chronometer.factorytimer.event.FactoryTimerInitEvent;
	
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.events.TimerEvent;
	import flash.utils.Timer;

	public class FactoryTimer extends EventDispatcher
	{
		private var timer:Timer;
				
		
		public function FactoryTimer(_seconds:Number){
			timer = new Timer(1000,_seconds);
			addDispatcherTimer(timer);
			
		}
		public function initTimer()
			:void{
				timer.start();
				
				dispatchEvent(new FactoryTimerInitEvent(FactoryTimerInitEvent.TIMER_INIT, true));
			}
		public function finishTimer()
			:void{
				timer.stop();
			}
		private function addDispatcherTimer(ieventdispatcher:IEventDispatcher)
			:void{
				ieventdispatcher.addEventListener(TimerEvent.TIMER, handlerTimer);
				ieventdispatcher.addEventListener(TimerEvent.TIMER_COMPLETE, handlerTimerComplete);
			}
		private function handlerTimer(event:TimerEvent)
			:void{
				
				this.dispatchEvent(new FactoryTimerCurrentEvent(FactoryTimerCurrentEvent.CURRENT_TIMER,true,DateConvert.convertTime(timer.currentCount)));
				
			}
		private function handlerTimerComplete(event:TimerEvent)
			:void{
				this.dispatchEvent(new FactoryTimerCompleteEvent(FactoryTimerCompleteEvent.COMPLETE, true));
			}
		
	}
}