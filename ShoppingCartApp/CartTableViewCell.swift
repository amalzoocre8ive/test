//
//  CartTableViewCell.swift
//  ShoppingCartApp
//
//  Created by Apple on 07/02/17.
//  Copyright © 2017 zoocre8ive. All rights reserved.
//

import UIKit

protocol delegateForCartCell {
    func didDeleteButtonPressed(index:Int)
}

class CartTableViewCell: UITableViewCell {
    
    var delegate:delegateForCartCell?

    @IBOutlet var lblQuantity: UILabel!
    @IBOutlet var lblPrice: UILabel!
    @IBOutlet var lblProductName: UILabel!
    
    var currentIndex:Int?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func btnActionDelete(_ sender: Any) {
        self.delegate?.didDeleteButtonPressed(index: currentIndex!)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCellData(cartProductObj:CartProductModel, index:Int) {
        currentIndex = index
        self.lblQuantity.text = cartProductObj.strProductQuantity
        self.lblPrice.text = cartProductObj.strProductPrice
        self.lblProductName.text = cartProductObj.strProductName
    }
    
    
}
