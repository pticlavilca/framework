/**
 * Created with IntelliJ IDEA.
 * User: Paul
 * Date: 7/10/13
 * Time: 11:38 AM
 * To change this template use File | Settings | File Templates.
 */
package com.javapaul.event {
import flash.events.Event;

public class CompleteEvent extends Event{

    public static const COMPLETE:String = "COMPLETE";
    public var isComplete:Boolean = false;


    public function CompleteEvent(type:String,  _isComplete:Boolean){
        super(type)
        this.isComplete = _isComplete;

    }
}
}
