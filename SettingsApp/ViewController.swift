//
//  ViewController.swift
//  SettingsApp
//
//  Created by apple on 22/09/21.
//  Copyright © 2021 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var sectionArr1 = ["General", "Accessibility","Privacy"]
     var sectionArr2 = [ "Passwords & Accounts"]
     var sectionArr3 = ["Maps", "Safari", "News","Health", "Shortcuts","Siri & Search","Photos","Game Center"]
     var sectionArr4 = ["Developer"]
    
//    var icon: [UIImage] = [UIImage(named: "General"), UIImage(named: "Accessebility"),UIImage(named: "Privacy"),UIImage(named: "Accounts"),UIImage(named: "Maps"),UIImage(named: "Safari"),UIImage(named: "News"),UIImage(named: "Health"),UIImage(named: "Shortcuts"),UIImage(named: "Siri"),UIImage(named: "Photos"),UIImage(named: "GameCenter"),UIImage(named: "Developer")]
//
    
    var sectionIcon1 = ["General", "Accessebility", "Privacy"]
    var sectionIcon2 = ["Accounts"]
    var sectionIcon3 = ["Maps", "Safari", "News", "Health", "Shortcuts", "Siri", "Photos", "GameCenter"]
    var sectionIcon4 = ["Developer"]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        navigationItem.title = "Settings"
        tableView.register(UINib(nibName: "SectionZeroTableViewCell", bundle: nil), forCellReuseIdentifier: "sectionZero")
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0{
            return 1
        }else if section == 1{
            return 3
        } else if section == 2{
            return 1
        }else if section == 3{
            return 8
        }
        else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "sectionZero", for: indexPath) as! SectionZeroTableViewCell
            cell.label1.text = "Sign In to your iPhone"
            cell.label2.text = "Set up iCloud, the Appstore and more."
            return cell
            
        }else if indexPath.section == 1{
            
                  let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
                cell.label.text = sectionArr1[indexPath.row]
                cell.images!.image = UIImage(named: sectionIcon1[indexPath.row])
                     cell.images.layer.cornerRadius = 20
                return cell
            }
            else if indexPath.section == 2 {
                  let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
                cell.label.text = sectionArr2[indexPath.row]
                cell.images!.image = UIImage(named: sectionIcon2[indexPath.row])
                     cell.images.layer.cornerRadius = 20
                return cell
            }
        else if indexPath.section == 3{
            
                  let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
                cell.label.text = sectionArr3[indexPath.row]
                cell.images!.image = UIImage(named: sectionIcon3[indexPath.row])
                     cell.images.layer.cornerRadius = 20
                return cell
            }
    
    else{
    let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
    cell.label.text = sectionArr4[indexPath.row]
    cell.images!.image = UIImage(named: sectionIcon4[indexPath.row])
         cell.images.layer.cornerRadius = 20
    return cell
    }
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 4 {
            return 60
        }else{
        return 40
    }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
                if section == 4 {
                return 50
            }else{
            return 0
        }

    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
       return 80
        }else{
            return 60
        }
}
}
