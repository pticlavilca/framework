package com.javapaul.score
{
	import com.javapaul.util.DateConvert;
	
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.text.TextField;
	
	public class MainScore extends EventDispatcher
	{
		private var zero:String;
		private var score:Number = 0;
		private var textField:TextField;
		
		public function MainScore(_zero:String, _textField:TextField)
		{
			this.zero = _zero;
			this.textField = _textField;
		}
		
		public function changeScore(boolean:Boolean): void{
			if(boolean){
				score ++;
				this.dispatchEvent(new ScoreEvent(ScoreEvent.SCORE, true));
			}
			else{
				score --;
				this.dispatchEvent(new ScoreEvent(ScoreEvent.SCORE, false));
			}
			
			this.textField.text = DateConvert.converScore(this.zero,score); 
			
		}
		
	}
}