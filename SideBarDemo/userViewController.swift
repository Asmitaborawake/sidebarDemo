//
//  userViewController.swift
//  SideBarDemo
//
//  Created by User on 23/07/19.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class userViewController: UIViewController {

    
    
    @IBOutlet weak var ulbl: UILabel!
    var name = String()
    override func viewDidLoad() {
        super.viewDidLoad()

       ulbl.text = name
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
