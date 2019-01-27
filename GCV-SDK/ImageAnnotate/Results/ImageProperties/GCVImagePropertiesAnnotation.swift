//
//  GCVImagePropertiesAnnotation.swift
//  imagepicker
//
//  Created by aseo on 2019/01/27.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

/// 画像のプロパティ検知結果
public struct GCVImagePropertiesAnnotation: Decodable {
    /// 写真の中に含まれている色
    private let dominantColors: GCVColorProperties
    /// 色プロパティの一覧
    public var colors: [GCVImageProperties] {
        get {
            return dominantColors.colors
        }
    }
    
}
