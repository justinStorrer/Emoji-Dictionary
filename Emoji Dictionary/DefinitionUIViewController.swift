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
    
    var emoji = "👻"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popUpEmojiLabel.text = emoji
        
        emojiDefinitionLabel.text = emoji.unicodeScalars.first!.properties.name!.capitalized

    }
    
    

}
