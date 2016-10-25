//
//  BusinessCell.swift
//  Yelp
//
//  Created by Patrick Yoon on 10/22/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

  @IBOutlet weak var categoryLabel: UILabel!
  @IBOutlet weak var addressLabel: UILabel!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var priceLabel: UILabel!
  @IBOutlet weak var distanceLabel: UILabel!
  @IBOutlet weak var thumbView: UIImageView!
  @IBOutlet weak var reviewLabel: UILabel!
  @IBOutlet weak var ratingView: UIImageView!

  var business: Business! {
    didSet {
      titleLabel.text = business.name
      titleLabel.preferredMaxLayoutWidth = titleLabel.frame.size.width
      thumbView.setImageWith(business.imageURL!)
      categoryLabel.text = business.categories
      addressLabel.text = business.address
      reviewLabel.text = "\(business.reviewCount!) Reviews"
      ratingView.setImageWith(business.ratingImageURL!)
      distanceLabel.text = business.distance
    }
  }

  override func layoutSubviews() {
    super.layoutSubviews()
    titleLabel.preferredMaxLayoutWidth = titleLabel.frame.size.width
  }

  override func awakeFromNib() {
    super.awakeFromNib()
    thumbView.layer.cornerRadius = 3
    thumbView.clipsToBounds = true
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)

    // Configure the view for the selected state
  }

}
