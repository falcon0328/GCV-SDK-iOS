//
//  GCVImageAnnotateResponses.swift
//  imagepicker
//
//  Created by aseo on 2019/01/27.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

/// GCVからのレスポンス配列
public struct GCVImageAnnotateResponses: Decodable {
    /// レスポンス配列
    private var responses: [GCVImageAnnotateResponse]
    /// レスポンス
    private var response: GCVImageAnnotateResponse
    /// ラベル検知結果
    public let labelAnnotations: [GCVLabelAnnotation]?
    /// 顔検知結果
    public let faceAnnotations: [GCVFaceAnnotation]?
    /// テキスト検知結果
    public let textAnnotations: [GCVTextAnnotation]?
    /// ランドマーク検知結果
    public let landmarkAnnotations: [GCVLandMarkAnnotation]?
    /// ロゴ検知結果
    public let logoAnnotations: [GCVLogoAnnotation]?
    /// 有害検知結果
    public let safeSearchAnnotation: GCVSafeSearchAnnotation?
    /// 画像のプロパティ検知結果
    public let imagePropertiesAnnotation: GCVImagePropertiesAnnotation?
    
    /// エラー
    public let error: GCVError?
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        responses = try container.decode([GCVImageAnnotateResponse].self, forKey: .responses)
        if responses.isEmpty {
            throw DecodingError.dataCorruptedError(forKey: .responses,
                                                   in: container,
                                                   debugDescription: "responses is empty")
        }
        response = responses.first!
        labelAnnotations = response.labelAnnotations
        textAnnotations = response.textAnnotations
        landmarkAnnotations = response.landmarkAnnotations
        logoAnnotations = response.logoAnnotations
        safeSearchAnnotation = response.safeSearchAnnotation
        imagePropertiesAnnotation = response.imagePropertiesAnnotation
        faceAnnotations = response.faceAnnotations
        error = response.error
    }
    
    /// コーディングキーの設定
    private enum CodingKeys: String, CodingKey {
        case responses = "responses"
    }
}
