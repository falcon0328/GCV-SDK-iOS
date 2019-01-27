//
//  GCVResponses.swift
//  imagepicker
//
//  Created by aseo on 2019/01/26.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

/// GCVからのレスポンス
struct GCVImageAnnotateResponse: Decodable {
    /// ラベル検知結果
    let labelAnnotations: [GCVLabelAnnotation]?
    /// 顔検知結果
    let faceAnnotations: [GCVFaceAnnotation]?
    /// テキスト検知結果
    let textAnnotations: [GCVTextAnnotation]?
    /// ランドマーク検知結果
    let landmarkAnnotations: [GCVLandMarkAnnotation]?
    /// ロゴ検知結果
    let logoAnnotations: [GCVLogoAnnotation]?
    /// 有害検知結果
    let safeSearchAnnotation: GCVSafeSearchAnnotation?
    /// 画像のプロパティ検知結果
    let imagePropertiesAnnotation: GCVImagePropertiesAnnotation?
    
    /// エラー
    let error: GCVError?
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        do {
            labelAnnotations = try container.decode([GCVLabelAnnotation].self,
                                                    forKey: .labelAnnotations)
        } catch { labelAnnotations = nil }
        do {
            textAnnotations = try container.decode([GCVTextAnnotation].self,
                                                   forKey: .textAnnotations)
        } catch { textAnnotations = nil }
        do {
            landmarkAnnotations = try container.decode([GCVLandMarkAnnotation].self,
                                                       forKey: .landmarkAnnotations)
        } catch { landmarkAnnotations = nil }
        do {
            logoAnnotations = try container.decode([GCVLogoAnnotation].self,
                                                   forKey: .logoAnnotations)
        } catch { logoAnnotations = nil }
        do {
            safeSearchAnnotation = try container.decode(GCVSafeSearchAnnotation.self,
                                                        forKey: .safeSearchAnnotation)
        } catch { safeSearchAnnotation = nil }
        do {
            imagePropertiesAnnotation = try container.decode(GCVImagePropertiesAnnotation.self,
                                                             forKey: .imagePropertiesAnnotation)
        } catch { imagePropertiesAnnotation = nil }
        do {
            faceAnnotations = try container.decode([GCVFaceAnnotation].self,
                                                   forKey: .faceAnnotations)
        } catch {
            print(error)
            faceAnnotations = nil
        }
        do {
            error = try container.decode(GCVError.self,
                                         forKey: .error)
        } catch { self.error = nil }
    }
    
    /// コーディングキーの設定
    private enum CodingKeys: String, CodingKey {
        case labelAnnotations = "labelAnnotations"
        case textAnnotations = "textAnnotations"
        case landmarkAnnotations = "landmarkAnnotations"
        case logoAnnotations = "logoAnnotations"
        case safeSearchAnnotation = "safeSearchAnnotation"
        case imagePropertiesAnnotation = "imagePropertiesAnnotation"
        case faceAnnotations = "faceAnnotations"
        case error = "error"
    }
}
