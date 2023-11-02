//
//  ViewController.swift
//  testingWork
//
//  Created by Mac User on 2/11/23.
//

import UIKit

class ViewController: UIViewController {
    private let createLbl = MakerViewElements.shared.makeLbl(text: "Create New Password 🔐",
                                                             size: 32,
                                                             weifht: .bold)
    private let enterLbl = MakerViewElements.shared.makeLbl(text: "Enter your new password. If you forget it, then \nyou have to do forgot password.",
                                                            weifht: .light)
    private let passwordLbl = MakerViewElements.shared.makeLbl(text: "Password",
                                                               weifht: .bold)
    private let passwordTf = MakerViewElements.shared.makeTF()
    private let eyeBTn = MakerViewElements.shared.makeBtn(tintColor: UIColor(red: 245/255, green: 72/255, blue: 74/255, alpha: 1))
    
    private var isPasswordVisible = true
    
    private let passwordUnderLine = MakerViewElements.shared.makeView()
    
    private let confirmLbl = MakerViewElements.shared.makeLbl(text: "Confirm Password",
                                                              weifht: .bold)
    private let confirmTf = MakerViewElements.shared.makeTF()
    
    private let eyeBtn = MakerViewElements.shared.makeBtn(tintColor: UIColor(red: 245/255, green: 72/255, blue: 74/255, alpha: 1))
    private let confirmUnderLine = MakerViewElements.shared.makeView(background: UIColor(red: 245/255, green: 72/255, blue: 74/255, alpha: 1))
    
    private let checkBoxBtn = MakerViewElements.shared.makeCheckBoxBtn()
    
    private let rememberLbl = MakerViewElements.shared.makeLbl(text: "Remember me",
                                                               weifht: .bold)
    private let continueBtn = MakerViewElements.shared.makeBtn(titleText: "Continue",
                                                               tintColor: .white)
    override func viewDidLoad() {
        super.viewDidLoad()
        allSetUpConstraints()
    }
    private func allSetUpConstraints(){
        view.backgroundColor = .white
        setUpConstraintsForCreateLbl()
        setUpConstraintsForEnterLbl()
        setUpConstraintsForPasswordLbl()
        setUpConstraintsForPasswordTF()
        setUpConstraintsForEyeBTn()
        setUpConstraintsForPasswordUnderLine()
        setUpConstraintsForConfirmLbl()
        setUpConstraintsForConfirmTf()
        setUpConstraintsForEyeBtn()
        setUpConstraintsForConfirmUnderLine()
        setUpConstraintsForCheckBoxBtn()
        setUpConstraintsForRememberLbl()
        setUpConstraintsForContinueBtn()
        continueBtnTapped()
    }
    private func setUpConstraintsForCreateLbl(){
        view.addSubview(createLbl)
        NSLayoutConstraint.activate([
            createLbl.topAnchor.constraint(equalTo: view.safeTopAnchor, constant: 88),
            createLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
        ])
    }
    
    private func setUpConstraintsForEnterLbl(){
        view.addSubview(enterLbl)
        NSLayoutConstraint.activate([
            enterLbl.topAnchor.constraint(equalTo: createLbl.bottomAnchor, constant: 12),
            enterLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18)
        ])
    }
    
    private func setUpConstraintsForPasswordLbl(){
        view.addSubview(passwordLbl)
        NSLayoutConstraint.activate([
            passwordLbl.topAnchor.constraint(equalTo: enterLbl.bottomAnchor, constant: 32),
            passwordLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
        ])
    }
    
    private func setUpConstraintsForPasswordTF(){
        view.addSubview(passwordTf)
        NSLayoutConstraint.activate([
            passwordTf.topAnchor.constraint(equalTo: passwordLbl.bottomAnchor, constant: 16),
            passwordTf.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -74),
            passwordTf.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            passwordTf.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private func setUpConstraintsForEyeBTn(){
        view.addSubview(eyeBTn)
        NSLayoutConstraint.activate([
            eyeBTn.topAnchor.constraint(equalTo: passwordLbl.bottomAnchor, constant: 18),
            eyeBTn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
        ])
        let eyeImage = UIImage(systemName: "eye.fill")
        eyeBTn.setImage(eyeImage, for: .normal)
        eyeBTn.addTarget(self, action: #selector(eyeBtnTapped), for: .touchUpInside)
    }
    
    @objc func eyeBtnTapped(_ sender: UIButton) {
        isPasswordVisible.toggle()
        passwordTf.isSecureTextEntry = isPasswordVisible
    }
    
    private func setUpConstraintsForPasswordUnderLine(){
        view.addSubview(passwordUnderLine)
        NSLayoutConstraint.activate([
            passwordUnderLine.topAnchor.constraint(equalTo: passwordTf.bottomAnchor, constant: 8),
            passwordUnderLine.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            passwordUnderLine.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            passwordUnderLine.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    private func setUpConstraintsForConfirmLbl(){
        view.addSubview(confirmLbl)
        NSLayoutConstraint.activate([
            confirmLbl.topAnchor.constraint(equalTo: passwordUnderLine.bottomAnchor, constant: 24),
            confirmLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18)
        ])
    }
    
    private func setUpConstraintsForConfirmTf(){
        view.addSubview(confirmTf)
        NSLayoutConstraint.activate([
            confirmTf.topAnchor.constraint(equalTo: confirmLbl.bottomAnchor, constant: 16),
            confirmTf.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -74),
            confirmTf.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            confirmTf.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private func setUpConstraintsForEyeBtn(){
        view.addSubview(eyeBtn)
        NSLayoutConstraint.activate([
            eyeBtn.topAnchor.constraint(equalTo: confirmLbl.bottomAnchor, constant: 18),
            eyeBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
        ])
        let eyeImage = UIImage(systemName: "eye.fill")
        eyeBtn.setImage(eyeImage, for: .normal)
        eyeBtn.addTarget(self, action: #selector(eyeBTnTapped), for: .touchUpInside)
    }
    
    @objc func eyeBTnTapped(_ sender: UIButton) {
        isPasswordVisible.toggle()
        confirmTf.isSecureTextEntry = isPasswordVisible
    }
    
    private func setUpConstraintsForConfirmUnderLine(){
        view.addSubview(confirmUnderLine)
        NSLayoutConstraint.activate([
            confirmUnderLine.topAnchor.constraint(equalTo: confirmTf.bottomAnchor, constant: 8),
            confirmUnderLine.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            confirmUnderLine.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            confirmUnderLine.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    private func setUpConstraintsForCheckBoxBtn(){
        view.addSubview(checkBoxBtn)
        NSLayoutConstraint.activate([
            checkBoxBtn.topAnchor.constraint(equalTo: confirmUnderLine.bottomAnchor, constant: 24),
            checkBoxBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18)
        ])
        let checkmarkImage = UIImage(systemName: "checkmark.square.fill")
        checkBoxBtn.setImage(checkmarkImage, for: .selected)
        checkBoxBtn.addTarget(self, action: #selector(checkboxTapped), for: .touchUpInside)
    }
    
    @objc func checkboxTapped() {
        checkBoxBtn.isSelected.toggle()
    }
    
    private func setUpConstraintsForRememberLbl(){
        view.addSubview(rememberLbl)
        NSLayoutConstraint.activate([
            rememberLbl.topAnchor.constraint(equalTo: confirmUnderLine.bottomAnchor, constant: 28),
            rememberLbl.leadingAnchor.constraint(equalTo: checkBoxBtn.trailingAnchor, constant: 16)
        ])
    }
    
    private func setUpConstraintsForContinueBtn(){
        view.addSubview(continueBtn)
        NSLayoutConstraint.activate([
            continueBtn.bottomAnchor.constraint(equalTo: view.safeBottomAnchor, constant: -36),
            continueBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            continueBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            continueBtn.heightAnchor.constraint(equalToConstant: 58)
        ])
        continueBtn.addTarget(self, action: #selector(continueBtnTapped), for: .touchUpInside)
        continueBtn.isEnabled = false
    }
    
    @objc func continueBtnTapped(){
        
        if !(passwordTf.text?.isEmpty ?? true) && (confirmTf.text?.isEmpty ?? true) && passwordTf.text == confirmTf.text  {
            passwordTf.placeholder = "Заполните, пожалуйста "
            confirmTf.placeholder = "Заполните, пожалуйста"
            continueBtn.backgroundColor = .gray
            continueBtn.isEnabled = false
        }else {
            
            continueBtn.backgroundColor = UIColor(red: 245/255, green: 72/255, blue: 74/255, alpha: 1)
            continueBtn.isEnabled = true
            let vc = NotificationViewController()
            navigationController?.pushViewController(vc, animated: true )
        }
        
        
    }
}

extension UIView {
    
    var safeTopAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.topAnchor
        }
        return topAnchor
    }
    
    var safeLeftAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *){
            return safeAreaLayoutGuide.leftAnchor
        }
        return leftAnchor
    }
    
    var safeRightAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *){
            return safeAreaLayoutGuide.rightAnchor
        }
        return rightAnchor
    }
    
    var safeBottomAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.bottomAnchor
        }
        return bottomAnchor
    }
}
