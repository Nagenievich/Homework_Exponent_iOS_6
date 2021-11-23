//
//  ViewController.swift
//  Homework_6_exponent
//
//  Created by Alexey Makarov on 06.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    
    @IBOutlet weak var textfield: UITextField!
    
    @IBAction func button(_ sender: Any) {
        
        let result: Int? = Int(textfield.text!)
        
        if result == nil {
            labelResult.text! = "Enter your number"
        } else {
           
            func pow(_ base: Int) -> Int {
                var a = 1
                for _ in 0..<result! { a *= base }
                return a
            }
            
            let answer = pow(2)
            labelResult.text! = String(answer)
        
        }
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

