//
//  MatchParticipant.swift
//  Vash Esports
//
//  Created by Stan Runge on 30/05/2024.
//

import Foundation

struct MatchParticipant: Identifiable, Decodable {
    let id: Int
//    let match: Match
    let participants: Participant
//    let roll: Int
//    let surrenderedBans: Bool
}
