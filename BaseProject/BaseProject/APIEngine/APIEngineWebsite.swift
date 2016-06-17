//
//  APIEngineWebsite.swift
//  BaseProject
//
//  Created by  on 6/3/16.
//  Copyright © 2016 framgia. All rights reserved.
//

import UIKit

class APIEngineWebsite {}
// MARK: - Website
extension APIEngine {
    func getListWebsite(withURL url: String, wihtParam params: NSDictionary?, onComplete completeBlock:CompletionBlock, onError errorBlock: ErrorBlock, _:String) {
        
        requestWithLink(withURL: url, withMethod: .GET, withParams: params, onComplete: { (result, usingCache) in
            completeBlock(result: result, usingCache: usingCache)
            }, onError: { (error) in
                errorBlock(error: error)
            })
    }
}
