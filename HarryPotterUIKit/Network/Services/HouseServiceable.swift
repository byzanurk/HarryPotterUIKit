//
//  HouseServiceable.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 22.12.2025.
//

import Foundation

protocol HouseServiceable {
    func fetchHouses() async -> Result<[Character], RequestError>
}

struct HouseService: HouseServiceable {
    
    private let service: HttpClientProtocol
    
    init(service: HttpClientProtocol) {
        self.service = service
    }
    
    func fetchHouses() async -> Result<[Character], RequestError> {
        return await service.sendRequest(endpoint: HouseEndpoint(), responseModel: [Character].self)
    }
    
}
