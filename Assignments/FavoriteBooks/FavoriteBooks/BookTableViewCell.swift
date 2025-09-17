//
//  BookTableViewCell.swift
//  FavoriteBooks
//
//  Created by Student on 17/09/25.
//

import Foundation
import UIKit

class BookTableViewCell: UITableViewCell {
    
    @IBOutlet var title: UILabel!
    @IBOutlet var author: UILabel!
    @IBOutlet var genre: UILabel!
    @IBOutlet var length: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func update(with book: Book) {
        title.text = book.title
        author.text = book.author
        genre.text = book.genre
        length.text = book.length
    }

}
