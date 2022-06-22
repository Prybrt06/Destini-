//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var example = StoryBrain()
    
    override func viewDidLoad() {
        
        storyLabel.text = example.stories[example.storyNumber].title
        choice1Button.setTitle(example.stories[example.storyNumber].choice1, for: .normal)
        choice2Button.setTitle(example.stories[example.storyNumber].choice2, for: .normal)
        
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        example.nextStory(sender.currentTitle!)
        
        storyLabel.text = example.stories[example.storyNumber].title
        choice1Button.setTitle(example.stories[example.storyNumber].choice1, for: .normal)
        choice2Button.setTitle(example.stories[example.storyNumber].choice2, for: .normal)
    }
    


}

