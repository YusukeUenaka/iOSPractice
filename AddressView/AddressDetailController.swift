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
    @IBOutlet weak var StackView: UIStackView!

    @IBOutlet weak var mAddress: UILabel!
    @IBOutlet weak var telNumber: UILabel!
    let mailAddress: [String] = ["sato@localhost.com","suzuki@localhost.com","takahashi@localhost.com","tanaka@localhost.com","itou@localhost.com","watanabe@localhost.com"]
    
    let phoneNumber: [String] = ["090-0000-0000","090-0000-0001","090-0000-0002","090-0000-0003","090-0000-0004","090-0000-0005"]

    
    
    
    
    // MARK: - Initializer
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(sq: Int) {
        addressSq = sq
//        mAddress.text = mailAddress[addressSq]
        // mAddress.text = mailAddress[0]
        // telNumber.text = phoneNumber[addressSq]
        //mAddress.text = "sato@localhost.com"
        //telNumber.text = "090-0000-0000"
        super.init(nibName: nil, bundle: nil)
    }
    
    
}

