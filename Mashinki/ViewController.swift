//
//  ViewController.swift
//  Mashinki
//
//  Created by Student on 15.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var playerName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func closeAppAction(_ sender: Any) {
        exit(0)
    }
    
    @IBAction func settingAction(_ sender: Any) {
        let alert = UIAlertController(title: "setting name", message:"enter your nickname \n Nickname is now: \(playerName)", preferredStyle: .alert)
        
        alert.addTextField {
            (TextField) in
            TextField.placeholder = "player name"
        }
        let cancelAction = UIAlertAction(title: "close", style: .cancel, handler: nil)
        let addAction = UIAlertAction(title: "confirm", style: .default) { (action) in
            let name = alert.textFields![0].text
            self.playerName = name
        
        }
        alert.addAction(cancelAction)
        alert.addAction(addAction)
        self.present (alert, animated: true, completion: nil)

        }
    
    }


