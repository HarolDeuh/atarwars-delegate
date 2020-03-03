//
//  ChooseSideViewController.swift
//  StarWarsDelegate
//
//  Created by harold aholoukpe on 03/03/2020.
//  Copyright © 2020 harold aholoukpe. All rights reserved.
//

import UIKit

protocol ChooseSideDelegate {
    func didSelectSide(mainView: UIImage, mainLabel: String, mainBkg: UIColor)
}

class ChooseSideViewController: UIViewController {
    
    var sideDelegate: ChooseSideDelegate!
    
    
    @IBAction func forceButtonPressed(_ sender: UIButton) {
        guard sideDelegate != nil else {
            print("Delegate vide")
            return
        }
        
        sideDelegate.didSelectSide(mainView: #imageLiteral(resourceName: "r2d2"), mainLabel: "may the force be with u !", mainBkg: #colorLiteral(red: 0.4431372549, green: 0.6823529412, blue: 0.968627451, alpha: 1))
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func darkButtonPressed(_ sender: UIButton) {
        
        guard sideDelegate != nil else {
            print("Delegate vide")
            return
        }
        
        sideDelegate.didSelectSide(mainView: #imageLiteral(resourceName: "dark-vador"), mainLabel: "u are my son !", mainBkg: #colorLiteral(red: 0.9294117647, green: 0.5490196078, blue: 0.5411764706, alpha: 1))
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
