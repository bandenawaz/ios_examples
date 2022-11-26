//
//  ViewController.swift
//  IOSProductsApp
//
//  Created by Bandenawaz Bagwan on 25/11/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    var objects = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //lets append the data to our list view
        self.objects.append("iPhone")
        self.objects.append("iPad")
        self.objects.append("iWatch")
        self.objects.append("MacBook")
    }

/*
    func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }
 */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.objects.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let aCell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellClassTableViewCell
        aCell.titleLabel.text = self.objects[indexPath.row]
        return aCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "prducts_page", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier == "prducts_page"){
            
            var detailedVC: DetailedViewController = segue.destination as! DetailedViewController
            
            let indexPath = self.tableView.indexPathForSelectedRow!
            
            let titleString = self.objects[indexPath.row]
            detailedVC.titleViaSegue = titleString
            self.tableView.deselectRow(at: indexPath, animated: true)
        }
        
    }
    
}

