//
//  TMDBWebView.swift
//  
//
//  Created by 강민혜 on 8/16/22.
//

import UIKit
import WebKit

// open은 class에서만 사용 가능
// open 접근제어 수준은 타프로젝트에서도 사용 가능
// 타모듈에서 OpenWebView 클래스를 오버라이딩하여 사용 가능함!
open class OpenWebView {
    
    public enum TransitionStyle {
        case present
        case push
    }
    
    public static func presentWebViewController(_ viewController: UIViewController, url: String, transitionStyle: TransitionStyle) {
        
        let vc = WebViewController() // 전환할 화면을 인스턴스로 생성해서 vc변수에 담아 미리 구현해둠
        vc.url = url // 매개변수로 이동할 url 값전달 받음
        
        switch transitionStyle {
        case .present:
            viewController.present(vc, animated: true)
        case .push:
            viewController.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

class WebViewController: UIViewController {

    // webView의 접근 제어 수준은 private이므로 WebViewController 블록 내에서만 사용 가능
    private var webView: WKWebView!
    
    var url: String = "https://www.apple.com"
    
    override func loadView() {
        // super.loadView는 일부러 호출하지 않음?? 왜??
        var configuration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: configuration)
        view = webView
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let url = URL(string: url) else { return }
        let request = URLRequest(url: url)
        webView.load(request)
        
    }
    

}

