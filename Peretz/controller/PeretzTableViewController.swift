//
//  PeretzTableViewController.swift
//  Peretz
//
//  Created by Руслан Алиев on 08.02.2022.
//

import UIKit

class PeretzTableViewController: UITableViewController {
    

    var objects = [
        Peretz(id: 828, date: "27.04.2020 16:08:32", name: "Салат с копченой телятиной", description: "Нежная копченая телятина, яйцо куриное, капуста пикинская, морковь, чеснок, зерна граната, майонез сливочный", new: false, variations: [0], price: 318, imageApp: "https://peretz-group.ru/upload/iblock/be0/be00543819d94e94a871a41736a210f4.png", image: "be00543819d94e94a871a41736a210f4", sort: 500),
        Peretz(id: 814, date: "27.04.2020 16:02:29", name: "Гнездо", description: "Филе куриное, ветчина индейки, язык говяжий, лист салата, сыр пармезан, картофель пай, яйца перепелиные, огурцы свежие и маринованные\n", new: false, variations: [0], price: 343, imageApp: "https://peretz-group.ru/upload/iblock/9b8/9b864f942dc8f2cb4849f5fe19c87739.png", image: "9b864f942dc8f2cb4849f5fe19c87739", sort: 500),
        Peretz(id: 815, date: "27.04.2020 16:03:02", name: "Гурия", description: "Телятина копченая, филе куриное, помидоры конкассе, огурцы свежие, перец цветной, лук зеленый\n", new: false, variations: [0], price: 273, imageApp: "https://peretz-group.ru/upload/iblock/0f8/0f8f4f2ef6e4bd109810f98638284fb2.png", image: "0f8f4f2ef6e4bd109810f98638284fb2", sort: 500),
        Peretz(id: 818, date: "27.04.2020 16:04:16", name: "Салат с пикантной курочкой", description: "Куриная грудка собственного запечения, микс зелени, лист романо, черри, соус горчичный\n", new: false, variations: [0], price: 293, imageApp: "https://peretz-group.ru/upload/iblock/769/769e093cf9a2e1ae6ae2d5361e70e651.png", image: "769e093cf9a2e1ae6ae2d5361e70e651", sort: 500)
    
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
