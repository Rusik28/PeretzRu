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
    @IBOutlet weak var numberLabel: UILabel!
    
    private var number = 0 

    @IBAction func minusButton(_ sender: UIButton) {
        number -= 1
        numberLabel.text = "\(number)"
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        numberLabel.text = "\(number)"
    }
   
   
    
    @IBAction func plusButton(_ sender: UIButton) {
        number += 1
        numberLabel.text = "\(number)"
        
    }
     override func didMoveToWindow() {
        super.didMoveToWindow()
         numberLabel.text = "\(number)"
    }
    
    
    override func accessibilityDecrement() {
        super.accessibilityDecrement()
    }
    
    
   
    
    
    
    func set(object: Peretz) {
        self.labelOne.text = object.name
        self.textViewOne.text = object.description
        self.priceOne.text = "\(object.price) ₽"
        self.imageViewOne.image = UIImage(named: object.image)
    }
    

}





