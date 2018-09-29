//
//  Story.swift
//  Destini
//
//  Created by Jimmy on 9/29/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Story {
  let id: Int
  let text: String
  let answer1: String?
  let answer2: String?
  let nextA: Int?
  let nextB: Int?
  
  init(id: Int, text: String, answer1: String? = nil, answer2: String? = nil, nextA: Int? = nil, nextB: Int? = nil){
    self.id = id
    self.text = text
    self.answer1 = answer1
    self.answer2 = answer2
    self.nextA = nextA
    self.nextB = nextB
  }
  
}
