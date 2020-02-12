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
        
        NetworkManager.shared.getUserInfo(for: username) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let user):
                print(user)
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Something went wrong", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
    
    // MARK: Methods
    @objc func dismissVC() {
        dismiss(animated: true)
    }
}
