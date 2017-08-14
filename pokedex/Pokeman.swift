//
//  Pokeman.swift
//  pokedex
//
//  Created by David Gudeman on 8/14/17.
//  Copyright © 2017 dmgudeman. All rights reserved.
//

import Foundation

class Pokemon {
  
  private var _name: String!
  private var _pokedexId: Int!
  
  var name: String {
    return _name
  }
  
  var pokedexId: String {
    return pokedexId
  }
  
  init(name:String, pokedexId: Int) {
    self._name = name
    self._pokedexId = pokedexId
  }
  
  
  
  
}
