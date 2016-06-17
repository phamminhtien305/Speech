//
//  APIEngine.swift
//  BaseProject
//
//  Created by  on 6/3/16.
//  Copyright © 2016 framgia. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class APIEngine {
    static let sharedInstance = APIEngine()
    
    func requestWithLink(withURL url: String,
                   withMethod method: Alamofire.Method,
                   withParams params: NSDictionary?,
               onComplete completion: CompletionBlock,
                  onError errorBlock: ErrorBlock) {
        
        let headers = [
            "X-Parse-Application-Id": "",
            "X-Parse-REST-API-Key": "",
            "Content-Type": "application/json"
        ]
        
        let someRequest = Alamofire
            .request(method, url, parameters: nil, encoding: .JSON, headers: headers)
            .responseJSON { response in
                switch response.result{
                    case .Success(let data):
                        let json:JSON! = JSON(data)
                        // cache api
                        
                        // call back
                        completion(result: json, usingCache: false)
                    case .Failure(let error):
                        errorBlock(error: error)
                        print("Request failed with error: \(error)")
                }
        }
        debugPrint("Success ::::",someRequest)
    }
}


// MARK: - Cache response
extension APIEngine {
    
    func objectFromAPICacheWithURL(apiURL:String, params:NSDictionary, withMethod method:String, onComplete complete: CompletionBlock) {
        
    }
    
    func saveApoCacheWithObject(reponseObject response:AnyObject, withParam params: NSDictionary?, withURL url: String, withMethod method: Alamofire.Method) {
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)) {
            
        }
        
//            AppCacheData *apiCache = [self getAPICacheWithURL:url withParam:params withMethod:method];
//            
//            if (apiCache) {
//                apiCache.data = [self archiveNSDataFromObject:object withKey:@"data"];
//                apiCache.date_modified = [NSDate date];
//            }
//            else {
//                apiCache = [AppCacheData MR_createEntity];
//                apiCache.url = url;
//                apiCache.method = method;
//                NSMutableDictionary *saveParams = [self getHandleParamsFromRealParams:params];
//                apiCache.param = [self archiveNSDataFromObject:saveParams withKey:@"param"];
//                apiCache.data = [self archiveNSDataFromObject:object withKey:@"data"];
//                apiCache.date_modified = [NSDate date];
//            }
//            
//            @try {
//                //            [[NSManagedObjectContext MR_contextForCurrentThread] MR_saveToPersistentStoreAndWait];
//                
//                [[NSManagedObjectContext MR_contextForCurrentThread] MR_saveToPersistentStoreWithCompletion:^(BOOL success, NSError *error) {
//                    
//                    }];
//            }@catch (NSException *exception) {
//                
//            }
        
//        - (AppCacheData*) getAPICacheWithURL:(NSString*) apiURL
//        withParam:(NSDictionary*) params
//        withMethod:(NSString *)method
//        {
//            
//            NSMutableDictionary *handleParams = [self getHandleParamsFromRealParams:params];
//            NSArray* cacheArr = [AppCacheData MR_findByAttribute:@"url" withValue:apiURL];
//            if (cacheArr.count > 0) {
//                for (AppCacheData *deleteCache in cacheArr) {
//                    NSDictionary *paramData;
//                    @try {
//                        if (deleteCache.managedObjectContext && deleteCache.param) {
//                            NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:deleteCache.param];
//                            paramData = [unarchiver decodeObjectForKey:@"param"];
//                        }
//                        if (([paramData isEqualToDictionary:handleParams] || (!paramData && !handleParams)) && [method isEqualToString:deleteCache.method]) {
//                            return deleteCache;
//                            break;
//                        }
//                    }
//                    @catch (NSException *exception) {
//                        
//                    }
//                    @finally {
//                        
//                    }
//                }
//            }
//            return nil;
//        }
//
//        
        func verifyCacheContent(object: AnyObject) -> Bool {
            
            if object is Dictionary<String, AnyObject> {
                return true
            }
            return false
        }
    }
}






