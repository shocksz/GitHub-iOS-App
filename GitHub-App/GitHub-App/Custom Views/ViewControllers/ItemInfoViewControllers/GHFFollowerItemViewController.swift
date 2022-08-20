//
//  GHFFollowerItemViewController.swift
//  GitHub-App
//
//  Created by Fernando Mesquita on 20/08/22.
//

import UIKit

class GHFollowerItemViewController: GHFItemInfoViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
        
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
}
