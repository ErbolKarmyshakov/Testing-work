//
//  MakerElementsViewController.swift
//  testingWork
//
//  Created by Mac User on 2/11/23.
//

import UIKit
class MakerViewElements{
    
    static let shared = MakerViewElements()
    func makeLbl(text: String = "",
                 size: CGFloat = 18,
                 weifht: UIFont.Weight = .regular,
                 textColor: UIColor = .black,
                 numberOfLines: Int = 0,
                 translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UILabel {
        let view  = UILabel()
        view.text = text
        view.font = .systemFont(ofSize: size, weight: weifht)
        view.textColor = textColor
        view.numberOfLines = numberOfLines
        view.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return view
    }
    
    func makeTF(background: UIColor = .clear,
                translatesAutoresizingMaskIntoConstraints: Bool = false,
                isSecureTextEntry: Bool = true
    ) -> UITextField {
        let view = UITextField()
        view.backgroundColor = background
        view.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        view.isSecureTextEntry = isSecureTextEntry
        return view
    }
    
    func makeView(background: UIColor = .red,
                  translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UIView {
        let view = UIView()
        view.backgroundColor = background
        view.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return view
    }
    
    func makeBtn(translatesAutoresizingMaskIntoConstraints: Bool = false,
                 titleText: String = "",
                 titleType: UIControl.State = .normal,
                 tintColor: UIColor = .white,
                 background: UIColor = .gray,//UIColor(red: 245/255, green: 72/255, blue: 74/255, alpha: 1),
                 corner: CGFloat = 24,
                 type: UIButton.ButtonType = .system,
                 sizeB: CGFloat = 16,
                 weightB: UIFont.Weight = .bold
    ) -> UIButton {
        let view = UIButton(type: type)
        view.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        view.setTitle(titleText, for: titleType)
        view.tintColor = tintColor
        view.backgroundColor = background
        view.layer.cornerRadius = corner
        view.titleLabel?.font = .systemFont(ofSize: sizeB, weight: weightB)
        return view
    }
    
    func makeCheckBoxBtn(type: UIButton.ButtonType = .system,
                         tintColor: UIColor = UIColor(red: 245/255, green: 72/255, blue: 74/255, alpha: 1),
                         cornerRadius: CGFloat = 5,
                         borderWidth: CGFloat = 1,
                         borderColor: CGColor = UIColor.red.cgColor, 
                         translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UIButton {
        let check = UIButton(type: type)
        check.tintColor = tintColor
        check.layer.cornerRadius = cornerRadius
        check.layer.borderWidth = borderWidth
        check.layer.borderColor = borderColor
        check.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return check
    }
    
}
