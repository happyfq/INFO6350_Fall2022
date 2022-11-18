//
//  ImagePostTableViewCell.swift
//  InstaTok
//
//  Created by Fq W on 11/17/22.
//

import UIKit

class ImagePostTableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var datetime: UILabel!
    
    @IBOutlet weak var caption: UILabel!
    
    @IBOutlet weak var location: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    
}
