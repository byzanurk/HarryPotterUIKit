//
//  StaffServiceable.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 22.12.2025.
//

import Foundation

protocol StaffServiceable {
    func fetchStaff() async -> Result<[Character], RequestError>
}

struct StaffService: StaffServiceable {
    
    private let service: HttpClientProtocol
    
    init(service: HttpClientProtocol) {
        self.service = service
    }
    
    func fetchStaff() async -> Result<[Character], RequestError> {
        return await service.sendRequest(endpoint: StaffEndpoint(), responseModel: [Character].self)
    }
    
}
