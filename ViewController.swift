//
//  ViewController.swift
//  JwelleryShop
//
//  Created by ORDOFY on 26/04/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var jwelleryTblView: UITableView!
    
    var jwelleryNameArray = ["Nekless","Neckless set","Long chain set","Dimond chain","Multi Chain","Curve neckless","Thread neckless","Earrings","Ruby stone","Simple neckless"]
    var jwelleryWeightArray = [12,32,45,56,76,78,55,14,23,45]
    var jwelleryPriceArray = [12000,23000,34000,56000,67000,78000,53000,8000,19000,34000]
    var jwelleryImgArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        jwelleryImgArray += [UIImage(named: "img1")!,UIImage(named: "img2")!,UIImage(named: "img3")!,UIImage(named: "img4")!,UIImage(named: "img5")!,UIImage(named: "img6")!,UIImage(named: "img7")!,UIImage(named: "img8")!,UIImage(named: "img9")!,UIImage(named: "img10")!]
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.jwelleryNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "jwelleryTableViewCell", for: indexPath)as! jwelleryTableViewCell
        
        cell.jwelleryName.text = jwelleryNameArray[indexPath.row]
        cell.jwelleryWeight.text = "\(jwelleryWeightArray[indexPath.row]) grms" //String(jwelleryWeightArray[indexPath.row]) + " grms"
        cell.jwelleryPrice.text = "₹ \(jwelleryPriceArray[indexPath.row])"
        cell.jwelleryImg.image = jwelleryImgArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(" clicked on \(jwelleryNameArray[indexPath.row]) weight is \(jwelleryWeightArray[indexPath.row]) grms and price is Rs. \(jwelleryPriceArray[indexPath.row])")
    }
}

