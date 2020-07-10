//
//  Model.swift
//  Grand Cards
//
//  Created by dogbles on 7/10/20.
//  Copyright © 2020 sinclustoapps. All rights reserved.
//

import Foundation

class card_stack {
    init() {
      self.cards = [];
      //goal to create all images as objects
        let card_types = ["blue","green","pink","purple","yellow"];
        
        for card_t in card_types {
            for i in 2...12 {
                //Get image here
                var tempi = i.description;
                
                //console.log("assets/png/" + tempi + "_of_" + card_t + ".png")
                let res = [null,i,card_t,null,null]
                self.cards.push(res)
            }

    }

    }
    func shuffle() {
    
        //https://en.wikipedia.org/wiki/Fisher%E2%80%93Yates_shuffle
        for i in self.cards.length-1...1 {
            let j = Math.floor(Math.random() * (i + 1));
            [self.cards[i], self.cards[j]] = [self.cards[j], self.cards[i]];
        }
    }
  }
