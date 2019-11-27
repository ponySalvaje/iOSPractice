//
//  SuperHeroService.swift
//  SuperHero
//
//  Created by Marcelo Ríos on 11/27/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import Foundation

class SuperHeroService {
  func getSuperHero(completion: @escaping (SuperHero?) -> ()) {
    guard let url = URL(string: "https://superheroapi.com/api/10214938217518126/70") else {
      fatalError("Invalid URL")
    }
    URLSession.shared.dataTask(with: url) { data, response, error in
      guard let data = data, error == nil else {
        completion(nil)
        if let error = error {
          print(error.localizedDescription)
        }
        return
      }
      
      // let superhero = try? JSONDecoder().decode(SuperHero.self, from: data)
        
        do {
            if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                print(json)
                var superhero = SuperHero()
                
                superhero.id = Int(json["id"] as! String) ?? 0
                superhero.name = json["name"] as! String
                
                print(superhero)
                DispatchQueue.main.async {
                    completion(superhero)
                }
            }
        } catch {
            
        }
      

      if let error = error {
        print(error.localizedDescription)
      }

    }.resume()
    }
}
