//
//  ViewController.swift
//  BankCard
//
//  Created by tambanco 🥳 on 16.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let cardView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(rgb: 0xE3E3E3)
        view.layer.cornerRadius = 10
        return view
    }()
    
    let logoLayer: CALayer = {
        let layer = CALayer()
        layer.backgroundColor = CGColor.init(red: 100/255, green: 100/255, blue: 100/255, alpha: 1)
        return layer
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCardView()
        setupLogoLayer()
        
    }

    private func setupCardView() {
        self.view.addSubview(cardView)
        
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        cardView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        cardView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9).isActive = true
        cardView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.25).isActive = true
    }
    
    private func setupLogoLayer() {
        logoLayer.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        logoLayer.contents = UIImage(systemName: "heart")?.cgImage
        cardView.layer.addSublayer(logoLayer)
    }

}

