//
//  GFRepoItemViewController.swift
//  GitHubFollowers
//
//  Created by Jesse Ruiz on 2/17/20.
//  Copyright © 2020 Jesse Ruiz. All rights reserved.
//

import Foundation

class GFRepoItemVC: GFItemInfoViewController {
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    // MARK: - Methods
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
}
