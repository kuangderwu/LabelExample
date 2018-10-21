//
//  ViewController.swift
//  LabelExample
//
//  Created by apple on 2018/10/21.
//  Copyright © 2018 Kuang-Der Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var label: UILabel!
    var roundLabel: UILabel!
    var shadowLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray
        setupLayout()
    }
    
    func setupLayout() {
        
        label = {
            let label = UILabel()
            label.text = "General Label"
            label.font = UIFont.systemFont(ofSize: 24)
            label.textColor = UIColor.lightGray
            label.backgroundColor = UIColor.white
            label.textAlignment = .center
            label.adjustsFontSizeToFitWidth = true
            label.isEnabled = true
            label.shadowColor = UIColor.black
            label.shadowOffset = CGSize(width: 2, height: 0)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        roundLabel = {
            let label = UILabel()
            label.text = "Round Label"
            label.font = UIFont(name: "ChalkboardSE-Bold", size: 24)
            label.textColor = UIColor.white
            label.backgroundColor = UIColor.darkGray
            label.textAlignment = .center
            label.adjustsFontSizeToFitWidth = true
            label.isEnabled = true
            label.layer.cornerRadius = 20
            label.layer.masksToBounds = true
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        shadowLabel = {
            let label = UILabel()
            label.text = "Shadow Label"
            label.font = UIFont(name: "Futura-Bold", size: 28)
            label.textColor = UIColor.red
            label.backgroundColor = UIColor.darkGray
            label.textAlignment = .center
            label.adjustsFontSizeToFitWidth = true
            label.isUserInteractionEnabled = false
            label.layer.cornerRadius = 10
            label.layer.shadowColor = UIColor.black.cgColor
            label.layer.shadowOpacity = 2
            label.layer.shadowOffset = CGSize(width: 3.0, height: 3.0)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        
        view.addSubview(label)
        view.addSubview(roundLabel)
        view.addSubview(shadowLabel)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.heightAnchor.constraint(equalToConstant: 40),
            label.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
            ])
        
        NSLayoutConstraint.activate([
            roundLabel.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 40),
            roundLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            roundLabel.heightAnchor.constraint(equalToConstant: 40),
            roundLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
            ])
        
        NSLayoutConstraint.activate([
            shadowLabel.topAnchor.constraint(equalTo: roundLabel.bottomAnchor, constant: 40),
            shadowLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            shadowLabel.heightAnchor.constraint(equalToConstant: 40),
            shadowLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
            ])
        
    }


}

