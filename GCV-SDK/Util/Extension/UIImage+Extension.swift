//
//  UIImage+Extension.swift
//  imagepicker
//
//  Created by aseo on 2019/01/26.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation
import UIKit

public extension UIImage {
    
    /// 画像をリサイズする
    ///
    /// - Parameter imageSize: リサイズしたいサイズ
    /// - Returns: リサイズ済みの画像
    public func resizeImage(_ imageSize: CGSize) -> Data {
        UIGraphicsBeginImageContext(imageSize)
        self.draw(in: CGRect(x: 0, y: 0, width: imageSize.width, height: imageSize.height))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        let resizedImage = newImage!.pngData()
        UIGraphicsEndImageContext()
        return resizedImage!
    }
    

    /// 画像をbase64エンコードする
    ///
    /// ファイルサイズの上限値を定められる仕様にしており、超えた場合は指定した値でリサイズするようになっている
    ///
    /// - Parameters:
    ///   - fileSizeLimit: ファイルサイズ上限
    ///   - resizeWidth: リサイズ後の幅
    ///   - resizeHeight: リサイズ後の高さ
    /// - Returns: エンコード後の画像
    public func base64EncodeImage(fileSizeLimit: Int?, resizeSize: CGSize?) -> String {
        guard var imageData = self.pngData() else {
            return ""
        }
        if let limit = fileSizeLimit, let size = resizeSize {
            if (imageData.count > limit) {
                imageData = resizeImage(size)
            }
        }
        return imageData.base64EncodedString(options: .endLineWithCarriageReturn)
    }
}

