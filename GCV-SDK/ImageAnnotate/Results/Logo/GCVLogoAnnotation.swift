//
//  GCVLogoAnnotation.swift
//  imagepicker
//
//  Created by aseo on 2019/01/26.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

/// ロゴ検知結果
public struct GCVLogoAnnotation: GCVAnnotation {
    public let mid: String
    public let score: Double
    public let description: String
    /// 領域情報
    ///
    /// どこにテキストが写っているかを示す
    private let boundingPoly: GCVAnnotationVertices
    /// 領域情報
    ///
    /// どこにロゴが写っているかを示す
    public var vertices: [GCVVertice] {
        get {
            return boundingPoly.vertices
        }
    }
}
