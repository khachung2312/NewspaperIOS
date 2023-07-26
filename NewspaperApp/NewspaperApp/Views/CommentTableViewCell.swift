//
//  CommentTableViewCell.swift
//  NewspaperApp
//
//  Created by Thanh Dat on 27/07/2023.
//

import UIKit

class CommentTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var lblComment: UILabel!
    
    @IBOutlet weak var imgAvatar: UIImageView!
    
    @IBOutlet weak var btnLike: UIButton!
    
    @IBOutlet weak var btnComment: UIButton!
    
    @IBOutlet weak var tblComment2: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
