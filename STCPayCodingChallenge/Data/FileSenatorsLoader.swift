//
//  FileSenatorsLoader.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import Foundation

final class FileSenatorsLoader: SenatorsLoader {
    
    func fetch(completion: @escaping (Result<[Senator], Error>) -> Void) {
        
        if let path = Bundle.main.path(forResource: "us_senators", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: [])
                let result = try JSONDecoder().decode(RootObject.self, from: data)
                let senators = getSenators(from: result.objects)
                completion(.success(senators))
            } catch {
                print(error)
                completion(.failure(error))
            }
        }
    }
    
    private func getSenators(from dataSenators: [DataSenator]) -> [Senator] {
        dataSenators.map {
            Senator(
                name: $0.person.name,
                party: $0.party,
                description: $0.description,
                address: $0.extra.address,
                office: $0.extra.office,
                birthday: $0.person.birthday,
                enddate: $0.endDate ?? "Not avilable",
                gender: $0.person.gender,
                sortname: $0.person.sortname,
                website: $0.website
            )
        }
    }
}
