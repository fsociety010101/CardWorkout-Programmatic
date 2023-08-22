//
//  RulesViewController.swift
//  CardWorkout-Programmatic
//
//  Created by Dmytro Nimchynskyi on 22/08/2023.
//

import UIKit

class RulesViewController: UIViewController {
    
    let titleLabel = UILabel()
    let rulesLabel = UILabel()
    let excersiceLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureRulesLabel()
        configureExcersiceLabel()
    }
    
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureRulesLabel() {
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "Value of each card represents the number of excersice you do.\n\nJ = 11, Q = 12, K = 13, A = 14"
        rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        rulesLabel.textAlignment = .center
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0 // 0 to adapt number of lines
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureExcersiceLabel() {
        view.addSubview(excersiceLabel)
        excersiceLabel.translatesAutoresizingMaskIntoConstraints = false
        excersiceLabel.text = "♠️ = Left side layups\n\n♥️ = Free throws\n\n♣️ = Right side layups\n\n♦️ = Three pointers"
        excersiceLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        // left is default
        // excersiceLabel.textAlignment = .left
        excersiceLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            excersiceLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 60),
            excersiceLabel.widthAnchor.constraint(equalToConstant: 200),
            excersiceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}
