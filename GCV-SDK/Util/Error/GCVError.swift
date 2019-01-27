//
//  GCVError.swift
//  imagepicker
//
//  Created by aseo on 2019/01/26.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

/// GCVに関するエラー
public struct GCVError: Error, Decodable {
    /// エラーコード
    let code: Int
    /// エラーメッセージ
    let message: String
}
