//
//  PeretzTableViewCell.swift
//  Peretz
//
//  Created by Руслан Алиев on 09.02.2022.
//

import UIKit

class PeretzTableViewCell: UITableViewCell {

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var imageViewOne: UIImageView!
    @IBOutlet weak var textViewOne: UITextView!
    @IBOutlet weak var priceOne: UILabel!
    @IBOutlet weak var minusLabel: UIImageView!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var plusLabel: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}


