//
//  GCVColorProperties.swift
//  imagepicker
//
//  Created by aseo on 2019/01/27.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

/// RGB値
public struct GCVColor: Decodable {
    /// 赤色
    public var red: Int
    /// 緑色
    public var green: Int
    /// 青色
    public var blue: Int
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        red = try container.decode(Int.self, forKey: .red)
        green = try container.decode(Int.self, forKey: .green)
        blue = try container.decode(Int.self, forKey: .blue)
    }
    
    /// コーディングキーの設定
    private enum CodingKeys: String, CodingKey {
        case red = "red"
        case green = "green"
        case blue = "blue"
    }
}
