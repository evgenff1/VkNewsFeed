//
//  ViewController.swift
//  VkNewsFeed
//
//  Created by Evgeniy Fakhretdinov on 16.01.2024.
//

import UIKit

class AuthViewController: UIViewController {
    
    private var authService: AuthService!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        authService = SceneDelegate.shared().authService
    }

    @IBAction func signinTouch(_ sender: UIButton) {
        authService.wakeUpSession()
    }
    

}

