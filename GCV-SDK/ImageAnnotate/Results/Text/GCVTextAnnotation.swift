//
//  GCVTextAnnotation.swift
//  imagepicker
//
//  Created by aseo on 2019/01/26.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

/// テキスト検知結果
public struct GCVTextAnnotation: Decodable {
    /// ロケール
    public let locale: String?
    /// 検知したテキスト
    public let description: String
    /// 領域情報
    ///
    /// どこにテキストが写っているかを示す
    private let boundingPoly: GCVAnnotationVertices
    /// 領域情報
    ///
    /// どこにテキストが写っているかを示す
    public var vertices: [GCVVertice] {
        get {
            return boundingPoly.vertices
        }
    }
}
