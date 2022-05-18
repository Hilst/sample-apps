//
//  ViewController.swift
//  UIKitSampleApp
//
//  Created by Felipe Hilst on 18/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(label)
        view.backgroundColor = .lightGray
    }
    
    private lazy var label: UILabel = {
        let label = UILabel(frame: CGRect(x: 50,
                                          y: 250,
                                          width: 400,
                                          height: 100))

        label.text = "THIS IS A UIKIT SAMPLE APP"
        label.textColor = .blue
        label.font = .systemFont(ofSize: 24, weight: .bold)
        return label
    }()
}

