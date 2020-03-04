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
    @IBOutlet weak var resultStackView: UIStackView!
    @IBOutlet weak var lightsabersImageView: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var instructionLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBAction func chooseButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "segueToSide", sender: nil)
        resultStackView.isHidden = false
        logoImageView.isHidden = true
        instructionLabel.isHidden = true
        lightsabersImageView.isHidden = true
        
        
        chooseButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        chooseButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        chooseButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToSide", let destinationViewController = segue.destination as? ChooseSideViewController {
            destinationViewController.sideDelegate = self
        }
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
    func didSelectSide(mainView: UIImage, mainLabel: String, mainBkg: UIColor, sideTextColor: UIColor) {
        chrImageView.image = mainView
        sideLabel.text = mainLabel.uppercased()
        view.backgroundColor = mainBkg
        
        sideLabel.textColor = sideTextColor
    }
    
    
    
    
}

