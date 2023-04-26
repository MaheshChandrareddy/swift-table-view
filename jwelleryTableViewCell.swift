//
//  jwelleryTableViewCell.swift
//  JwelleryShop
//
//  Created by ORDOFY on 26/04/23.
//

import UIKit

class jwelleryTableViewCell: UITableViewCell {
   
    @IBOutlet weak var jwelleryName: UILabel!
    @IBOutlet weak var jwelleryWeight: UILabel!
    @IBOutlet weak var jwelleryPrice: UILabel!
    @IBOutlet weak var jwelleryImg: UIImageView!
    @IBOutlet weak var jwelleryDetailsView: UIView!


    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        jwelleryDetailsView.layer.cornerRadius = 8.0
        jwelleryDetailsView.layer.masksToBounds = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    


}
