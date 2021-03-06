//
//  HomeViewController.swift
//  Homework41
//
//  Created by Kato on 6/16/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var coffees = [Coffee]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addCoffees()
        
        tableView.dataSource = self
        
    }
    
    func addCoffees() {
        let espresso = Coffee(coffeeName: "Espresso", coffeeImage: UIImage(named: "Espresso")!)
        let cappuccino = Coffee(coffeeName: "Cappuccino", coffeeImage: UIImage(named: "Cappuccino")!)
        let macciato = Coffee(coffeeName: "Macciato", coffeeImage: UIImage(named: "macciato")!)
        let mocha = Coffee(coffeeName: "Mocha", coffeeImage: UIImage(named: "Mocha")!)
        let latte = Coffee(coffeeName: "Latte", coffeeImage: UIImage(named: "latte")!)
        
        coffees.append(espresso)
        coffees.append(cappuccino)
        coffees.append(macciato)
        coffees.append(mocha)
        coffees.append(latte)
    }
    


}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "home_cell", for: indexPath) as! HomeCell
        
        cell.coffeeImage.image = coffees[indexPath.row].coffeeImage
        cell.coffeeNameLabel.text = coffees[indexPath.row].coffeeName
        
        cell.backgroundColor = UIColor(red: 250/255, green: 244/255, blue: 238/255, alpha: 1)
        
        return cell
    }
    
}

struct Coffee {
    var coffeeName: String
    var coffeeImage: UIImage
    
}
