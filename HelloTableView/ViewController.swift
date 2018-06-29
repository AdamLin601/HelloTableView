//
//  ViewController.swift
//  HelloTableView
//
//  Created by 林奕德 on 2018/3/31.
//  Copyright © 2018年 AppsAdamLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let fruitArray = ["apple","banana","mango","watermelon"]
    let colorArray = ["red","green","blue"]
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return fruitArray.count
        }else {
            return colorArray.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //        indexPath.section  部分
        //        indexPath.row
       // let cell = UITableViewCell()
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //退出 回收可重複利用的cell（memory）
        if indexPath.section == 0{
              cell.textLabel?.text = fruitArray[indexPath.row]
        }else {
            cell.textLabel?.text = colorArray[indexPath.row]
        }
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? { //將section做參數呼叫方法 回傳字串
        if section == 0{
            return "Fruit"
        }else{
            return "Color"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

