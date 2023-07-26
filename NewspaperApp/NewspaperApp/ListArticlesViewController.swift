//
//  ListArticlesViewController.swift
//  NewspaperApp
//
//  Created by Lê Đình Linh on 26/07/2023.
//

import UIKit

class ListArticlesViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
   
    
    @IBOutlet weak var tbnListArticles: UITableView!
    
    var articlesData : [ArticleModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tbnListArticles.dataSource = self
        tbnListArticles.delegate = self
        tbnListArticles.register(UINib(nibName: "ListArticlesTableViewCell", bundle: nil), forCellReuseIdentifier: "ListArticlesIdentifier")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articlesData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbnListArticles.dequeueReusableCell(withIdentifier: "ListArticlesIdentifier") as! ListArticlesTableViewCell
        return cell
    }
    

}
