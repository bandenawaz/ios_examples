//
//  TableViewCellControllerTableViewCell.swift
//  ArticlesDemo
//
//  Created by Bandenawaz Bagwan on 24/11/22.
//

import UIKit

class TableViewCellControllerTableViewCell: UITableViewCell {

    @IBOutlet weak var articleLogo: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
