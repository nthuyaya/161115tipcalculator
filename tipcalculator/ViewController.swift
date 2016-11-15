//
//  ViewController.swift
//  tipcalculator
//
//  Created by yaya on 2016/11/15.
//  Copyright © 2016年 yaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var money: UITextField!  //輸入金額
    @IBOutlet weak var tip: UITextField!  //輸入小費
    @IBOutlet weak var result: UILabel!  //小費計算結果
    
    //計算按鈕
    @IBAction func calculate(_ sender: UIButton) {
        
         money.resignFirstResponder()
         tip.resignFirstResponder()

         result.isHidden = false
        
        if money.text == "" || tip.text == "" {
            result.text="ಠ╭╮ಠ"
        }
        
        else{
             result.text = String(Double(money.text!)! * Double(tip.text!)! / 100)
        }
        
    }
    
    
    //按按鈕收鍵盤
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        money.resignFirstResponder()
        tip.resignFirstResponder()
        return true
    }
    
    
    
    //按任意地方收鍵盤
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         self.hideKeyboardWhenTappedAround()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

