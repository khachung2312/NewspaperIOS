//
//  ListArticlesTableViewCell.swift
//  NewspaperApp
//
//  Created by Lê Đình Linh on 26/07/2023.
//

import UIKit

class ListArticlesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblPostTime: UILabel!
    @IBOutlet weak var lblTenBaiViet: UILabel!
    @IBOutlet weak var imgAnhBaiViet: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
