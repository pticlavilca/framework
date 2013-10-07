/**
 * Created with IntelliJ IDEA.
 * User: Paul
 * Date: 7/10/13
 * Time: 12:55 PM
 * To change this template use File | Settings | File Templates.
 */
package com.javapaul.event {
import flash.events.Event;

public class Ready extends Event{

    private static const READY:String = "GO"
    private var isReady:Boolean;

    public function Ready(type:String, _isReady:Boolean) {
        super(type);
        this.isReady = _isReady;


    }
}
}
