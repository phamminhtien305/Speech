//
//  LeftMenuCell.swift
//  BaseProject
//
//  Created by  on 6/2/16.
//  Copyright © 2016 framgia. All rights reserved.
//

import UIKit

class LeftMenuCell: BaseTableViewCell {

    @IBOutlet weak var lbTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override class func height() -> CGFloat{
        return 50.0
    }
    
    override func configCellWithData(data: AnyObject?) {
        if data is String {
            lbTitle.text = data as? String
        }
    }
    
}
