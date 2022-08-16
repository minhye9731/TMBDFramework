//
//  TMDBAlert.swift
//  
//
//  Created by 강민혜 on 8/16/22.
//

import UIKit

extension UIViewController {
    
    public func showAlert(title: String, message: String, buttonTitle: String, buttonAction: @escaping((UIAlertAction) -> Void)) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: buttonTitle, style: .default, handler: buttonAction)
        
        alert.addAction(cancel)
        alert.addAction(ok)
        
        self.present(alert, animated: true)
        
    }
}
