//
//  GCVFaceLandMark.swift
//  imagepicker
//
//  Created by aseo on 2019/01/27.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

/// 顔の各パーツの情報
public struct GCVFaceLandMark: Decodable {
    /// 顔のパーツの種類
    public let type: GCVFaceLandMarkType
    /// 顔のパーツの位置情報
    public let position: GCVFaceLandMarkPosition
}
