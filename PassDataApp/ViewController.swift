//
//  ViewController.swift
//  PassDataApp
//
//  Created by Fujii Yuta on 2019/10/31.
//  Copyright © 2019 Fujii Yuta. All rights reserved.
//

/*
 
 近藤さん・・・テキストフィールドを2つ作り、ボタンを押した際に値を渡してください。(ViewController.swift)、
 

 中塚さんがpush後に再度クローンし、セグエをつないでください。idはnext
 
 中塚さん・・・値を受け取りラベルに表示するものを作成してください。(NextViewController.swift)
 
 
 
 渡す変数名はname、comment、受け取る変数名もname、comment
 
 
 
 */

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField1: UITextField!
    
    
    @IBOutlet weak var textField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
    }

    
    
    //ボタンを押したら、textFieldの内容を値を渡して画面遷移します。
    //cellのidentifireは記入をお願いしますね。
    
    
    @IBAction func next(_ sender: Any) {
        performSegue(withIdentifier: "Cell", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC:NextViewController = segue.destination as! UITransitionContextViewControllerKey
        nextVC.passedtext1 = textField1.text!
        nextVC.passedtext2 = textField2.text!
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //キーボードを閉じる
        textField1.resignFirstResponder()
        textField2.resignFirstResponder()
    }
    
    

}

