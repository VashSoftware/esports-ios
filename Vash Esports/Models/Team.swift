//
//  Team.swift
//  Vash Esports
//
//  Created by Stan Runge on 07/02/2024.
//

import Foundation

struct Team: Decodable {
    var name: String
    
    var participations: [Participation]
    
    init(name: String, participations: [Participation]) {
        self.name = name
        self.participations = participations
    }
}
