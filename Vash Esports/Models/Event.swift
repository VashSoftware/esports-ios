//
//  EventModel.swift
//  Vash Esports
//
//  Created by Stan Runge on 07/02/2024.
//

import Foundation

class Event {
    var name: String
    var date: Date
    var rounds: [Round]
    
    init(name: String, date: Date, rounds: [Round]) {
        self.name = name
        self.date = date
        self.rounds = rounds
    }
}
