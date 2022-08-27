//
//  GHFRepoItemViewController.swift
//  GitHub-App
//
//  Created by Fernando Mesquita on 20/08/22.
//

import UIKit

class GHFRepoItemViewController: GHFItemInfoViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfille(for: user)
    }
    
}
