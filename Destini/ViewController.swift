//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  // STATE
  
  var stories = StoryList()
  var currentStory = Story(id: 0, text: "")
    
    
  // UI Elements linked to the storyboard
  @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
  @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
  @IBOutlet weak var storyTextView: UILabel!
  
  // TODO Step 5: Initialise instance variables here
  
  
  
  
  override func viewDidLoad() {
      super.viewDidLoad()
      loadStories()
      nextStory(id: 1)
    
    
      // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
  }
  
  func loadStories(){
    stories.add(
      id: 1,
      text: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".",
      answer1: "I\'ll hop in. Thanks for the help!",
      answer2: "Better ask him if he\'s a murderer first.",
      nextA: 3,
      nextB: 2
    )
    stories.add(
      id: 2,
      text: "He nods slowly, unphased by the question.",
      answer1: "At least he\'s honest. I\'ll climb in.",
      answer2: "Wait, I know how to change a tire.",
      nextA: 3,
      nextB: 4
    )
    stories.add(
      id: 3,
      text: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
      answer1: "I love Elton John! Hand him the cassette tape.",
      answer2: "It\'s him or me! You take the knife and stab him.",
      nextA: 6,
      nextB: 5
    )
    stories.add(
      id: 4,
      text: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
    )
    stories.add(
      id: 5,
      text: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
    )
    stories.add(
      id: 6,
      text: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
    )
  }


    
  // User presses one of the buttons
  @IBAction func buttonPressed(_ sender: UIButton) {
    
    if sender.tag == 1 {
      nextStory(id: self.currentStory.nextA!)
    } else if sender.tag == 2 {
      nextStory(id: self.currentStory.nextB!)
    }
  
  }
  
  func nextStory(id: Int) {
    for story in self.stories.all {
      if story.id == id {
        self.currentStory = story
      }
    }
    updateUI()
  }
  
  func updateUI() {
    storyTextView.text = currentStory.text
    topButton.setTitle(currentStory.answer1, for: .normal)
    bottomButton.setTitle(currentStory.answer2, for: .normal)
    if currentStory.answer1 == nil {
      topButton.isHidden = true
      bottomButton.isHidden = true
    }
  }

}

