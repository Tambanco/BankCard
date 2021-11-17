//
//  ViewController.swift
//  BankCard
//
//  Created by tambanco 🥳 on 16.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - CardView
    let cardView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(rgb: 0xE3E3E3)
        view.layer.cornerRadius = 10
        return view
    }()
    
    // MARK: - Layers
    //1 - backgroundLayer
    let backgroundLogoLayer: CALayer = {
        let layer = CALayer()
        layer.cornerRadius = 10
        return layer
    }()
    
    //2 - Layers
    let bankNameLogo: CALayer = {
        let layer = CALayer()
        return layer
    }()
    
    let NFCLogo: CALayer = {
        let layer = CALayer()
        return layer
    }()
    
    let simCardLogo: CALayer = {
        let layer = CALayer()
        return layer
    }()
    
    let cardNumber: CATextLayer = {
        let layer = CATextLayer()
        return layer
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCardView()
    }
    
    override func viewDidLayoutSubviews() {
        setupBGLogoLayer()
        setupBankNameLogo()
        setupNFCLogo()
        setupSimCardLogo()
        setupCardNumber()
    }

    private func setupCardView() {
        self.view.addSubview(cardView)
        
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        cardView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        cardView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9).isActive = true
        cardView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.27).isActive = true
    }
    
    private func setupBGLogoLayer() {
        backgroundLogoLayer.frame = cardView.bounds
        backgroundLogoLayer.contents = UIImage(named: "main_logo_new.png")?.cgImage
        backgroundLogoLayer.contentsGravity = .resizeAspect
        cardView.layer.addSublayer(backgroundLogoLayer)
    }
    
    private func setupBankNameLogo() {
        bankNameLogo.frame = CGRect(x: 10, y: 10, width: 160, height: 60)
        bankNameLogo.contents = UIImage(named: "bank_name.png")?.cgImage
        
        backgroundLogoLayer.addSublayer(bankNameLogo)
    }
    
    private func setupNFCLogo() {
        NFCLogo.frame = CGRect(x: 300, y: 10, width: 50, height: 50)
        NFCLogo.contents = UIImage(named: "nfc_logo.png")?.cgImage
        
        backgroundLogoLayer.addSublayer(NFCLogo)
    }
    
    private func setupSimCardLogo() {
        simCardLogo.frame = CGRect(x: 50, y: 80, width: 40, height: 30)
        simCardLogo.contents = UIImage(named: "simLogo.png")?.cgImage
        
        backgroundLogoLayer.addSublayer(simCardLogo)
    }
    
    private func setupCardNumber() {
        cardNumber.frame = CGRect(x: 20, y: 120, width: 310, height: 30)
        cardNumber.string = "4000 1234 5678 9010"
        cardNumber.font = UIFont(name: "Arial", size: 10)
        cardNumber.foregroundColor = UIColor(rgb: 0x000000).cgColor
        cardNumber.alignmentMode = .center
        
        backgroundLogoLayer.addSublayer(cardNumber)
    }
}

