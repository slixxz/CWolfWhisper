//
//  ForumTableViewCell.swift
//  UserLoginAndRegistration
//
//  Created by student on 11/11/17.
//  Copyright © 2017 team SeaWolfWhisper. All rights reserved.
//

import UIKit

class ForumTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func useForum(_ forum: Forum) {
        if let aImage = forum.getImage()  {
            cellImage.image = aImage
            
        }
        cellLabel.text = forum.forumName()
        print(cellLabel.text)
    }
    
}
