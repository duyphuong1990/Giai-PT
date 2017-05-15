//
//  ViewController.swift
//  giaiPT
//
//  Created by Duy Phuong on 5/15/17.
//  Copyright © 2017 Duy Phuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var tf_a: UITextField!
    @IBOutlet weak var tf_b: UITextField!
    @IBOutlet weak var tf_c: UITextField!
    
   
    
    @IBOutlet weak var tv_ketqua: UITextView!
    @IBAction func btn_tinhtoan(_ sender: Any) {
        setABC()
    }
    
    @IBAction func btn_reset(_ sender: Any) {
        tf_a.text = ""
        tf_b.text = ""
        tf_c.text = ""
        tv_ketqua.text = ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    func setABC() {
        let a = Float(tf_a.text!)
        let b = Float(tf_b.text!)
        let c = Float(tf_c.text!)
        let d = b!*b! - 4*a!*c!
        if a == 0 {
            if b == 0 {
                if c == 0 {
                    ptvosonghiem()
                }
                else {
                    ptVoNghiem()
                }
            }
            else {
                if c == 0{
                pt1nghiemxbangkhong()
                }
                else {
                ptBac1()
                }
            }
        }
        else {
            if d == 0 {
                nghiemkep()
            }
            else {
                ptBac2()
            }
        }
    }

    func ptBac2() {
        let a = Float(tf_a.text!)
        let b = Float(tf_b.text!)
        let c = Float(tf_c.text!)
        let d = b!*b! - 4*a!*c!
        let x1 = (-b! + sqrt(d))/(2*a!)
        let x2 = (-b! - sqrt(d))/(2*a!)
        tv_ketqua.text = "phương trình 2 nghiệm \nx1 = \(x1) \nx2 = \(x2)"
      }
        

    func ptBac1() {
        let b = Float(tf_b.text!)
        let c = Float(tf_c.text!)
        let x = -c!/b!
        tv_ketqua.text = " nghiệm phương trình là \nx=\(x)"
        
    }

    func ptVoNghiem() {
        tv_ketqua.text = "phương trình vô nghiệm"
    }
    
    func ptvosonghiem() {
        tv_ketqua.text = "phương trình vô số nghiệm"
    }
    
    func pt1nghiemxbangkhong() {
        tv_ketqua.text = "phương trình có 1 nghiệm \nx=0"
    }
    
    func nghiemkep() {
        let a = Float(tf_a.text!)
        let b = Float(tf_b.text!)
        let x = -b!/(2*a!)
        tv_ketqua.text = "phương trình có nghiệm kép \nx1 = x2 =\(x)"
    }
}

