//
//  DetailViewController.swift
//  HelloTableView
//
//  Created by 林奕德 on 2018/3/31.
//  Copyright © 2018年 AppsAdamLin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var infoFormViewOne:String?
    
    @IBOutlet weak var myimageView: UIImageView!
    @IBOutlet weak var myLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       myLable.text = infoFormViewOne
        if let okFileName  = infoFormViewOne{
            myimageView.image = UIImage(named: okFileName)
        }
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
