//
//  FileSenatorsLoader.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import Foundation

final class FileSenatorsLoader: SenatorsLoader {
    
    func fetch(completion: @escaping (Result<[Senator], Error>) -> Void) {
        
        if let path = Bundle.main.path(forResource: "us-senate", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: [])
                let results = try JSONDecoder().decode([DataSenator].self, from: data)
                let senators = getSenators(from: results)
                completion(.success(senators))
            } catch {
                completion(.failure(error))
            }
        }
    }
    
    private func getSenators(from dataSenators: [DataSenator]) -> [Senator] {
        dataSenators.map { _ in
            Senator(
                name: "",
                party: "",
                description: ""
            )
        }
    }
}
