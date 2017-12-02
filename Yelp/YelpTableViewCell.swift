//
//  YelpTableViewCell.swift
//  Yelp
//
//  Created by Madel Asistio on 12/1/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class YelpTableViewCell: UITableViewCell {
    @IBOutlet weak var reviewCountLabel: UILabel!

    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var reviewImageView: UIImageView!
    @IBOutlet weak var businessImageView: UIImageView!
    
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    var business: Business! {
        didSet {
            titleLabel.text = business.name
            businessImageView.setImageWith(business.imageURL!)
            categoriesLabel.text = business.categories!
            reviewCountLabel.text = " \(business.reviewCount!) Reviews"
            addressLabel.text = business.address!
            distanceLabel.text = "\(business.distance!)"
            reviewImageView.setImageWith(business.ratingImageURL!)
            
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        businessImageView.layer.cornerRadius = 3
        businessImageView.clipsToBounds = true
        
        titleLabel.preferredMaxLayoutWidth = titleLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
         titleLabel.preferredMaxLayoutWidth = titleLabel.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
