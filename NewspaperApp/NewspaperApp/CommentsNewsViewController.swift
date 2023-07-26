//
//  CommentsNewsViewController.swift
//  NewspaperApp
//
//  Created by Vũ Đình Duẩn on 26/07/2023.
//

import UIKit

class CommentsNewsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var tblComments: UITableView!
    
    @IBOutlet weak var viewComment: UIView!
    @IBOutlet weak var txtComment: UITextField!
    
    @IBOutlet weak var btnSend: UIButton!
    
    var comments: [CommentsModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tblComments.dataSource = self
        tblComments.delegate = self
        let answer1 = CommentsModel(comment: "Ông bảo ai chống phá?", name: "Linh", avatar: "avatar2", answers: [])
        let answer2 = CommentsModel(comment: "Hay nhỉ?", name: "Phượng", avatar: "avatar2", answers: [])

        var comment1 = CommentsModel(comment: "Bài này chống phá à?", name: "duan", avatar: "avatar1", answers: [])
        comment1.answers.append(answer1)
        comment1.answers.append(answer2)

        comments.append(comment1)
        
        
        tblComments.register(UINib(nibName: "CommentsTableViewCell", bundle:nil),
        forCellReuseIdentifier: "CommentIdentifier")

    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comments.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblComments.dequeueReusableCell(withIdentifier: "CommentIdentifier")
        as! CommentsTableViewCell
        cell.lblName.text = comments[indexPath.row].name
        cell.lblComment.text = comments[indexPath.row].comment
        cell.imgAvatar.image = UIImage(named: comments[indexPath.row].avatar)
        cell.listAnswers = comments[indexPath.row].answers
        
        
    
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 800
    }
    
    @IBAction func btnSendCommentPressed(_ sender: UIButton) {
        
        let comment = CommentsModel(comment: txtComment.text!, name: "Kha Chuong", avatar: "avatar1", answers: [])
        comments.append(comment)
        
        tblComments.reloadData()
    }
    
    
}
