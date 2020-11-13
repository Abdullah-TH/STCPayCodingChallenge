//
//  SenatorsLoader.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import Foundation

protocol SenatorsLoader {
    
    func fetch(completion: @escaping (Result<[Senator], Error>) -> Void)
}
