//
//  HeaderMenuView.swift
//  BaseProject
//
//  Created by  on 6/2/16.
//  Copyright © 2016 framgia. All rights reserved.
//

import UIKit

class HeaderMenuView: BaseHeaderTableView {
    @IBOutlet weak var lbTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override class func height() -> CGFloat{
        return 50
    }
    
    override class func heightWithItem(data: AnyObject) -> CGFloat {
        if data is String && data.isEqualToString("Section 0"){
            return 100.0
        }
        return 50.0
    }
    
    override func configHeaderWithData(data: AnyObject?) {
        if data is String {
            lbTitle.text = data as? String
            self.backgroundColor = UIColor.redColor()
        }
    }
}
