//
//  ItemTableViewCell.swift
//  AuthApp
//
//  Created by macbro on 20/04/22.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageProfil: UIImageView!
  
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userContent: UILabel!
    @IBOutlet weak var userInfo: UILabel!
    
    @IBOutlet weak var imageInfo: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
