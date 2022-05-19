//
//  Service.swift
//  SwiftUISampleApp
//
//  Created by Felipe Hilst on 18/05/22.
//

import Foundation

protocol ListService {
    func getListItems() -> [Item]?
}

final class ListServiceMock: ListService {
    
    func request(for opLink: String) -> Result<(response: [Item], statusCode: Int), Error> {
        if
            let resourceURL = Bundle.main.url(forResource: opLink, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: resourceURL),
            let items = try? JSONDecoder().decode([Item].self, from: jsonData)
        {
            return Result {
                (response: items,
                 statusCode: 200)
            }
        } else {
            return Result(catching: {
                throw InvalidRead(msg: "Resource not found !")
            })
        }
    }
    
    func getListItems() -> [Item]? {
        var list: [Item]? = nil
        
        let response = request(for: "list")
        switch response {
        case .success((let items, let code)):
            guard code == 200 else { break }
            list = items
            break
        case .failure(let error):
            print(error.localizedDescription)
            break
        }
        return list
    }
}

struct InvalidRead: Error {
    let msg: String
}
