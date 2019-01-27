//
//  GCVLocationAnnotation.swift
//  imagepicker
//
//  Created by aseo on 2019/01/26.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation
import MapKit

/// 位置情報の検知結果
public struct GCVLocationAnnotation: Decodable {
    /// 位置情報
    private let latLng: GCVLatLng
    /// 緯度
    public var latitude: CLLocationDegrees {
        get {
            return latLng.latitude
        }
    }
    /// 経度
    public var longitude: CLLocationDegrees {
        get {
            return latLng.longitude
        }
    }
}
