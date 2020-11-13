//
//  ContactListViewController.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import UIKit

final class ContactListViewController: UIViewController {
    
    let tableView = ContactListTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView() {
        view.addSubview(tableView)
        tableView.separatorStyle = .none
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(ContactCell.self, forCellReuseIdentifier: ContactCell.reuseIdentifier)
    }
    
}

extension ContactListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ContactCell.reuseIdentifier, for: indexPath) as! ContactCell
        cell.nameLabel.text = "Name"
        cell.partyLabel.text = "Party"
        cell.descriptionLabel.text = "Description"
        return cell
    }
    
}

extension ContactListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
