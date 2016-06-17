//
//  BaseCollectionViewCell.swift
//  BaseProjectSwift
//
//  Created by Minh Tien on 4/9/16.
//  Copyright © 2016 MTLABSWIFT. All rights reserved.
//

import UIKit

class BaseCollectionViewCell: UICollectionViewCell {
    var indexPath : NSIndexPath!
    
    class func nib() -> UINib{
        return UINib(nibName:String(self), bundle: NSBundle .mainBundle())
    }
    class func nibName() -> String{
        return String(self)
    }
    
    class func getSize() -> CGSize{
        return CGSizeMake(50.0 , 50.0)
    }
    
    func configCellWithData(data: AnyObject?){}
    
    
}
