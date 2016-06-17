//
//  CellTest.swift
//  BaseProjectSwift
//
//  Created by Minh Tien on 6/1/16.
//  Copyright © 2016 MTLABSWIFT. All rights reserved.
//

import UIKit
class CellTest: BaseCollectionViewCell {
    @IBOutlet weak var labelTitle : UILabel!
    
    override class func getSize() -> CGSize {
        return CGSizeMake(DeviceManager.getDeviceSize().width, 100)
    }

    override func configCellWithData(data: AnyObject?) {
        let title:String = data as! String
        labelTitle.text = title
        DeviceManager.getDeviceName()
        DeviceManager.getDeviceSize()
    }

}
