//
//  PeretzTableViewCellThree.swift
//  Peretz
//
//  Created by Руслан Алиев on 09.02.2022.
//

import UIKit

class PeretzTableViewCellThree: UITableViewCell {
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var imageViewThree: UIImageView!
    @IBOutlet weak var textViewThree: UITextView!
    @IBOutlet weak var priceThree: UILabel!
    @IBOutlet weak var numberLabelThree: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func set(object: Peretz) {
        self.labelThree.text = object.title
        self.textViewThree.text = object.description
        self.priceThree.tag = object.price
        self.numberLabelThree.tag = object.number
    }
    
}

