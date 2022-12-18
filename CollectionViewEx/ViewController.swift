//
//  ViewController.swift
//  CollectionViewEx
//
//  Created by wizard on 2022/11/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.contentInset
            = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? DetailViewController
        let indexPaths = collectionView.indexPathsForSelectedItems
        guard let indexPath = indexPaths?.first else { fatalError() }
        let nation = nations[indexPath.row]
        vc?.nation = nation
    }


}


extension ViewController: UICollectionViewDataSource {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nations.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "nationcell", for: indexPath) as? NationCell else { return UICollectionViewCell() }
        
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 1
        
        let nation = nations[indexPath.row]
        
//        let imageView = cell.viewWithTag(1) as? UIImageView
//        imageView?.layer.borderWidth = 1
//        imageView?.layer.borderColor = UIColor.blue.cgColor
//        let lblName = cell.viewWithTag(2) as? UILabel
//        imageView?.image = UIImage(named: nation.flag)
//        lblName?.text = nation.name
        
//        cell.imageView.image = UIImage(named: nation.flag)
//        cell.lblName.text = nation.name
        
        cell.setValues(nation: nation)
        
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let itemSpace:CGFloat = 10
        
        
        let width = (collectionView.frame.width - 20 - itemSpace * 2) / 3
        
        return CGSize(width: width, height: width * 1.2)
    }
}
