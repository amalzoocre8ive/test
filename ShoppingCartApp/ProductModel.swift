//
//  ProductModel.swift
//  ShoppingCartApp
//
//  Created by Apple on 07/02/17.
//  Copyright © 2017 zoocre8ive. All rights reserved.
//

import UIKit

class ProductModel: NSObject {
    var strProductName: String?
    var strProductPrice: String?
    var strProductStock: String?
    
    
    init(dictionary: NSDictionary) {
        
    }
    
    init(name:String,Price:String,Stock:String)
    {
        strProductName = name
        strProductPrice = Price
        strProductStock = Stock
    }
    
    func setProductWithValues(name:String,Price:String,Stock:String) {
        strProductName = name
        strProductPrice = Price
        strProductStock = Stock
    }
}
