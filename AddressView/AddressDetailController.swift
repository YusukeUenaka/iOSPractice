//
//  AddressDetailController.swift
//  AddressView
//
//  Created by TechLab.1 on 2018/03/08.
//  Copyright © 2018年 TechLab.1. All rights reserved.
//

import Foundation
import UIKit



class AddressDetailController: UIViewController, UITableViewDelegate  {

    fileprivate let addressSq: Int

    
    @IBOutlet weak var mailAddress: UILabel!
    @IBOutlet weak var telNumber: UILabel!
    let mAddress: [String] = ["sato@localhost.com","suzuki@localhost.com","takahashi@localhost.com","tanaka@localhost.com","itou@localhost.com","watanabe@localhost.com"]
    
    let phoneNumber: [String] = ["090-0000-0000","090-0000-0001","090-0000-0002","090-0000-0003","090-0000-0004","090-0000-0005"]

    
    
    
    
    // MARK: - Initializer
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(sq: Int) {
        addressSq = sq
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        //mAddress.text = mailAddress[addressSq]
        //mailAddress.text = mAddress[1]
        // telNumber.text = phoneNumber[addressSq]
        self.mailAddress.text = "sato@localhost.com"
        self.telNumber.text = "090-0000-0000"
    }
    
    override func loadView() {
        if let loadView = UINib(nibName: "AddressDetailController", bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView {
            view = loadView
        }
    }
    
    
}

