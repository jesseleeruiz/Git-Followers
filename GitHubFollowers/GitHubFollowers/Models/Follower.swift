//
//  Follower.swift
//  GitHubFollowers
//
//  Created by Jesse Ruiz on 2/6/20.
//  Copyright © 2020 Jesse Ruiz. All rights reserved.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}
