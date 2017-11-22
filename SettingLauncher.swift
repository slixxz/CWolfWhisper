//
//  SettingLauncher.swift
//  UserLoginAndRegistration
//
//  Created by student on 11/12/17.
//  Copyright © 2017 team SeaWolfWhisper. All rights reserved.
//

import UIKit

class Setting: NSObject {
    
    let name: String
    let imageName: String
    
    init(name: String, imageName: String){
        self.name = name
        self.imageName = imageName
        
    }
    
    
}


class SettingLauncher: NSObject, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    let blackView = UIView()

    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = UIColor.white
        return cv
    }()
    
    let cellId = "cellId"
   
    let settings: [Setting] = {
        return [Setting(name: "Home", imageName: "Home"), Setting(name: "Profile", imageName: "profile"), Setting(name:"Add New Forum", imageName: "addForum"), Setting(name: "Settings", imageName: "Settings"), Setting(name: "Logout", imageName: "Logout")]
    }()
    
    func revealMenu() {
        //show menu
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        if let window = UIApplication.shared.keyWindow{
            
            blackView.backgroundColor = UIColor(white: 0, alpha: 0.5)
            
            blackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(endMenuView)))
            
            window.addSubview(blackView)
            window.addSubview(collectionView)
            
          
            let height: CGFloat = CGFloat(settings.count * 50)
            blackView.frame = window.frame
            blackView.alpha = 0
            let CGrect = CGRect(origin: CGPoint(x: 0,y :window.frame.height), size: CGSize(width: 500, height: screenHeight))
            let CGrect2 = CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: 500, height: 300))
            
            collectionView.frame = CGrect
            
            UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: { self.blackView.alpha = 1
                self.collectionView.frame = CGrect2
            }, completion: nil)
        
        }
    }
    
    @objc func endMenuView(){
       let screenSize = UIScreen.main.bounds
       let screenWidth = screenSize.width
       let screenHeight = screenSize.height
       let CGrect3 = CGRect(origin: CGPoint(x: 0,y :screenHeight), size: CGSize(width: self.collectionView.frame.width, height: self.collectionView.frame.height))
        
        UIView.animate(withDuration: 0.5, animations: { self.blackView.alpha = 0})
       
        if let window = UIApplication.shared.keyWindow{
            self.collectionView.frame = CGrect3
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return settings.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! SettingCell
        
        let setting = settings[indexPath.item]
        cell.setting = setting
            return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: collectionView.frame.width, height: 50)
        return size
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0
    }
        
        
   
    
    override init(){
        super.init()
        collectionView.dataSource = self
        collectionView.delegate = self
        //start doing something
        
        collectionView.register(SettingCell.self, forCellWithReuseIdentifier: cellId)
    }
    
 
}
