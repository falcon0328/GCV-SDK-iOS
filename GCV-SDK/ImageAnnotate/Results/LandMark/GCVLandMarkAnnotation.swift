//
//  GCVLandMarkAnnotation.swift
//  imagepicker
//
//  Created by aseo on 2019/01/26.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

/// ランドマークの検知結果
public struct GCVLandMarkAnnotation: GCVAnnotation {
    public var mid: String
    public var score: Double
    public var description: String
    /// 領域情報
    ///
    /// どこにランドマークが写っているかを示す
    private let boundingPoly: GCVAnnotationVertices
    /// 領域情報
    ///
    /// どこにランドマークが写っているかを示す
    public var vertices: [GCVVertice] {
        get {
            return boundingPoly.vertices
        }
    }
    /// ランドマークの位置情報
    public let locations: [GCVLocationAnnotation]
}
