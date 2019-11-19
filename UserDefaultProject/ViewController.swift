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
    
    // 背景色やラベルを変えるメソッド
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
        
        // UserDefaultsを取得
        let userDefaults = UserDefaults.standard
        
        // 前回設定された番号を、変数colorNumberに入れる
        colorNumber = userDefaults.integer(forKey: "colorNum")
        
        changeBgColor()
        

        
    }


    @IBAction func didClickButton(_ sender: UIButton) {
        
        // 変数colorNumberの値を1プラスする
                // colorNumber = colorNumber + 1
                
                if colorNumber > 3 {
                    colorNumber = 0
                } else {
                    colorNumber += 1
                }
                
                // 画面の背景色や、ラベルの文字を変更
                changeBgColor()
                
                // 今の変数colorNumberの値をUserDefaultsのに保存する
                
                        // 1.UserDefaultを取得
                        // 2. 取得したUserDefaultsの中に変数colorNumberを保存する
                        let userDefaults = UserDefaults.standard
                       
                       // userDefaults.set(保存する値, forKey: "取り出す時の名前")
                        userDefaults.set(colorNumber, forKey: "colorNum")
                        
                        // 以下のコードは後で消す。　保存できたか確認用
                     //   let savedNumber = userDefaults.integer(forKey: "colorNum")
                        
                        // それ以外の場合は取り出す値の型に合わせて命令が違う
                //        userDefaults.string(forKey: "")
                //        userDefaults.float(forKey: "")
                //        userDefaults.bool(forKey: "")
                      //  print(savedNumber)
                
            }
            
            
        }

