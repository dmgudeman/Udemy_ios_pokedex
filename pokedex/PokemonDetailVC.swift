//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by David Gudeman on 8/14/17.
//  Copyright © 2017 dmgudeman. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
  
  @IBOutlet weak var nameLbl: UILabel!
  @IBOutlet weak var mainImg: UIImageView!
  @IBOutlet weak var descriptionLbl: UILabel!
  @IBOutlet weak var typeLbl: UILabel!
  @IBOutlet weak var defenseLbl: UILabel!
  @IBOutlet weak var heightLbl: UILabel!
  
  @IBOutlet weak var pokedexLbl: UILabel!
  @IBOutlet weak var weightLbl: UILabel!
  @IBOutlet weak var attackLbl: UILabel!
  @IBOutlet weak var currentEvoImg: UIImageView!
  @IBOutlet weak var nextEvoImg: UIImageView!
  @IBOutlet weak var evoLbl: UILabel!
  
  
  var pokemon: Pokemon!

    override func viewDidLoad() {
  
        super.viewDidLoad()
      nameLbl.text = pokemon.name.capitalized
      let img = UIImage(named: "\(self.pokemon.pokedexId)")
      mainImg.image = img
      currentEvoImg.image = img
      pokedexLbl.text = "\(pokemon.pokedexId)"

      pokemon.downloadPokemonDetail {
        // This is called after the network call is complete!
        
        self.updateUI()
        
      }
      
    }

  func updateUI() {
    attackLbl.text = pokemon.attack
    defenseLbl.text = pokemon.defense
    descriptionLbl.text = pokemon.description
    heightLbl.text = pokemon.height
    weightLbl.text = pokemon.weight
    typeLbl.text = pokemon.type
    
    if pokemon.nextEvolutionId == "" {
      evoLbl.text = "No Evolutions"
      nextEvoImg.isHidden = true
    } else {
      nextEvoImg.isHidden = false
      nextEvoImg.image = UIImage(named: pokemon.nextEvolutionId)
      let str = "Next Evolution: \(pokemon.nextEvolutionName) - LVL \(pokemon.nextEvolutionLevel)"
       evoLbl.text = str
    }
    
  }
  @IBAction func backBtnPressed(_ sender: AnyObject) {
    dismiss(animated: true, completion: nil)
  }

}
 
