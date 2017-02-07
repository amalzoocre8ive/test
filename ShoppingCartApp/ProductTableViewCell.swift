//
//  ProductTableViewCell.swift
//  ShoppingCartApp
//
//  Created by Apple on 07/02/17.
//  Copyright © 2017 zoocre8ive. All rights reserved.
//

import UIKit

protocol delegateForTableCell {
    func didBuyButtonPressed(index:Int)
}



class ProductTableViewCell: UITableViewCell {

    var delegate:delegateForTableCell?
    
    @IBOutlet var lblStock: UILabel!
    @IBOutlet var lblPrice: UILabel!
    @IBOutlet var lblProductName: UILabel!
    
    var currentIndex:Int?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCellData(productObj:ProductModel, index:Int) {
        currentIndex = index
        self.lblStock.text = productObj.strProductStock
        self.lblPrice.text = productObj.strProductPrice
        self.lblProductName.text = productObj.strProductName
    }
    
    @IBAction func btnActionBuy(_ sender: Any) {
        self.delegate?.didBuyButtonPressed(index: currentIndex!)
    }
    

}
