//
//  ContactListViewController.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import UIKit

protocol ContactListViewControllerDelegate: class {
    
    func didSelect(senator: UISenator)
}

final class ContactListViewController: UIViewController {
    
    weak var delegate: ContactListViewControllerDelegate?
    let tableView = ContactListTableView()
    private let viewModel: SenatorsViewModel
    
    init(viewModel: SenatorsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Senators"
        setupTableView()
        viewModel.fetchSenators()
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
        return viewModel.senators.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ContactCell.reuseIdentifier, for: indexPath) as! ContactCell
        let senator = viewModel.senators[indexPath.row]
        cell.photoView.image = getAppropriateImage(for: senator)
        cell.nameLabel.text = senator.name
        cell.partyLabel.text = senator.party
        cell.descriptionLabel.text = senator.description
        return cell
    }
    
    
    private func getAppropriateImage(for senator: UISenator) -> UIImage? {
        switch senator.party {
        case "Democrat":
            return #imageLiteral(resourceName: "democrat_logo")
        case "Republican":
            return #imageLiteral(resourceName: "republican_logo")
        default:
            return UIImage(systemName: "person.fill")
        }
    }
}

extension ContactListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let senator = viewModel.senators[indexPath.row]
        delegate?.didSelect(senator: senator)
    }
}


