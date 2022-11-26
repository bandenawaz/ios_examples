//
//  ViewController.swift
//  ArticlesDemo
//
//  Created by Bandenawaz Bagwan on 24/11/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    
    
    
    
@IBOutlet weak var tableView: UITableView!
let devCourses = [("Swift"),("Apple"),("Window"),("Android")]
let devCousesImages = [UIImage(named: "swift"), UIImage(named: "apple"), UIImage(named: "windows"), UIImage(named: "android")]
    
    
override func viewDidLoad() {
    
    super.viewDidLoad()
}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellControllerTableViewCell
        cell.articleLogo.image=self.devCousesImages[indexPath .row]
        cell.titleLabel.text=self.devCourses[indexPath .row]
        
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        devCourses.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
