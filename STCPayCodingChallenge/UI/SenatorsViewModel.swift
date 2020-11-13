//
//  SenatorsViewModel.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import Foundation

final class SenatorsViewModel {
    
    var senators = [UISenator]()
    var onLoad: (() -> ())?
    var onError: ((String) -> ())?
    
    private let senatorsLoader: SenatorsLoader
    private var fetchedSenators = [Senator]()
    
    init(senatorsLoader: SenatorsLoader) {
        self.senatorsLoader = senatorsLoader
    }
    
    func fetchSenators() {
        senatorsLoader.fetch { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let senators):
                self.fetchedSenators = senators
                self.updateUISenators()
                self.onLoad?()
                print(senators)
            case .failure(let error):
                print(error)
                self.onError?(error.localizedDescription)
            }
        }
    }
    
    private func updateUISenators() {
        senators = fetchedSenators.map {
            UISenator(
                name: $0.name,
                party: $0.party,
                description: $0.description
            )
        }
        
        senators.sort { (left, right) in
            right.name > left.name
        }
    }
}
