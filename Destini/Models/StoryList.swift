//
//  StoryList.swift
//  Destini
//
//  Created by Jimmy on 9/29/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class StoryList {
  
  var all = [Story]()

  func add(id: Int, text: String, answer1: String? = nil, answer2: String? = nil, nextA: Int? = nil, nextB: Int? = nil){
    let story = Story(id: id, text: text, answer1: answer1, answer2: answer2, nextA: nextA, nextB: nextB)
    all.append(story)
  }
  
}
