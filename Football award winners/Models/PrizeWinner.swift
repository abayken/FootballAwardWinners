//
//  PrizeWinner.swift
//  Football award winners
//
//  Created by Abay on 29.01.2020.
//  Copyright © 2020 football. All rights reserved.
//

import Foundation

struct PrizeWinner: Identifiable, Codable {
    let id: Int
    let place: Int
    let name: String
}
