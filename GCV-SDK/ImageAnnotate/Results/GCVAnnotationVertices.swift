//
//  GCVAnnotationVertices.swift
//  imagepicker
//
//  Created by aseo on 2019/01/26.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

/// 画像の検知時に利用する領域を表現する構造体
///
/// 基本的には4座標（GCVVertice）1組で表現される
struct GCVAnnotationVertices: Decodable {
    /// 座標の集合
    let vertices: [GCVVertice]
}
