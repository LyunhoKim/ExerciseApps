//
//  MovieTableViewCell.swift
//  BoxOffice
//
//  Created by Lyunho Kim on 05/01/2019.
//  Copyright © 2019 Lyunho Kim. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet var moviePosterImage: UIImageView!
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var openDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
