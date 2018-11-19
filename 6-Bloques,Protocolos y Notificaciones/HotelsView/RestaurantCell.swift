//
//  RestaurantCell.swift
//  HotelsView
//
//  Created by fernando rossetti on 12/12/16.
//  Copyright © 2016 fernando rossetti. All rights reserved.
//

import UIKit

class RestaurantCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var star1ImageView: UIImageView!
    @IBOutlet weak var star2ImageView: UIImageView!
    @IBOutlet weak var star3ImageView: UIImageView!
    @IBOutlet weak var star4ImageView: UIImageView!
    @IBOutlet weak var star5ImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func setupStars(raking:Int)
    {
        switch raking{
        case 1:
            star1ImageView.image = UIImage(named: "starFull")
            star2ImageView.image = UIImage(named: "starEmpty")
            star3ImageView.image = UIImage(named: "starEmpty")
            star4ImageView.image = UIImage(named: "starEmpty")
            star5ImageView.image = UIImage(named: "starEmpty")
        case 2:
            star1ImageView.image = UIImage(named: "starFull")
            star2ImageView.image = UIImage(named: "starFull")
            star3ImageView.image = UIImage(named: "starEmpty")
            star4ImageView.image = UIImage(named: "starEmpty")
            star5ImageView.image = UIImage(named: "starEmpty")
        case 3:
            star1ImageView.image = UIImage(named: "starFull")
            star2ImageView.image = UIImage(named: "starFull")
            star3ImageView.image = UIImage(named: "starFull")
            star4ImageView.image = UIImage(named: "starEmpty")
            star5ImageView.image = UIImage(named: "starEmpty")
        case 4:
            star1ImageView.image = UIImage(named: "starFull")
            star2ImageView.image = UIImage(named: "starFull")
            star3ImageView.image = UIImage(named: "starFull")
            star4ImageView.image = UIImage(named: "starFull")
            star5ImageView.image = UIImage(named: "starEmpty")
        case 5:
            star1ImageView.image = UIImage(named: "starFull")
            star2ImageView.image = UIImage(named: "starFull")
            star3ImageView.image = UIImage(named: "starFull")
            star4ImageView.image = UIImage(named: "starFull")
            star5ImageView.image = UIImage(named: "starFull")
        default:
            star1ImageView.image = UIImage(named: "starEmpty")
            star2ImageView.image = UIImage(named: "starEmpty")
            star3ImageView.image = UIImage(named: "starEmpty")
            star4ImageView.image = UIImage(named: "starEmpty")
            star5ImageView.image = UIImage(named: "starEmpty")
        }
        
    }


}
