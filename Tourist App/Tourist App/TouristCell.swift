//
//  TouristCell.swift
//  Tourist App


import UIKit

class TouristCell: UITableViewCell {

    @IBOutlet weak var lblTouristPlaces: UILabel!
    @IBOutlet weak var imgTouristPlaces: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
