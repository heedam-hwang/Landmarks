//
//  Profile.swift
//  Landmarks
//
//  Created by íŠíŹë´ on 2022/02/08.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()

    static let `default` = Profile(username: "g_kumar")

    enum Season: String, CaseIterable, Identifiable {
        case spring = "đˇ"
        case summer = "đ"
        case autumn = "đ"
        case winter = "âď¸"

        var id: String { rawValue }
    }
}
