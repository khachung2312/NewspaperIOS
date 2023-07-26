//
//  CommentModel.swift
//  NewspaperApp
//
//  Created by Vũ Đình Duẩn on 27/07/2023.
//

import Foundation
struct CommentsModel {
    var comment : String
    var name : String
    var avatar : String
    
    var answers: [CommentsModel]
}
