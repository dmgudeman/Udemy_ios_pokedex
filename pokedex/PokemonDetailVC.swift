//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by David Gudeman on 8/14/17.
//  Copyright © 2017 dmgudeman. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
  
  @IBOutlet weak var mainImg: UIImageView!
  @IBOutlet weak var descriptionLbl: UILabel!
  @IBOutlet weak var typeLbl: UILabel!
  @IBOutlet weak var defenseLbl: UILabel!
  @IBOutlet weak var heightLbl: UILabel!
  @IBOutlet weak var pokeIdLbl: UILabel!
  @IBOutlet weak var weightLbl: UILabel!
  @IBOutlet weak var attackLbl: UILabel!
  @IBOutlet weak var currentEvoImg: UIImageView!
  @IBOutlet weak var nextEvoImg: UIImageView!
  @IBOutlet weak var evoLbl: UILabel!
  
  
  var pokemon: Pokemon!

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

   
  @IBAction func backBtnPressed(_ sender: AnyObject) {
    dismiss(animated: true, completion: nil)
  }

}
 
