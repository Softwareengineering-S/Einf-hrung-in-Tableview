//
//  ViewController.swift
//  TableView
//
//  Created by Christian on 21.11.17.
//  Copyright © 2017 Christian. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // MARK: - Data
    let sections = ["Salami Pizza", "Margarita Pizza", "Pizza Tonno"]
    let zutatenListe = [["Tomatensauce", "Käse", "Salami"], ["Tomatensauce", "Käse"], ["Tomatensauce", "Käse", "Tunfisch", "Zwiebeln"]]
    let naehrWerte = ["E: 20g KH: 30g F: 20g Kcal: 400", "E: 10g KH: 20g F: 10g Kcal: 600", "E: 15g KH: 30g F: 20g Kcal: 435"]
    
    // MARK: - Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
       }

    // MARK: - TableView methods
    
//    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//            view.tintColor = UIColor.blue
//            let headerView = view as! UITableViewHeaderFooterView
//            headerView.textLabel?.font = UIFont(name: "Apple Chancery", size: 12)
//            headerView.backgroundView?.backgroundColor = UIColor.white
//       }
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 25
//    }
    
//    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
//            view.tintColor = UIColor.black
//            let headerView = view as! UITableViewHeaderFooterView
//            headerView.textLabel?.font = UIFont(name: "Apple Chancery", size: 10)
//            headerView.backgroundView?.backgroundColor = UIColor.white
//    }
    
//    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 25
//    }
    
    
    // Namen für Header in den Sektionen vergeben
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    // Namen für Footer vergeben
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return naehrWerte[section]
    }
    
    // Wie viele Sektionen soll es geben?
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    // Wie viele Zeilen pro Sektion?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return zutatenListe[section].count
    }
    
    // Wie soll eine Zeile aussehen?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuItem", for: indexPath)
        
        cell.textLabel?.text = zutatenListe[indexPath.section][indexPath.row]
        
        return cell
      
    }
    
    
}




















