//
//  GCVSafeSearchAnnotationLevel.swift
//  imagepicker
//
//  Created by aseo on 2019/01/26.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

/// 度合いを示す列挙型
public enum GCVLikelihood: String, Decodable {
    /// 非常に高い
    case veryLikely = "VERY_LIKELY"
    /// 高い
    case likely = "LIKELY"
    /// おそらくそう
    case possible = "POSSIBLE"
    /// 低いレベル
    case unLikely = "UNLIKELY"
    /// 非常に低いレベル
    case veryUnLikely = "VERY_UNLIKELY"
    /// 判定不能
    case unknown = "UNKNOWN"
}
