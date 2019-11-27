//
//  SuperHeroItemView.swift
//  SuperHero
//
//  Created by Marcelo Ríos on 11/26/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import SwiftUI

struct SuperHeroItemView: View {
    var createdAt:String = ""
    var id:NSNumber = 0
    var mention:String = ""
    var name:String = ""
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(name).font(.headline)
                Text(mention).font(.caption)
            }
        }
    }
}

struct SuperHeroItemView_Previews: PreviewProvider {
    static var previews: some View {
        SuperHeroItemView(createdAt: "Today", id: 69, mention: "Best hero ever", name: "Batman")
    }
}
