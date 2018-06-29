//
//  SpecialTableViewCell.swift
//  HelloTableView
//
//  Created by 林奕德 on 2018/3/31.
//  Copyright © 2018年 AppsAdamLin. All rights reserved.
//

import UIKit

class SpecialTableViewCell: UITableViewCell {
    @IBOutlet weak var specialimageView: UIImageView!
    @IBOutlet weak var specialLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
