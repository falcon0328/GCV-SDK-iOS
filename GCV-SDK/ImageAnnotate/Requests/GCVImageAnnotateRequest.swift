//
//  GCVImageAnnotateResult.swift
//  imagepicker
//
//  Created by aseo on 2019/01/26.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

struct GCVImageAnnotateRequests: Encodable {
    let requests: [GCVImageAnnotateRequest]
}

public struct GCVImageAnnotateRequest: Encodable {
    let image: GCVImage
    let features: [GCVImageAnnotateFeature]
    
    enum CodingKeys: String, CodingKey {
        case image = "image"
        case features = "features"
    }
}
