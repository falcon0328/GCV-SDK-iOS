//
//  GCVImageAnnotateFeature.swift
//  imagepicker
//
//  Created by aseo on 2019/01/26.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

public struct GCVImageAnnotateFeature: Encodable {
    let type: GCVImageAnnotateDetection
    let maxResults: Int
}
