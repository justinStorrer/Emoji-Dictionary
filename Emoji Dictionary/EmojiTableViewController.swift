//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Justin Storrer on 3/30/21.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    let emojis = getEmojis()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // How many rows?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    // What goes in each row?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = emojis[indexPath.row].character + " - " + String(emojis[indexPath.row].definition)

        return cell
    }
    
    // Which row is selected?
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedEmoji = emojis[indexPath.row]
        performSegue(withIdentifier: "Definition", sender: selectedEmoji)
    }
    
    // Move from view controller to another after a row has been selected
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let definitionVC = segue.destination as? DefinitionUIViewController {
            if let selectedEmoji = sender as? Emoji {
                definitionVC.emoji = selectedEmoji
            }
        }
    }
    

}
