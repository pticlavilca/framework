package com.javapaul.chronometer
{

	import com.javapaul.chronometer.factorytimer.FactoryTimer;
	import com.javapaul.chronometer.factorytimer.event.FactoryTimerCompleteEvent;
	import com.javapaul.chronometer.factorytimer.event.FactoryTimerCurrentEvent;
	import com.javapaul.chronometer.factorytimer.event.FactoryTimerInitEvent;

	import flash.display.MovieClip;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.text.TextField;
	
	public class MainChronometer extends EventDispatcher
	{
		private var movieClip:MovieClip;
		private var textField:TextField;
		private var seconds:Number;
		public function MainChronometer(_movieClip:MovieClip, _textField:TextField, _seconds:Number)
		{
			this.movieClip = _movieClip;
			this.textField = _textField;
			this.seconds = _seconds;

						
		}
		public function init():void{
		
			var factoryTimer:FactoryTimer = new FactoryTimer(this.seconds);
			factoryTimer.addEventListener(FactoryTimerInitEvent.TIMER_INIT, timerInit);
			factoryTimer.addEventListener(FactoryTimerCurrentEvent.CURRENT_TIMER, currentTimer);
			factoryTimer.addEventListener(FactoryTimerCompleteEvent.COMPLETE, complete);
			
			factoryTimer.initTimer();
		}
		private function timerInit(event:FactoryTimerInitEvent):void{
			this.dispatchEvent(new ChronometerInitEvent(ChronometerInitEvent.INIT,true));
		}
		private function currentTimer(event:FactoryTimerCurrentEvent){
			this.textField.text = event.time;
		}
		private function complete(event:FactoryTimerCompleteEvent){
			this.dispatchEvent(new ChronometerFinishEvent(ChronometerFinishEvent.FINISH, true));
		}
		

			
		

	}
}