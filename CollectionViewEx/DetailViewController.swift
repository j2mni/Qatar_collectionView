//
//  DetailViewController.swift
//  CollectionViewEx
//
//  Created by wizard on 2022/11/11.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var lblName: UILabel!
    var nation:Nation?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let nation = nation {
            lblName.text = nation.name
        }
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
