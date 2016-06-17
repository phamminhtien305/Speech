//
//  BaseColletionController.swift
//  BaseProjectSwift
//
//  Created by Minh Tien on 4/9/16.
//  Copyright © 2016 MTLABSWIFT. All rights reserved.
//

import Foundation
import UIKit


class BaseCollectionController: NSObject {
    var _targetCollectionView : UICollectionView!
    var items = [AnyObject]()
    var sections = [AnyObject]()
    
    func initWithTargetCollectionView(targetCollection: UICollectionView) -> AnyObject {
        _targetCollectionView = targetCollection
        _targetCollectionView.delegate = self;
        _targetCollectionView.dataSource = self;
        self.registerNibWithColletion(targetCollection)
        return self;
    }
    
    func registerNibWithColletion(collectionView: UICollectionView) {
        assert(false, "This is an abstract method and should be overridden")
    }
    
    func getCellIndenifi(item: AnyObject?, returnNameClass: Bool) -> String {
        assert(false, "This is an abstract method and should be overridden")
    }
    
    func getHeaderSection(item: AnyObject?, returnNameClass: Bool) -> String {
        assert(false, "This is an abstract method and should be overridden")
    }
    
    private func getCellClass(indexPath: NSIndexPath) -> BaseCollectionViewCell.Type {
        let item = self.itemAtIndexPath(indexPath)
        let className = self.getCellIndenifi(item, returnNameClass: true)
        return NSClassFromString(className) as! BaseCollectionViewCell.Type
    }
    
    private func getHeaderClassAtIndex(section: Int) -> BaseHeaderCollectionView.Type {
        let item = self.getListItemWithSection(section)
        let className = self.getHeaderSection(item, returnNameClass: true)
        return NSClassFromString(className) as! BaseHeaderCollectionView.Type
    }
    
    func getListItem() ->Array<AnyObject>{
        return items
    }
    
    func getListItemWithSection(section: Int) -> AnyObject? {
        return items.count > section ? items[section] : nil
    }
    
    func itemAtIndexPath(indextPath: NSIndexPath) -> AnyObject? {
        if(items.count > indextPath.section){
            let item = items[indextPath.section]
            if(item.count > indextPath.row){
                return item[indextPath.row]
            }
        }
        return nil
    }
    
    func updateWithListItem(listitem: Array<AnyObject>){
        items = listitem
        _targetCollectionView.reloadData()
    }
    
    func updateCollectionView(listItems: Array<AnyObject>, listSections: Array<AnyObject>){
        items = listItems
        sections = listSections
        _targetCollectionView.reloadData()
    }
}

extension BaseCollectionController: UICollectionViewDataSource {
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let item = self.itemAtIndexPath(indexPath)
        let cellIdentify = self.getCellIndenifi(item, returnNameClass: false)
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellIdentify,  forIndexPath:indexPath)
        let baseCell = cell as! BaseCollectionViewCell
        baseCell .configCellWithData(item);
        baseCell.indexPath = indexPath
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items[section].count
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return items.count
    }
    
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        
        var reusableView: BaseHeaderCollectionView! = nil
        var item = self.getListItemWithSection(indexPath.section)
        if sections.count > indexPath.section {
            item = sections[indexPath.section]
        }
        
        let headerclass = self.getHeaderClassAtIndex(indexPath.section)
        
        if (kind == UICollectionElementKindSectionHeader)
        {
            let collectionHeader = collectionView.dequeueReusableSupplementaryViewOfKind(UICollectionElementKindSectionHeader, withReuseIdentifier: headerclass.nibName(), forIndexPath: indexPath)
            
            reusableView = collectionHeader as? BaseHeaderCollectionView
            reusableView.configHeaderWithData(item)
        }
        return reusableView;
    }
}

extension BaseCollectionController: UICollectionViewDelegate {

}


extension BaseCollectionController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let cellClass = self.getCellClass(indexPath)
        return cellClass.getSize()
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        let header = self.getHeaderClassAtIndex(section)
        return header.getSize()
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSizeZero
    }
}

public extension NSObject{
    public class var nameOfClass: String{
        return NSStringFromClass(self).componentsSeparatedByString(".").last!
    }
    
    public var nameOfClass: String{
        return NSStringFromClass(self.dynamicType).componentsSeparatedByString(".").last!
    }
}
