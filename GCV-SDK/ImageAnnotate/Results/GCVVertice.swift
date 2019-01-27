//
//  GCVVertice.swift
//  imagepicker
//
//  Created by aseo on 2019/01/26.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation
import UIKit

/// 画像の検知時に利用する座標を表現する構造体
public struct GCVVertice: Decodable {
    /// x座標
    public let x: Int?
    /// y座標
    public let y: Int?
    /// CGPoint型で座標を表現したもの
    public var point: CGPoint? {
        get {
            guard let x = self.x, let y = self.y else {
                return nil
            }
            return CGPoint(x: x, y: y)
        }
    }

}
