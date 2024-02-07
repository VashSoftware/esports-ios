//
//  Team.swift
//  Vash Esports
//
//  Created by Stan Runge on 07/02/2024.
//

import Foundation

class Team {
    var name: String
    
    var participations: [Participation]
    
    init(name: String, participations: [Participation]) {
        self.name = name
        self.participations = participations
    }
}
