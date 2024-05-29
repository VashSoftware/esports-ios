//
//  Map.swift
//  Vash Esports
//
//  Created by Stan Runge on 07/02/2024.
//

import Foundation

struct Map: Decodable {
    var osuId: String
    
    init(osuId: String) {
        self.osuId = osuId
    }
}
