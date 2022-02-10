//
//  PeretzTableViewCellTwo.swift
//  Peretz
//
//  Created by Руслан Алиев on 09.02.2022.
//

import UIKit

class PeretzTableViewCellTwo: UITableViewCell {
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var imageViewTwo: UIImageView!
    @IBOutlet weak var textViewTwo: UITextView!
    @IBOutlet weak var priceTwo: UILabel!
    @IBOutlet weak var numberLabelTwo: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func set(object: Peretz) {
        self.labelTwo.text = object.title
        self.textViewTwo.text = object.description
        self.priceTwo.tag = object.price
        self.numberLabelTwo.tag = object.number
    }
}
