/**
 * Created with IntelliJ IDEA.
 * User: Paul
 * Date: 7/10/13
 * Time: 12:55 PM
 * To change this template use File | Settings | File Templates.
 */
package com.javapaul.event {
import flash.events.Event;

public class ReadyEvent extends Event{

    public static const READY:String = "GO"
    public var isReady:Boolean;

    public function ReadyEvent(type:String, _isReady:Boolean) {
        super(type);
        this.isReady = _isReady;


    }
}
}
