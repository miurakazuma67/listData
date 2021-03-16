//
//  TableViewCell.swift
//  listData
//
//  Created by 三浦　一真 on 2021/03/16.
//

import UIKit

class TableViewCell: UITableViewCell {
    

    @IBOutlet weak var pokemonImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    func setting(item: Item) {
        pokemonImage.image = item.pokemonImage
        nameLabel.text = item.name
    }
}
