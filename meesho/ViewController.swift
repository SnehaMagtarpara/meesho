//
//  ViewController.swift
//  meesho
//
//  Created by R93 on 23/03/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stapperLabel: UILabel!
    @IBOutlet weak var priceLable: UILabel!
    @IBOutlet weak var stapper: UIStepper!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var watchImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        if segment.selectedSegmentIndex == 0
        {
            watchImage.image = UIImage(named: "Golden")
        }
        else if segment.selectedSegmentIndex == 1
        {
            watchImage.image = UIImage(named: "Black")
        }
        else if segment.selectedSegmentIndex == 2
        {
            watchImage.image = UIImage(named: "Red")
        }
        else if segment.selectedSegmentIndex == 3
        {
            watchImage.image = UIImage(named: "Blue")
        }
        else if segment.selectedSegmentIndex == 4
        {
            watchImage.image = UIImage(named: "Orange")
        }
        else if segment.selectedSegmentIndex == 5
        {
            watchImage.image = UIImage(named: "Gray")
        }
    }
    
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        stapperLabel.text = Int(stapper.value).description
        priceLable.text = ("\(10000 * Int(Int(stapper.value).description)!)")
    }
}

