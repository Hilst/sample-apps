//
//  ListViewModel.swift
//  SwiftUISampleApp
//
//  Created by Felipe Hilst on 18/05/22.
//

import Foundation

class ListViewModel {
    
    private let service: ListService
    
    init(service: ListService = ListServiceMock()) {
        self.service = service
    }
    
    private var list = [Item]()
    
    public func getListItems() -> [Item] {
        if let _list = service.getListItems() {
            list = _list
        }
        return list
    }
}
