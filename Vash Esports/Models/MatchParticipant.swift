//
//  MatchParticipant.swift
//  Vash Esports
//
//  Created by Stan Runge on 30/05/2024.
//

import Foundation

struct MatchParticipant: Decodable {
    var teamPlayers: [Participation]
    var round: Round
    
    init(teamPlayers: [Participation], round: Round) {
        self.teamPlayers = teamPlayers
        self.round = round
    }
}
