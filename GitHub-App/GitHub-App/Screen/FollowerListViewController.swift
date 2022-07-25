//
//  FollowerListViewController.swift
//  GitHub-App
//
//  Created by Fernando Mesquita on 11/07/22.
//

import UIKit

class FollowerListViewController: UIViewController {
    
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: userName, page: 1) { (result) in
            
            switch result {
            case .success(let followers):
                print(followers)
            
            case.failure(let error):
                self.presenteGHFAlertOnMainThread(title: "Bad Stuff Happened", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
