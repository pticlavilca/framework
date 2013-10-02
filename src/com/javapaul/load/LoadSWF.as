package com.javapaul.load
{
	
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.net.URLRequest;
	
	public class LoadSWF extends EventDispatcher
	{
		
		private var name:String;
		
		
		
		private var loader:Loader;
		private var _class:Class;
				
		
		public function LoadSWF(url:String, _name:String)
		{
			this.name = _name;
		
			
			loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, eventLoadComplete);
			loader.load(new URLRequest(url));
			
			
		}
		
		public function eventLoadComplete(event:Event)
			:void{
				_class = event.target.applicationDomain.getDefinition(name) as Class;
				this.dispatchEvent(new LoadSWFEvent(LoadSWFEvent.LOAD_COMPLETE, true, _class));
			}
		
	}
}