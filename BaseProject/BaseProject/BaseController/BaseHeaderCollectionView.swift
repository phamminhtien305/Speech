//
//  BaseHeaderCollectionView.swift
//  BaseProject
//
//  Created by  on 6/2/16.
//  Copyright © 2016 framgia. All rights reserved.
//

import UIKit

class BaseHeaderCollectionView: UICollectionReusableView {
    
    class func nib() -> UINib{
        return UINib(nibName:String(self), bundle: NSBundle .mainBundle())
    }
    class func nibName() -> String{
        return String(self)
    }
    
    class func getSize() -> CGSize{
        return CGSizeMake(50.0, 50.0)
    }
    
    func configHeaderWithData(data: AnyObject?){}
}
