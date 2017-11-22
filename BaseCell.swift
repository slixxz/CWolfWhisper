//
//  BaseCell.swift
//  UserLoginAndRegistration
//
//  Created by student on 11/13/17.
//  Copyright © 2017 team SeaWolfWhisper. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell{
    override init(frame: CGRect){
        super.init(frame: frame)
        setupViews()
    }
   
    func setupViews() {
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
