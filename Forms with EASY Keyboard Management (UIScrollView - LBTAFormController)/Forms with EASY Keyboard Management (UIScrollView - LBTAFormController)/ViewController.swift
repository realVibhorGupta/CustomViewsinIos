//
//  ViewController.swift
//  Forms with EASY Keyboard Management (UIScrollView - LBTAFormController)
//
//  Created by Vibhor Gupta on 5/21/19.
//  Copyright © 2019 Vibhor Gupta. All rights reserved.
//
import UIKit
import LBTATools
class ViewController: LBTAFormController {

//    scrollView.alwaysBounceVerticle = true
    let signUpButton = UIButton(title: "Sign Up", titleColor: .white, font: .boldSystemFont(ofSize: 16), backgroundColor: #colorLiteral(red: 1, green: 0.439848572, blue: 0.6809626222, alpha: 1), target: self, action: #selector(handleCancel))

    let cancelButton  = UIButton(title: "Cancel", titleColor: .white, font: .boldSystemFont(ofSize: 16), backgroundColor: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1), target: self, action: #selector(handleCancel))

    @objc fileprivate func handleCancel(){

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        formContainerStackView.axis = .vertical
        formContainerStackView.spacing = 15
        formContainerStackView.layoutMargins = .init(top: 0, left: 24, bottom: 0, right: 24)
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)



        (0...3).forEach {
            (_) in
            let tf = IndentedTextField(placeholder: "Enter ", padding: 12, cornerRadius: 20, keyboardType: .default, backgroundColor: .darkGray)
            tf.constrainHeight(50)
            formContainerStackView.addArrangedSubview(tf)


        }
        formContainerStackView.addArrangedSubview(signUpButton)
        formContainerStackView.addArrangedSubview(cancelButton)


    }


}
































