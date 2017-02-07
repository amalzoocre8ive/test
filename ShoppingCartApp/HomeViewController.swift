//
//  HomeViewController.swift
//  ShoppingCartApp
//
//  Created by Apple on 07/02/17.
//  Copyright © 2017 zoocre8ive. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, delegateForTableCell, delegateForCart{
    @IBOutlet var btnCart: UIBarButtonItem!
    @IBOutlet var tblProducts: UITableView!
    var numOfProductsInCart:Int = 0

    @IBOutlet var lblTP: UILabel!
    var arrayForCell:NSMutableArray = NSMutableArray()
    var arrayForCart:NSMutableArray = NSMutableArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTableData()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tblProducts.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK:Button Actions
    
    @IBAction func btnCartAction(_ sender: Any) {
        self.performSegue(withIdentifier: "goToCart", sender: nil)
    }
    
    // MARK:Table View Delegates
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayForCell.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let obj = arrayForCell.object(at: indexPath.row)
         let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell") as! ProductTableViewCell
        cell.delegate = self
        cell.setCellData(productObj: obj as! ProductModel, index: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    // MARK:Custom Functions
    
    func setTableData() {
        var productObj = ProductModel(name:"Key",Price:"80",Stock:"5")
        arrayForCell.add(productObj)
        
        var cartObj = CartProductModel(name:"Key",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        productObj = ProductModel(name:"Mobile",Price:"100",Stock:"15")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"Mobile",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        productObj = ProductModel(name:"Pen",Price:"50",Stock:"25")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"Pen",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        
        
        
        productObj = ProductModel(name:"Bottle",Price:"100",Stock:"15")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"Bottle",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        productObj = ProductModel(name:"Shirt",Price:"50",Stock:"25")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"Shirt",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        
        
        
        productObj = ProductModel(name:"Mac",Price:"100",Stock:"15")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"Mac",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        productObj = ProductModel(name:"Purse",Price:"50",Stock:"25")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"Purse",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        
        
        
        
        
        productObj = ProductModel(name:"Book",Price:"100",Stock:"15")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"Book",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        productObj = ProductModel(name:"Cable",Price:"50",Stock:"25")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"Cable",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        
        productObj = ProductModel(name:"Stick",Price:"100",Stock:"15")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"Stick",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        productObj = ProductModel(name:"Scooter",Price:"50",Stock:"25")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"Scooter",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        
        
        
        productObj = ProductModel(name:"AC",Price:"100",Stock:"15")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"AC",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        productObj = ProductModel(name:"Monitor",Price:"50",Stock:"25")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"Monitor",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        productObj = ProductModel(name:"LED",Price:"50",Stock:"25")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"LED",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        
        productObj = ProductModel(name:"Sensor",Price:"100",Stock:"15")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"Sensor",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        productObj = ProductModel(name:"Ring",Price:"50",Stock:"25")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"Ring",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        
        
        productObj = ProductModel(name:"Bulb",Price:"100",Stock:"15")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"Bulb",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        productObj = ProductModel(name:"Glass",Price:"50",Stock:"25")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"Glass",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        
        
        
        
        productObj = ProductModel(name:"Printer",Price:"100",Stock:"15")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"Printer",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        productObj = ProductModel(name:"Chair",Price:"50",Stock:"25")
        arrayForCell.add(productObj)
        
        cartObj = CartProductModel(name:"Chair",Price:"0",Quantity:"0")
        arrayForCart.add(cartObj)
        
        
        
        tblProducts.reloadData()
        self.calculateTotalPrice()
    }
    
    
    
    
    func changeData(oldProduct:ProductModel, newProduct:ProductModel) {
        let index = arrayForCell.index(of: oldProduct)
        NSLog("Index = %d", index)
        arrayForCell.replaceObject(at: index, with: newProduct)
        tblProducts.reloadData()
    }

    
// MARK:Cell Delegate
    
    func didBuyButtonPressed(index:Int) {
        let oldProduct = arrayForCell.object(at: index) as! ProductModel
        let priceStr = oldProduct.strProductPrice
        let productPrice = Int(priceStr!)
        let newStock = Int(oldProduct.strProductStock!)!-1
        if(newStock>=0)
        {
            
            
            // for cart values
            let bPredicate: NSPredicate = NSPredicate(format: "SELF.strProductName ==[c] %@", oldProduct.strProductName!)
            let filteredArray = self.arrayForCart.filtered(using: bPredicate)
          
            let cartObj = filteredArray.first as! CartProductModel
            let indexOfCartObj = arrayForCart.index(of: cartObj)
            let price = Int(cartObj.strProductPrice!)
            let quantity = Int(cartObj.strProductQuantity!)
            let newPriceForCartObj = price!+Int(productPrice!)
            cartObj.setProductWithValues(name: oldProduct.strProductName!, Price: String(newPriceForCartObj), Quantity: String(quantity!+1))
            arrayForCart.replaceObject(at: indexOfCartObj, with: cartObj)
            
            
            
            
            // For Self
            
            let newProduct = ProductModel(name: oldProduct.strProductName!, Price: oldProduct.strProductPrice!, Stock: String(newStock))
            self.changeData(oldProduct: oldProduct, newProduct: newProduct)
            numOfProductsInCart = numOfProductsInCart+1
            btnCart.title = String(numOfProductsInCart)
        }
        self.calculateTotalPrice()
    }
    
    // MARK:Segue Delegate
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! CartViewController
        destinationVC.arrayForCart = arrayForCart
        destinationVC.delegate = self
    }
    
    func didCartItemRemoved(cartObj: CartProductModel) {
        let Predicate: NSPredicate = NSPredicate(format: "SELF.strProductName ==[c] %@", cartObj.strProductName!)
        let NewFilteredArray = self.arrayForCart.filtered(using: Predicate)
        let recCartObj = NewFilteredArray.first as! CartProductModel
        
        let indexOfCartObj = self.arrayForCart.index(of: recCartObj)

        let bPredicate: NSPredicate = NSPredicate(format: "SELF.strProductName ==[c] %@", cartObj.strProductName!)
        let filteredArray = self.arrayForCell.filtered(using: bPredicate)
        
        let productObj = filteredArray.first as! ProductModel
        let indexOfProductObj = arrayForCell.index(of: productObj)
        let price = Int(productObj.strProductPrice!)
        let quantity = Int(productObj.strProductStock!)
        
        let cartQuantity = Int(productObj.strProductStock!)!+1
        cartObj.setProductWithValues(name: cartObj.strProductName!, Price: cartObj.strProductPrice!, Quantity: String(cartQuantity))
       
        productObj.setProductWithValues(name: productObj.strProductName!, Price: productObj.strProductPrice!, Stock: String(quantity!+1))
        arrayForCart.replaceObject(at: indexOfCartObj, with: cartObj)
        
        numOfProductsInCart = numOfProductsInCart-1
        btnCart.title = String(numOfProductsInCart)
        self.calculateTotalPrice()
        
    }
    
    func calculateTotalPrice()
    {
        var price = 0;
        for myObj in arrayForCart {
            price = price + Int((myObj as! CartProductModel).strProductPrice!)!
        }
        lblTP.text = String(format: "Total Price : %@", String(price))
    }
    
    
}
