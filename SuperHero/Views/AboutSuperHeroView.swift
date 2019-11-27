//
//  AboutSuperHeroView.swift
//  SuperHero
//
//  Created by Marcelo Ríos on 11/26/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import SwiftUI

struct AboutSuperHeroView: View {
    var superHero: SuperHeroViewModel
    
    var body: some View {
        NavigationView {
          VStack(alignment: .leading) {
            Spacer()
            HStack(alignment: .top) {
              Text("Super Hero Id: ").bold()
              Text("\(superHero.id)")
            }
            HStack {
              Text("Mention: ").bold()
                Text("\(superHero.mention)")
            }
            HStack {
              Text("Created At: ").bold()
                Text("\(superHero.createdAt)")
            }
            Spacer()
          }
          .navigationBarTitle("About \(superHero.name)")
        }
    }
}

struct AboutSuperHeroView_Previews: PreviewProvider {
    static var previews: some View {
        AboutSuperHeroView(superHero: SuperHeroViewModel(superHero: SuperHero()))
    }
}
