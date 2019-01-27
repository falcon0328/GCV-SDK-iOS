//
//  GCVFaceLandMarkPosition.swift
//  imagepicker
//
//  Created by aseo on 2019/01/27.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

/// 顔のパーツの位置情報
public struct GCVFaceLandMarkPosition: Decodable {
    /// 画像の左端から右方向への距離
    public let x: Double
    /// 画像の上端から下方向への距離
    public let y: Double
    /// 手前、前後の距離
    public let z: Double
}
