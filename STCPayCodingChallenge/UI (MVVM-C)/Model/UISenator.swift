//
//  UISenator.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import UIKit

struct UISenator {
    
    let name: String
    let party: String
    let description: String
    let address: String
    let office: String
    let birthday: String
    let enddate: String
    let gender: String
    let sortname: String
    let website: String
    
    var image: UIImage? {
        switch party {
        case "Democrat":
            return #imageLiteral(resourceName: "democrat_logo")
        case "Republican":
            return #imageLiteral(resourceName: "republican_logo")
        default:
            return UIImage(systemName: "person.fill")
        }
    }
}
