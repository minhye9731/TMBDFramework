//
//  TMDBTransitionView.swift
//  
//
//  Created by 강민혜 on 8/16/22.
//

import UIKit

extension UIViewController {
    
    public enum TransitionStyle {
        case present
        case push
    }
    
    public static func transitionViewController(boardname: String, viewController: UIViewController, transitionStyle: TransitionStyle) {
        
        let sb = UIStoryboard(name: boardname, bundle: nil)
        
        switch transitionStyle {
        case .present:
            guard let vc = sb.instantiateViewController(withIdentifier: "viewController") else { return }
            vc.modalTransitionStyle = .coverVertical
            vc.modalPresentationStyle = .pageSheet
            self.present(vc, animated: true)
        case .push:
            guard let vc = sb.instantiateViewController(withIdentifier: "viewController") as! viewController else { return }
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
