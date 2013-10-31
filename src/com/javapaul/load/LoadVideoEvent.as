/**
 * Created with IntelliJ IDEA.
 * User: Paul
 * Date: 31/10/13
 * Time: 11:41 AM
 * To change this template use File | Settings | File Templates.
 */
package com.javapaul.load {
import flash.events.Event;

public class LoadVideoEvent extends Event {

    public static const LOAD_VIDEO:String =  "LOAD_VIDEO";
    public var isLoad:Boolean;
    public var time:int;
    public var duration:int;

    public function LoadVideoEvent(type:String, _isLoad:Boolean, _time:int, _duration:int) {
        super(type)
        this.isLoad = _isLoad;
        this.time = _time;
        this.duration  = _duration
    }
}
}
