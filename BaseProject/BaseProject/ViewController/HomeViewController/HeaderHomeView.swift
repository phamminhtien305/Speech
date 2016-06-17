//
//  HeaderHomeView.swift
//  BaseProject
//
//  Created by  on 6/2/16.
//  Copyright © 2016 framgia. All rights reserved.
//

import UIKit

class HeaderHomeView: BaseHeaderCollectionView {

    @IBOutlet weak var lbTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override class func getSize() -> CGSize {
        return CGSizeMake(DeviceManager.getWinSize().width, 50)
    }
    
    override func configHeaderWithData(data: AnyObject?) {
        if data is String {
            lbTitle.text = data as? String
        }
    }
    
}
