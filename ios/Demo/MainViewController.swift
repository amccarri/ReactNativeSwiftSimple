//
//  MainViewController.swift
//  Demo
//
//  Created by Alex M on 2/3/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    let reactView: UIView = {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return UIView()
        }
        
        return appDelegate.reactViewController.view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupReactView()
    }
    
    private func setupReactView() {
        reactView.translatesAutoresizingMaskIntoConstraints = false
        reactView.backgroundColor = UIColor.lightGray
        
        view.addSubview(reactView)

        let margins = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            reactView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            reactView.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 8),
            reactView.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -8),
            reactView.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -8)
        ])
    }
}

