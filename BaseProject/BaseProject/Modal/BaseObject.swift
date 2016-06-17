//
//  BaseObject.swift
//  BaseProject
//
//  Created by  on 6/3/16.
//  Copyright © 2016 framgia. All rights reserved.
//

import UIKit

class BaseObject: NSObject {
    
    var myDictionary: Dictionary<String, String>
    override init() {
        self.myDictionary = [:]
        
        super.init()
    }
    
    func initWithObjectWithDic(objectDict object: Dictionary<String, String>) -> Self {
        
        return self
    }
    
    class func createListObjectFromListDict(listDict: AnyObject) -> Array<AnyObject>! {
        let newArray: Array<AnyObject> = [""]
        let objects:[[String:AnyObject]] = (listDict["elements"] as? [[String: AnyObject]])!

        for item in objects{
            print("Item At Index", item)
        }
        return newArray
    }


}
