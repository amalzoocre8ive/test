//
//  CartProductModel.swift
//  ShoppingCartApp
//
//  Created by Apple on 07/02/17.
//  Copyright © 2017 zoocre8ive. All rights reserved.
//

import UIKit

class CartProductModel: NSObject {
    var strProductName: String?
    var strProductPrice: String?
    var strProductQuantity: String?
    
    
    init(dictionary: NSDictionary) {
        
    }
    
    init(name:String,Price:String,Quantity:String)
    {
        strProductName = name
        strProductPrice = Price
        strProductQuantity = Quantity
    }
    
    func setProductWithValues(name:String,Price:String,Quantity:String) {
        strProductName = name
        strProductPrice = Price
        strProductQuantity = Quantity
    }
}
