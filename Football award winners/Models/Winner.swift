//
//  Winner.swift
//  Football award winners
//
//  Created by Абай Кенжехан on 1/25/20.
//  Copyright © 2020 football. All rights reserved.
//

import Foundation

struct Winner: Identifiable, Codable {
    let id: Int
    let fullName: String
    let imageName: String
    let yearWon: Int
    let description: String
    let award: Int
}
