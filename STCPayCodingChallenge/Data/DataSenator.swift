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
    let extra: Extra
    let endDate: String?
    let website: String 
}

struct Person: Decodable {
    let name: String
    let gender: String
    let sortname: String
    let birthday: String
}

struct Extra: Decodable {
    let address: String
    let office: String
    
}
