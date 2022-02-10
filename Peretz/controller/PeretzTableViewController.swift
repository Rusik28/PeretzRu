//
//  PeretzTableViewController.swift
//  Peretz
//
//  Created by Руслан Алиев on 08.02.2022.
//

import UIKit

class PeretzTableViewController: UITableViewController {
    
    var objects = [
        Peretz(title: "Салат с копченой телятиной", description: "Нежная копченая телятина, яйцо куриное, капуста пикинская, морковь, чеснок, зерна граната, майонез сливочный", price: 318, sign: "plus", number: 0, isFavourite: false),
        Peretz(title: "Салат с черносливом ХИТ", description: "Запеченное куриное филе, чернослив, огурцы свежие, обжаренные шампиньоны, грецкий орех, белок яйцца, сливочный майонез", price: 273, sign: "plus", number: 0, isFavourite: false),
        Peretz(title: "Салат с копченой телятиной", description: "Нежная копченая телятина, яйцо куриное, капуста пикинская, морковь, чеснок, зерна граната, майонез сливочный", price: 318, sign: "plus", number: 0, isFavourite: false),
        Peretz(title: "Салат с черносливом ХИТ", description: "Запеченное куриное филе, чернослив, огурцы свежие, обжаренные шампиньоны, грецкий орех, белок яйцца, сливочный майонез", price: 273, sign: "plus", number: 0, isFavourite: false)
    ]
  
    
     override func viewDidLoad() {
         super.viewDidLoad()

    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return objects.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "peretzCellOne", for: indexPath) as? PeretzTableViewCell else { return
            UITableViewCell()
        }
        cell.set(object: objects[indexPath.row])
        return cell
    }
}
