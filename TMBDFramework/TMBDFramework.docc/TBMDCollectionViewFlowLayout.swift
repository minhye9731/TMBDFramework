//
//  TBMDCollectionViewFlowLayout.swift
//  
//
//  Created by 강민혜 on 8/16/22.
//

import UIKit

open class ConfigureLayout {
    
    public static func configureLayout(spacingNum: Int, width: CGFloat, height: CGFloat, scrollDirct: UICollectionView.ScrollDirection, top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat, minLineSpc: CGFloat, minIntSpc: CGFloat) {
     
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = spacingNum
        layout.itemSize = CGSize(width: width, height: )
        layout.scrollDirection = scrollDirct
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = minLineSpc
        layout.minimumInteritemSpacing = minIntSpc
        
        collectionView.collectionViewLayout = layout
        
    }
    
    
}
