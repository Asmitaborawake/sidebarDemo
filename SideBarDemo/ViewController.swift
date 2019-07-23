//
//  ViewController.swift
//  SideBarDemo
//
//  Created by User on 23/07/19.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sidebarView: UIView!
    @IBOutlet weak var sidebarTableview: UITableView!
    
    var nameArray = ["email","conatct","phone","username"]
    var imgarray = ["user","email","user","email"]
    var isSideBarOpen : Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sidebarView.isHidden = true
        isSideBarOpen = false
        
    }

    @IBAction func barbuttonClick(_ sender: Any) {
        
        sidebarView.isHidden = false
        sidebarTableview.isHidden = false
        self.view.bringSubviewToFront(sidebarView)
        
        if !isSideBarOpen {
            isSideBarOpen = true
            sidebarView.frame  = CGRect(x: 0, y: 88, width: 0, height: 558)
            sidebarTableview.frame = CGRect(x: 0, y: 0, width: 0, height: 558)
            UIView.setAnimationDuration(0.3)
            UIView.setAnimationDelegate(self)
            UIView.beginAnimations("TableviewAnimation", context: nil)
            
            sidebarView.frame  = CGRect(x: 0, y: 88, width: 224, height: 558)
            sidebarTableview.frame = CGRect(x: 0, y: 0, width: 224, height: 558)
            
            UIView.commitAnimations()
            
        }else {
            isSideBarOpen = false
            sidebarView.isHidden = true
            sidebarTableview.isHidden = true
            sidebarView.frame  = CGRect(x: 0, y: 88, width: 224, height: 558)
            sidebarTableview.frame = CGRect(x: 0, y: 0, width: 224, height: 558)
            UIView.setAnimationDuration(0.3)
            UIView.setAnimationDelegate(self)
            UIView.beginAnimations("TableviewAnimation", context: nil)
            
            sidebarView.frame  = CGRect(x: 0, y: 88, width: 0, height: 558)
            sidebarTableview.frame = CGRect(x: 0, y: 0, width: 0, height: 558)
            
            UIView.commitAnimations()
        }
    }
    
    
}


extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = sidebarTableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.lbl.text = nameArray[indexPath.row]
        let img = imgarray[indexPath.row]
        cell.imgView.image = UIImage(named: img)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let uname: userViewController = self.storyboard?.instantiateViewController(withIdentifier: "userViewController") as! userViewController
            uname.name = nameArray[indexPath.row]
            navigationController?.pushViewController(uname, animated: true)
        }else if indexPath.row == 1 {
            let uname: userViewController = self.storyboard?.instantiateViewController(withIdentifier: "userViewController") as! userViewController
            uname.name = nameArray[indexPath.row]
            navigationController?.pushViewController(uname, animated: true)
        }else if indexPath.row == 2 {
            let uname: userViewController = self.storyboard?.instantiateViewController(withIdentifier: "userViewController") as! userViewController
            uname.name = nameArray[indexPath.row]
            navigationController?.pushViewController(uname, animated: true)
        }else if indexPath.row == 3 {
            let uname: userViewController = self.storyboard?.instantiateViewController(withIdentifier: "userViewController") as! userViewController
            uname.name = nameArray[indexPath.row]
            navigationController?.pushViewController(uname, animated: true)
        }
    }
}
