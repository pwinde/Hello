//
//  Usage.swift
//  App
//
//  Created by Petter Winde on 2019-10-31.
//

import Foundation
import Vapor

struct Usage: Codable {
    var month: String
    var hourKwh: [Double]
}

//extension Usage: ResponseEncodable {
//    func encode(for req: Request) throws -> EventLoopFuture<Response> {
//        <#code#>
//    }
//    
//    
//}

extension Usage {
    static var mockedData: Usage {
        Usage(month: "jan", hourKwh: [10.2, 15.3, 4.01])
    }
    
    func encodedString() -> String {
        let encoder = JSONEncoder()
        let data = try! encoder.encode(self)
        return String(data: data, encoding: .utf8)!
    }
}
