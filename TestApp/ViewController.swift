//
//  ViewController.swift
//  TestApp
//
//  Created by Rika Sumitomo on 2019/04/14.
//  Copyright © 2019 Rika Sumitomo. All rights reserved.
//
// 変数に型書かなくても推論してくれる


import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    //配列の場所を指す変数
    var index = 0
    
    var left: UIButton! //初期値がない場合はオプショナル型にする //関連付け忘れてるエラーUnexpectedly found
    
    
    var right: UIButton!
    
    let Array: [String] = ["iPhone","Apple Watch","Mac"]
     //要素のついかはappendをつかう
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button1Tapped() {
        label.text = String(Array[0])
        index = 0
    }
    @IBAction func button2Tapped() {
        label.text = String(Array[1])
        index = 1
    }
    @IBAction func buttonTapped() {
        label.text = String(Array[2])
        index = 2
    }
    
    //配列の長さ以上になったら戻す処理を書く必要がある
    
    @IBAction func leftTapped() {
        //一番前のときに押したら３つ目に戻るようにする
        if index == 0 {
            index = 2
        } else {
            index = index - 1
        }
        label.text = Array[index]
    }
    @IBAction func rightTapped(){
        if index == 2 {
            index = 0
        } else {
            index = index + 1
        }
        label.text = Array[index]
        
    }
    
}
    



