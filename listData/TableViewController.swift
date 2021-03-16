//
//  TableViewController.swift
//  listData
//
//  Created by 三浦　一真 on 2021/03/16.
//

import UIKit

struct Item {
    var pokemonImage: UIImage
    var name: String
}

class TableViewController: UITableViewController {
    private let items: [Item] = [
        Item(pokemonImage: UIImage(named: "コリンク.png")!,
             name: "コリンク"),
        Item(pokemonImage: UIImage(named: "ヒノアラシ.png")!,
             name: "ヒノアラシ"),
        Item(pokemonImage: UIImage(named: "ナエトル.png")!,
             name: "ナエトル"),
        Item(pokemonImage: UIImage(named: "オムナイト.png")!,
             name: "オムナイト"),
        Item(pokemonImage: UIImage(named: "チルット.png")!,
             name: "チルット"),
    ]
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
            tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            as! TableViewCell
        cell.setting(item: items[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
}
