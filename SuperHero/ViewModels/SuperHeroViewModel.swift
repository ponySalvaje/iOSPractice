//
//  SuperHeroViewModel.swift
//  SuperHero
//
//  Created by Marcelo Ríos on 11/26/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import Foundation

struct SuperHeroViewModel: Identifiable {
    var superHero: SuperHero
    
    init(superHero: SuperHero) {
        self.superHero = superHero
    }
    var id: Int {
        return self.superHero.id
    }
    var createdAt: Date {
        return self.superHero.createdAt
    }
    var mention: String {
        return self.superHero.mention
    }
    var name: String {
        return self.superHero.name
    }
}
