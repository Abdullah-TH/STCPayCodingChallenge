//
//  DataSenator.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import Foundation

struct DataSenator: Decodable {
    
    let person: Person
    let party: String
    let description: String
}

struct Person: Decodable {
    let name: String
}
