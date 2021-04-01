//
//  DefinitionUIViewController.swift
//  Emoji Dictionary
//
//  Created by Justin Storrer on 3/31/21.
//

import UIKit

class DefinitionUIViewController: UIViewController {
    
    
    @IBOutlet weak var popUpEmojiLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    @IBOutlet weak var emojiDescriptionLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popUpEmojiLabel.text = emoji.character
        
        emojiDefinitionLabel.text = "The \(emoji.character) emoji is a \(emoji.definition). It was made in \(emoji.year) is in the \(emoji.category) category and Justin gave it a \(emoji.rating)."
        
        emojiDescriptionLabel.text = emoji.description

    }
    
    

}
