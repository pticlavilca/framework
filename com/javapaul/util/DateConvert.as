package com.javapaul.util
{
	public class DateConvert
	{
		public function DateConvert()
		{
		}
		public static function convertTime( number:Number )
			:String {
				number = Math.abs( number );
				var val:Array = new Array( 5 );
				val[ 0 ] = Math.floor( number / 86400 / 7 ); //weeks
				val[ 1 ] = Math.floor( number / 86400 % 7 );//days
				val[ 2 ] = Math.floor( number / 3600 % 24 );//hours
				val[ 3 ] = Math.floor( number / 60 % 60 );//mins
				val[ 4 ] = Math.floor( number % 60 );//secs
				var stopage:Boolean = false;
				var cutIndex:Number  = -1;
				for(var i:Number = 0; i < val.length; i++ ) {
					if( val[ i ] < 10 )
					val[ i ] = "0" + val[ i ];
					if( val[ i ] == "00" && i < ( val.length - 2 ) && !stopage ) {
						cutIndex = i;
					} else {
						stopage = true;
					}
				}
				val.splice( 0, cutIndex + 1 );
				return val.join( ":" );
		}
		public static function converScore(pre:String, number:Number):String{
			var string:String = String (number);
			pre = pre.substr(0,pre.length - string.length);
			return String(pre + string); 
			
		}

	}
}