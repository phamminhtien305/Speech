//
//  LeftMenuController.swift
//  BaseProject
//
//  Created by  on 6/2/16.
//  Copyright © 2016 framgia. All rights reserved.
//

import UIKit

class LeftMenuController: BaseTableController {
    
    override func initWithTargetTableView(targetTableView: UITableView) -> AnyObject {
        super.initWithTargetTableView(targetTableView)
        let items = [["Row 0", "Row 1", "Row 2"],["Row 0","Row 1","Row 2"]]
//        self.updateWithListItem(items)
        self.updateWithListItem(items, listSections: ["Section 0", "Section 1"])
        return self
    }
    
    override func registerNibWithTargetTableView(targetTableView: UITableView) {
        targetTableView.backgroundColor = UIColor.whiteColor()
        targetTableView.registerNib(LeftMenuCell.nib(), forCellReuseIdentifier: LeftMenuCell.nibName())
        targetTableView.registerNib(HeaderMenuView.nib(), forHeaderFooterViewReuseIdentifier: HeaderMenuView.nibName())
    }
    
    override func getCellIdentify(item: AnyObject?, returnClassName: Bool) -> String {
        if returnClassName {
           return  NSStringFromClass(LeftMenuCell)
        }else{
            return LeftMenuCell.nibName()
        }   
    }
    
    override func getHeaderIdentifiWithItem(item: AnyObject, returnClassName: Bool) -> String {
        if returnClassName {
            return NSStringFromClass(HeaderMenuView)
        }else {
            return HeaderMenuView.nibName()
        }
    }
}
