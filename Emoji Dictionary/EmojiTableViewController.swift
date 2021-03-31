//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Justin Storrer on 3/30/21.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    let emojis = ["🎃", "🕹", "🤖", "🐉", "💎"]

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

        cell.textLabel?.text = emojis[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Definition", sender: nil)
    }
    

}
