//
//  GCVSafeSearchAnnotation.swift
//  imagepicker
//
//  Created by aseo on 2019/01/26.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

/// 有害画像検知結果
public struct GCVSafeSearchAnnotation: Decodable {
    /// 加工に関するレベル
    public var spoof: GCVLikelihood
    /// 医療に関するレベル
    public var medical: GCVLikelihood
    /// アダルトに関するレベル
    public var adult: GCVLikelihood
    /// 露出度の高さなどに関するレベル
    public var racy: GCVLikelihood
    /// バイオレンスに関するレベル
    public var violence: GCVLikelihood
}
