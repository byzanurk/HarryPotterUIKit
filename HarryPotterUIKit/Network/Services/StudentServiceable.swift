//
//  StudentServiceable.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 22.12.2025.
//

import Foundation

protocol StudentServiceable {
    func fetchStudents() async -> Result<[Character], RequestError>
}

struct StudenService: StudentServiceable {
    
    private let service: HttpClientProtocol
    
    init(service: HttpClientProtocol) {
        self.service = service
    }
    
    func fetchStudents() async -> Result<[Character], RequestError> {
        return await service.sendRequest(endpoint: StudentEndpoint(), responseModel: [Character].self)
    }
    
}
  
