//
//  CommentsTableViewCell.swift
//  NewspaperApp
//
//  Created by Vũ Đình Duẩn on 26/07/2023.
//

import UIKit

class CommentsTableViewCell: UITableViewCell, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var btnEdit: UIButton!
    @IBOutlet weak var lblComment: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgAvatar: UIImageView!
    
    @IBOutlet weak var tblAnswers: UITableView!
    
    var listAnswers: [CommentsModel] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tblAnswers.dataSource = self
        tblAnswers.delegate = self
        tblAnswers.register(UINib(nibName: "CommentsTableViewCell", bundle:nil),
        forCellReuseIdentifier: "CommentIdentifier")
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listAnswers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblAnswers.dequeueReusableCell(withIdentifier: "CommentIdentifier")
        as! CommentsTableViewCell
        cell.lblName.text = listAnswers[indexPath.row].name
        cell.lblComment.text = listAnswers[indexPath.row].comment
        cell.imgAvatar.image = UIImage(named: listAnswers[indexPath.row].avatar)
        return cell
    }
    
    
}
