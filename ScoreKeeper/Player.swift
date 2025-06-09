//
//  Player.swift
//  ScoreKeeper
//
//  Created by Theodore Zhu on 5/23/25.
//

import Foundation
struct Player: Identifiable {
    let id = UUID()
    var name: String
    var score: Int
}

extension Player: Equatable {
    static func == (lhs: Player, rhs: Player) -> Bool {
        lhs.name == rhs.name && lhs.score == rhs.score
    }
}
