//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Olibo moni on 21/11/2021.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = false

    override func viewDidLoad() {
        super.viewDidLoad()
        //view.addSubview(lightSwith)
        lightSwith.tintColor = .green
    }

    @IBOutlet weak var label: UILabel!
    
     func UpdateUI() {
        if lightOn {
            //lightSwith.setTitle("Turn off", for: .normal)
            //lightSwith.tintColor = .red
            mainView.backgroundColor = .white
            //label.textColor = .black
            
            
        } else {
            mainView.backgroundColor = .black
            label.textColor = .white
            lightSwith.setTitle("Turn on", for: .selected)
            lightSwith.tintColor = .green
            
        }
    }
    
    @IBAction func btnWasPressed(_ sender: Any) {
        label.text = ""
//        if mainView.backgroundColor != #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1){
//            mainView.backgroundColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
//        } else {
//            mainView.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.5215686275, blue: 0.6862745098, alpha: 1)
//        }
        lightOn.toggle()
        UpdateUI()
        
        
    }
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var lightSwith: UIButton!
}


