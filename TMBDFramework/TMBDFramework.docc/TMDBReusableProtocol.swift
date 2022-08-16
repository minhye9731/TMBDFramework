//
//  TMDBReusableProtocol.swift
//  
//
//  Created by 강민혜 on 8/16/22.
//

import UIKit

// MARK: - identifier
protocol ReusableProtocol {
    static var reuseIdentifier: String { get }
}

extension UIViewController: ReusableProtocol {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UICollectionViewCell: ReusableProtocol {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell: ReusableProtocol {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
