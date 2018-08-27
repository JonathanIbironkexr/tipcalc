//
//  ViewController.swift
//  Tip Calculator v3
//
//  Created by user142219 on 8/23/18.
//  Copyright © 2018 user142219. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var originalchargefield: UITextField!
    @IBOutlet weak var tiplabel: UILabel!
    @IBOutlet weak var totallabel: UILabel!
    @IBOutlet weak var tippercentbuttons: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTapout(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func onTapout2(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func calcthetip(_ sender: AnyObject) {
        
        let tippercents = [0.05, 0.10, 0.15, 0.20, 0.25]
        
        let bill = Double(originalchargefield.text!) ?? 0
        let tip = bill * tippercents[tippercentbuttons.selectedSegmentIndex]
        let Total = bill + tip
        
        tiplabel.text = String (format: "$%.2f", tip)
        totallabel.text = String (format: "$%.2f", Total)    }
}

