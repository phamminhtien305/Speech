//
//  BlockConfig.swift
//  BaseProject
//
//  Created by  on 6/3/16.
//  Copyright © 2016 framgia. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON

typealias CompletionBlock = (result: JSON?, usingCache: Bool) -> Void
typealias ErrorBlock = (error: ErrorType?) -> Void
typealias ProgressBlock = (progress: CGFloat, url: NSURL) -> Void