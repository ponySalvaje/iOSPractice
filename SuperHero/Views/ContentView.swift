//
//  ContentView.swift
//  SuperHero
//
//  Created by Marcelo Ríos on 11/26/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: SuperHeroItem.getAllSuperHeroItems()) var superHeroItems:FetchedResults<SuperHeroItem>
    
    @State private var newSuperHeroItem = ""
    
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("Super Heroes")) {
                    ForEach(self.superHeroItems) { superheroItem in
                        NavigationLink(destination: AboutSuperHeroView(superHero: SuperHeroViewModel(superHero: SuperHero(superhero: superheroItem)))){
                            SuperHeroItemView(createdAt: "\(superheroItem.createdAt!)", id: superheroItem.id!, mention: superheroItem.mention!, name: superheroItem.name!)
                        }
                    }
                }
            }.navigationBarTitle(Text("My Super Heroes"))
                .navigationBarItems(trailing: NavigationLink(destination: AddNewSuperHeroView()) {
                    Text("Add new hero")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
