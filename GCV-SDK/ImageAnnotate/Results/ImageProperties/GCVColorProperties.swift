//
//  GCVColorProperties.swift
//  imagepicker
//
//  Created by aseo on 2019/01/27.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

/// 画像中で利用されている色プロパティの一覧
public struct GCVColorProperties: Decodable {
    /// 色プロパティの一覧
    public let colors: [GCVImageProperties]
}
