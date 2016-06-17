//
//  DeviceManager.swift
//  BaseProject
//
//  Created by  on 6/2/16.
//  Copyright © 2016 framgia. All rights reserved.
//

import UIKit
import SystemConfiguration

class DeviceManager {
    
    class func getDeviceName() -> NSString {        // type method
        return ""
    }
    
    class func getDeviceSize() -> CGSize {
        let screenRect = UIScreen.mainScreen().bounds
        var screenSize = screenRect.size;
        if(DETECT_OS8){
            let orientation: UIInterfaceOrientation = UIApplication.sharedApplication().statusBarOrientation
            if orientation == UIInterfaceOrientation.LandscapeLeft || orientation == UIInterfaceOrientation.LandscapeRight{
                screenSize = CGSizeMake(screenSize.height, screenSize.width);
            }else {
                screenSize = CGSizeMake(screenSize.width, screenSize.height);
            }
        }
        return screenSize;
    }

    class func getWinSize() -> CGSize {
        let screenRect = UIScreen.mainScreen().bounds
        var screenSize = screenRect.size
        if DETECT_OS8 {
            let orientation = UIApplication.sharedApplication().statusBarOrientation
            if orientation == UIInterfaceOrientation.LandscapeLeft || orientation == UIInterfaceOrientation.LandscapeRight {
                screenSize = CGSizeMake(screenSize.height, screenSize.width);
            }else{
                screenSize = CGSizeMake(screenSize.width, screenSize.height);
            }
        }
        return screenSize
    }
    
    func getWinFrame() -> CGRect {
        let screenRect = UIScreen.mainScreen().bounds
        var screenFrame = screenRect
        if DETECT_OS8 {
            let orientation = UIApplication.sharedApplication().statusBarOrientation
            if orientation == UIInterfaceOrientation.LandscapeLeft || orientation == UIInterfaceOrientation.LandscapeRight {
                screenFrame = CGRectMake(0, 0, screenRect.size.height, screenRect.size.width)
            }else{
                screenFrame = CGRectMake(0, 0, screenRect.size.width, screenRect.size.height)
            }
        }
        return screenFrame;
    }
    
    func getDeviceID() -> String {
        return UIDevice.currentDevice().identifierForVendor!.UUIDString
    }

}


