//
//  ViewController.swift
//  UserDefaultProject
//
//  Created by 家田真帆 on 2019/11/15.
//  Copyright © 2019 家田真帆. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    // 色の番号を管理する変数
    // 0:赤, 1:青, 2:黄
    var colorNumber = 0
    
    
    // このswitch文のメソッドを作成したやつ
    fileprivate func changeBgColor() {
        switch colorNumber {
        case 0:
            view.backgroundColor = .red
            label.text = "赤"
        case 1:
            view.backgroundColor = .blue
            label.text = "青"
        case 2:
            view.backgroundColor = .yellow
            label.text = "黄"
        default:
            view.backgroundColor = .white
            label.text = "白"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        // 画面全体の背景色を変更
        view.backgroundColor = .brown
    }

    @IBAction func didClickButton(_ sender: UIButton) {
        
        // 変数colorNumberの値を１プラスする
        colorNumber += 1
        
        // 画面の背景色や、ラベルの文字を変更
        changeBgColor()
        // 今の変数colorNumberの値をUserDefaultに保存する
    }
    
}

