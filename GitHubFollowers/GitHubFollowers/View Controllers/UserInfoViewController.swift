//
//  UserInfoViewController.swift
//  GitHubFollowers
//
//  Created by Jesse Ruiz on 2/9/20.
//  Copyright © 2020 Jesse Ruiz. All rights reserved.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    // MARK: Properites
    var username: String!

    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
    }
    
    // MARK: Methods
    @objc func dismissVC() {
        dismiss(animated: true)
    }
}
