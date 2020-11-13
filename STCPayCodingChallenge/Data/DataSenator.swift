//
//  DataSenator.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import Foundation

struct RootObject: Decodable {
    let objects: [DataSenator]
}

struct DataSenator: Decodable {
    
    let person: Person
    let party: String
    let description: String
}

struct Person: Decodable {
    let name: String
}
