//
//  ViewController.swift
//  TableView Test
//
//  Created by Christian on 27.09.18.
//  Copyright © 2018 codingenieur. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    // MARK: - Outlet
    @IBOutlet weak var personsTableView: UITableView!
    
    var persons : [String] = ["Peter", "Maria", "Chris", "Kevin", "Jürgen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        personsTableView.delegate = self
        personsTableView.dataSource = self

    }

    // MARK: - TableView Datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        
        cell.textLabel?.text = persons[indexPath.row]
        
        return cell
    }
    
    // MARK: - TableView Delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Sektion: \(indexPath.section)")
        print("Zeile: \(indexPath.row)")
        
        let row = indexPath.row
        
        if row == 2 {
            print("Du hast die Tabellenzeile 2 gedrückt")
        }
    }

}

