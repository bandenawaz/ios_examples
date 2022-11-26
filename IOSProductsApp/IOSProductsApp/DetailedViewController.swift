//
//  DetailedViewController.swift
//  IOSProductsApp
//
//  Created by Bandenawaz Bagwan on 25/11/22.
//

import UIKit

class DetailedViewController: UIViewController {
    
    @IBOutlet weak var productLabel: UILabel!
    var titleViaSegue: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.productLabel.text = self.titleViaSegue
    }
    

    

}
