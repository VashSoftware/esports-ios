//
//  Participation.swift
//  Vash Esports
//
//  Created by Stan Runge on 07/02/2024.
//

import Foundation
class Participation {
    var event: Event
    var team: Team
    
    init(event: Event, team: Team) {
        self.event = event
        self.team = team
    }
}
