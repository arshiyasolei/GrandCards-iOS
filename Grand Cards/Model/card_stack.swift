//
//  Model.swift
//  Grand Cards
//
//  Created by dogbles on 7/10/20.
//  Copyright © 2020 sinclustoapps. All rights reserved.
//

import Foundation

class card_stack {
    var cards: [Any] = [];
    init() {
      
      //goal to create all images as objects
        let card_types = ["blue","green","pink","purple","yellow"];
        
        for card_t in card_types {
            for i in 2...12 {
                //Get image here
                let tempi = i.description;
                
                //console.log("assets/png/" + tempi + "_of_" + card_t + ".png")
                let res: [Any] = [0,tempi,card_t,0,0]
                cards.append(res)
            }

        }

    }
  }
