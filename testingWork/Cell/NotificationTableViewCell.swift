//
//  NotificationTableViewCell.swift
//  testingWork
//
//  Created by Mac User on 3/11/23.
//

import UIKit

class NotificationTableViewCell: UITableViewCell {
    
    private let BGView = UIView()
    
    private let notImage: UIImageView = {
        let view = UIImageView()
        view.clipsToBounds = true
        view.contentMode = .scaleToFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let nameNot: UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.font = .boldSystemFont(ofSize: 18)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.numberOfLines = 0
        return view
    }()
    
    private let timeLbl: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 0.498, green: 0.498, blue: 0.498, alpha: 1)
        view.font = .systemFont(ofSize: 14, weight: .regular)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let maskImage: UIImageView = {
        let view = UIImageView()
        view.clipsToBounds = true
        view.contentMode = .scaleToFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let dotImage: UIImageView = {
        let view = UIImageView()
        view.clipsToBounds = true
        view.contentMode = .scaleToFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        allSetUpConstraints()
    }
    
    private func allSetUpConstraints(){
        setUpConstraintsForNotImage()
        setUpConstraintsForBGView()
        setUpConstraintsForNameNot()
        setUpConstraintsForTimeLbl()
        setUpConstraintsForMaskImage()
        setUpConstraintsForDotImage()
    }
    
    private func setUpConstraintsForBGView(){
        contentView.addSubview(BGView)
        BGView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            BGView.topAnchor.constraint(equalTo: contentView.topAnchor),
            BGView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            BGView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            BGView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50),
            BGView.heightAnchor.constraint(equalToConstant: 74)
            //  BGView.widthAnchor.co
        ])
    }
    private func setUpConstraintsForNotImage(){
        BGView.addSubview(notImage)
        NSLayoutConstraint.activate([
            notImage.topAnchor.constraint(equalTo: BGView.topAnchor, constant: 18),
            notImage.widthAnchor.constraint(equalToConstant: 48),
            notImage.heightAnchor.constraint(equalToConstant: 48),
            // notImage.bottomAnchor.constraint(equalTo: BGView.bottomAnchor)
        ])
    }
    
    private func setUpConstraintsForNameNot(){
        BGView.addSubview(nameNot)
        NSLayoutConstraint.activate([
            nameNot.topAnchor.constraint(equalTo: BGView.topAnchor, constant: 6),
            nameNot.leadingAnchor.constraint(equalTo: notImage.trailingAnchor, constant: 12),
            nameNot.widthAnchor.constraint(equalToConstant: 198)
        ])
    }
    
    private func setUpConstraintsForTimeLbl(){
        BGView.addSubview(timeLbl)
        NSLayoutConstraint.activate([
            timeLbl.topAnchor.constraint(equalTo: nameNot.bottomAnchor, constant: 8),
            timeLbl.leadingAnchor.constraint(equalTo: notImage.trailingAnchor, constant: 12),
            timeLbl.widthAnchor.constraint(equalToConstant: 198)
        ])
    }
    
    
    private func setUpConstraintsForMaskImage(){
        BGView.addSubview(maskImage)
        NSLayoutConstraint.activate([
            maskImage.topAnchor.constraint(equalTo: BGView.topAnchor, constant: 6),
            maskImage.leadingAnchor.constraint(equalTo: nameNot.trailingAnchor, constant: 6)
            //  maskImage.trailingAnchor.constraint(equalTo: dotImage.leadingAnchor, constant: 6)
        ])
    }
    
    private func setUpConstraintsForDotImage(){
        BGView.addSubview(dotImage)
        NSLayoutConstraint.activate([
            dotImage.topAnchor.constraint(equalTo: BGView.topAnchor, constant: 33),
            dotImage.trailingAnchor.constraint(equalTo: BGView.trailingAnchor)
        ])
    }
    
    func initCellData(_ noots: Notification) {
        notImage.image = UIImage(named: noots.image)
        nameNot.text = noots.fLbl
        timeLbl.text = noots.sLbl
        maskImage.image = UIImage(named: noots.bigImage)
        dotImage.image = UIImage(named: noots.miniImage)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
