//
//  PeretzTableViewCellFour.swift
//  Peretz
//
//  Created by Руслан Алиев on 09.02.2022.
//

import UIKit

class PeretzTableViewCellFour: UITableViewCell {
    
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var imageViewFour: UIImageView!
    @IBOutlet weak var textViewFour: UITextView!
    @IBOutlet weak var priceFour: UILabel!
    @IBOutlet weak var numberLabelFour: UILabel!
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func set(object: Peretz) {
        self.labelFour.text = object.title
        self.textViewFour.text = object.description
        self.priceFour.tag = object.price
        self.numberLabelFour.tag = object.number
    }
}
