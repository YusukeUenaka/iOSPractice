//
//  ViewController.swift
//  AddressView
//
//  Created by TechLab.1 on 2018/02/26.
//  Copyright © 2018年 TechLab.1. All rights reserved.
//

import UIKit

class AddressListViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // NavigationBarのタイトルを設定
        self.navigationItem.title = "連絡先一覧"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

