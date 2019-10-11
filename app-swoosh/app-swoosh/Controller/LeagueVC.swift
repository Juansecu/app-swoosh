//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Juan on 10/11/19.
//  Copyright © 2019 Juan. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player: Player!
    
    @IBOutlet weak var nextBTN: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMenTapped(_ sender: Any) {
        player.desiredLeague = "men"
        nextBTN.isEnabled = true
    }
    
    @IBAction func onWomenTapped(_ sender: Any) {
        player.desiredLeague = "women"
        nextBTN.isEnabled = true
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        player.desiredLeague = "coed"
        nextBTN.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
