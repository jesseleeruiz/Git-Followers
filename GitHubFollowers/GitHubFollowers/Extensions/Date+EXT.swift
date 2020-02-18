//
//  Date+EXT.swift
//  GitHubFollowers
//
//  Created by Jesse Ruiz on 2/17/20.
//  Copyright © 2020 Jesse Ruiz. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
