//
//  NationCell.swift
//  CollectionViewEx
//
//  Created by wizard on 2022/11/11.
//

import UIKit

class NationCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!    
    @IBOutlet weak var lblName: UILabel!
    
    func setValues(nation:Nation){
        imageView.image = UIImage(named: nation.flag)
        lblName.text = nation.name
    }
}
