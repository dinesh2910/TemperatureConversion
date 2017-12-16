//
//  ViewController.swift
//  Teamperature COnverstion
//
//  Created by dinesh danda on 1/8/17.
//  Copyright © 2017 dinesh danda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0

    @IBOutlet weak var converstionlabel: UILabel!
    @IBOutlet weak var entrylabel: UITextField!
    
    @IBOutlet weak var resultlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertbutton(_ sender: Any) {
        if let result = entrylabel.text{
            if (result == ""){
                return
                
            }
            else {
                if let num = Double(result){
                    let output = num * (9/5) + 32
                    resultlabel.text = String(output)
                    count += 1
                    converstionlabel.text = String(count) + "converstion"
                }
            }
        }
    }

}

