//
//  ViewController.swift
//  AddressView
//
//  Created by TechLab.1 on 2018/02/26.
//  Copyright © 2018年 TechLab.1. All rights reserved.
//

import UIKit

class AddressListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    let name = ["佐藤","鈴木","高橋","田中","伊藤","渡辺"]
    let mailAddress = ["sto@localhost.com","suzuki@localhost.com","takahashi@localhost.com","tanaka@localhost.com","itou@localhost.com","watanabe@localhost.com"]
    let phoneNumber = ["090-0000-0000","090-0000-0001","090-0000-0002","090-0000-0003","090-0000-0004","090-0000-0005"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.tableView.delegate = self
        //self.tableView.dataSource = self
        
        // NavigationBarのタイトルを設定
        self.navigationItem.title = "連絡先一覧"
        
        //自作セルをテーブルビューに登録する。
        let addressCell = UINib(nibName: "AddressListViewCell", bundle: nil)
//        tableView.register(addressCell, forCellReuseIdentifier: "AddressCell")
        tableView.register(addressCell, forCellReuseIdentifier: "AddressCell")
        
        
    }
    
    override func loadView() {
        if let loadView = UINib(nibName: "AddressListViewController", bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView {
            view = loadView
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Table view data source
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    // テーブル行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        // 通常は引数のセクションで分岐して値を返却する
        return name.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //セルを取得する。
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddressCell", for: indexPath) as! AddressListViewCell
        cell.name?.text = name[indexPath.row]
        return cell
    }


}

