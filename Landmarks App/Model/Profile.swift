//
//  Profile.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/22/25.
// This file deifnes a new userin 

import Foundation


struct Profile {

    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()


    static let `default` = Profile(username: "g_kumar")

    enum Season: String, CaseIterable, Identifiable {

        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"


        var id: String { rawValue }

    }

}
