//
//  GFFollowerItemViewController.swift
//  GitHubFollowers
//
//  Created by Jesse Ruiz on 2/17/20.
//  Copyright © 2020 Jesse Ruiz. All rights reserved.
//

import Foundation

class GFFollowerItemVC: GFItemInfoViewController {
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    // MARK: - Methods
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Git Followers")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
}
