//
//  Scoreboard.swift
//  ScoreKeeper
//
//  Created by Theodore Zhu on 5/26/25.
//

import Foundation

struct Scoreboard {
    var players: [Player] = [
        Player(name: "Lewis", score: 0),
        Player(name: "Sander", score: 0),
        Player(name: "Christian", score: 0)
    ]
    var state = GameState.setup
    var doesHighestScoreWin = true
    
    var winners: [Player] {
        guard state == .gameOver else { return []}
        var winningScore = 0
        if doesHighestScoreWin {
            winningScore = Int.min
            for player in players {
                winningScore = max(winningScore, player.score)
            }
        }
        else {
            winningScore = Int.max
            for player in players {
                winningScore = min(player.score, winningScore)
            }
        }
        return players.filter { player in
            player.score == winningScore
        }
    }
    
    mutating func resetScores(to newValue: Int) {
        for index in 0..<players.count {
                    players[index].score = newValue
                }
    }
}
