//
//  CartViewController.swift
//  ShoppingCartApp
//
//  Created by Apple on 07/02/17.
//  Copyright © 2017 zoocre8ive. All rights reserved.
//

import UIKit

protocol delegateForCart {
    func didCartItemRemoved(cartObj:CartProductModel)
}



class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, delegateForCartCell {
    var delegate:delegateForCart?
    @IBOutlet var tblCart: UITableView!
    var arrayForCart:NSMutableArray?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK:Table View Delegates
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayForCart!.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let obj = arrayForCart?.object(at: indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell") as! CartTableViewCell
        cell.delegate = self
        cell.setCellData(cartProductObj: obj as! CartProductModel, index: indexPath.row)
        return cell
    }
    
    
    func didDeleteButtonPressed(index: Int) {
        
        
        
        let oldProduct = arrayForCart?.object(at: index) as! CartProductModel
        let price:Int?
        if(Int(oldProduct.strProductQuantity!) != 0)
        {
            price = Int(oldProduct.strProductPrice!)!/Int(oldProduct.strProductQuantity!)!
        }
        else
        {
            price = Int(oldProduct.strProductPrice!)
        }
        let newStock = Int(oldProduct.strProductQuantity!)!-1
        if(newStock >= 0)
        {
            

        let newProduct = CartProductModel(name: oldProduct.strProductName!, Price: String(Int(oldProduct.strProductPrice!)! - price!), Quantity: String(newStock))
        
            
        self.delegate?.didCartItemRemoved(cartObj: oldProduct)
            self.changeData(oldProduct: oldProduct, newProduct: newProduct)
        }
        
    }
   
    func changeData(oldProduct:CartProductModel, newProduct:CartProductModel) {
        let index = arrayForCart?.index(of: oldProduct)
    
        arrayForCart?.replaceObject(at: index!, with: newProduct)
        tblCart.reloadData()
    }


}
