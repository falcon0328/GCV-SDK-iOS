//
//  GCVAnnotation.swift
//  imagepicker
//
//  Created by aseo on 2019/01/26.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

/// 画像の検知結果
protocol GCVAnnotation: Decodable {
    /// エンティティID
    var mid: String { get }
    /// スコア
    var score: Double { get }
    /// 説明
    var description: String { get }
}
