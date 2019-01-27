//
//  GCVLabelAnnotation.swift
//  imagepicker
//
//  Created by aseo on 2019/01/26.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

/// ラベル検知結果
public struct GCVLabelAnnotation: GCVAnnotation {
    public let mid: String
    public let score: Double
    public let description: String
    /// 有名度
    public let topicality: Double
}
