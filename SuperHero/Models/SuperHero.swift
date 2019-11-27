//
//  SuperHero.swift
//  SuperHero
//
//  Created by Marcelo Ríos on 11/26/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import Foundation

struct SuperHero: Codable {
    var createdAt: Date
    var id: Int
    var mention: String
    var name: String
  
    init() {
        createdAt = Date()
        id = 0
        mention = ""
        name = ""
    }
    
    init(superhero:SuperHeroItem) {
        self.createdAt = superhero.createdAt!
        self.id = superhero.id as! Int ?? 0
        self.mention = superhero.mention!
        self.name = superhero.name!
    }
}
