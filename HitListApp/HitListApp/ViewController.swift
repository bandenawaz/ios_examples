//
//  ViewController.swift
//  HitListApp
//
//  Created by Bandenawaz Bagwan on 25/11/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    

   
    @IBOutlet weak var tableView: UITableView!
    
    //lets create an array of strings
    var names : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
     
        title = "Fav People"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "data_cell")
        //the line missed during the last session
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "data_cell", for:indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
   
    
    @IBAction func addName(_ sender: Any) {
        
        let alert = UIAlertController(title: "Add name", message: "Add a new name to the list", preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .default){
            
            [unowned self] action in
            guard let textFiled = alert.textFields?.first,
                  let nameToSave = textFiled.text else {
               
                return
            }
            
            self.names.append(nameToSave)
            //print(nameToSave)
            //print(names)
            self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addTextField()
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
    }
}

