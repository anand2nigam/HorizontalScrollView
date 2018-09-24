//
//  TestTableViewCell.swift
//  HorizontalScrollView
//
//  Created by Anand Nigam on 24/09/18.
//  Copyright © 2018 Anand Nigam. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {

    @IBOutlet weak var insertedCollectionView: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
