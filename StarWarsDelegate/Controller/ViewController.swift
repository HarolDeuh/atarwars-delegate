//
//  ViewController.swift
//  StarWarsDelegate
//
//  Created by harold aholoukpe on 03/03/2020.
//  Copyright © 2020 harold aholoukpe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var chooseButton: CustomButton!
    @IBOutlet weak var chrImageView: UIImageView!
    @IBOutlet weak var sideLabel: UILabel!
    
    @IBAction func chooseButtonPressed(_ sender: Any) {
        let chooseVC = ChooseSideViewController()
        chooseVC.sideDelegate = self
    }
    
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Change status bar color
        setNeedsStatusBarAppearanceUpdate()
        
        chooseButton.layer.borderWidth = 1
        chooseButton.layer.cornerRadius = 10
        chooseButton.layer.borderColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
    }
}

extension ViewController: ChooseSideDelegate {
    func didSelectSide(mainView: UIImage, mainLabel: String, mainBkg: UIColor) {
        chrImageView.image = mainView
        sideLabel.text = mainLabel
        view.backgroundColor = mainBkg
    }
    
    
}

