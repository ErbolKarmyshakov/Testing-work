//
//  NotificationViewController.swift
//  testingWork
//
//  Created by Mac User on 3/11/23.
//

import UIKit

class NotificationViewController: UIViewController, UITableViewDelegate {
    
    private let tableView = UITableView()
    private var noot: [Notification] = []
    private let cell = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Notification"
        allSetUpConstraints()
    }
    
    private func allSetUpConstraints(){
        setUpConstraintsForTAbleView()
        notificationSetUp()
    }
    
    private func notificationSetUp(){
        noot = [
            Notification(image: "jane", fLbl: "Jane Cooper has \npublished a new recipe!", sLbl: "Today | 09:24 AM", bigImage: "Jane1", miniImage: "dotImage"),
            Notification(image: "Rochel", fLbl: "Rochel has commented \non your recipe", sLbl: "1 day ago |  14:43 PM", bigImage: "Rochel1", miniImage: "dotImage"),
            Notification(image: "Brad", fLbl: "Brad Wigington liked \nyour comment", sLbl: "1 day ago | 09:29 AM", bigImage: "Brad1", miniImage: "dotImage"),
            Notification(image: "Tyra", fLbl: "Tyra Ballentine has \npublished a new recipe!", sLbl: "2 days ago | 10:29 AM", bigImage: "Tyra1", miniImage: "dotImage"),
            Notification(image: "Marci", fLbl: "Marci Winkles has \npublished a new recipe!", sLbl: "3 days ago | 16:52 PM", bigImage: "Marci1", miniImage: "dotImage"),
            Notification(image: "Aileen", fLbl: "Aileen has commented \non your recipe", sLbl: "4 days ago | 14:27 PM", bigImage: "Aileen1", miniImage: "dotImage"),
            Notification(image: "George", fLbl: "George has commented \non your recipe", sLbl: "5 days ago | 09:20 AM", bigImage: "George1", miniImage: "dotImage")
        ]
    }
    private func setUpConstraintsForTAbleView(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 88),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(NotificationTableViewCell.self, forCellReuseIdentifier: cell)
    }
}

extension NotificationViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cell, for: indexPath) as! NotificationTableViewCell
        cell.clipsToBounds = true
        cell.initCellData(noot[indexPath.row])
        return cell
    }
}
