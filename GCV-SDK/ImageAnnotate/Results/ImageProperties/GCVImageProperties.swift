//
//  GCVImageProperties.swift
//  imagepicker
//
//  Created by aseo on 2019/01/27.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation
import UIKit

/// 画像の色プロパティ
public struct GCVImageProperties: Decodable {
    /// RGB値
    private let gcvColor: GCVColor
    /// RGB値をもとに生成したUIColor
    public var color: UIColor {
        get {
            return UIColor(red: CGFloat(gcvColor.red / 255) ,
                           green: CGFloat(gcvColor.green / 255),
                           blue: CGFloat(gcvColor.blue / 255),
                           alpha: 1.0)
        }
    }
    /// スコア
    public let score: Double
    /// ピクセル分数
    public let pixelFraction: Double
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        gcvColor = try container.decode(GCVColor.self, forKey: .gcvColor)
        score = try container.decode(Double.self, forKey: .score)
        pixelFraction = try container.decode(Double.self, forKey: .pixelFraction)
    }
    
    /// コーディングキーの設定
    private enum CodingKeys: String, CodingKey {
        case gcvColor = "color"
        case score = "score"
        case pixelFraction = "pixelFraction"
    }
}
