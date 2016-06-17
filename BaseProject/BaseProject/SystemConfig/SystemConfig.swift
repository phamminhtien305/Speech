//
//  SystemConfig.swift
//  BaseProject
//
//  Created by  on 6/2/16.
//  Copyright © 2016 framgia. All rights reserved.
//

import Foundation
import UIKit


struct FontSizes {
    static let Large = 14.0
    static let Small = 10.0
}

let DETECT_OS8 = (Float)(UIDevice.currentDevice().systemVersion) > 8.0 ? true : false
let DETECT_OS7 = (Float)(UIDevice.currentDevice().systemVersion) > 7.0 ? true : false

