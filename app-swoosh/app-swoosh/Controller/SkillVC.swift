//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Juan on 10/11/19.
//  Copyright © 2019 Juan. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    var player: Player!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        print("\(player.desiredLeague ?? "") ")
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
