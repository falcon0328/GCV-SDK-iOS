//
//  GCVImageAnnotateProvider.swift
//  imagepicker
//
//  Created by aseo on 2019/01/26.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

public class GCVImageAnnotateProvider {
    private let session = URLSession.shared
    private let jsonEncoder = JSONEncoder()
    private let jsonDecoder = JSONDecoder()
    
    let apiKey: String
    let bundleID: String
    var url: URL {
        return URL(string: "https://vision.googleapis.com/v1/images:annotate?key=\(apiKey)")!
    }
    
    public init(apiKey: String, bundleID: String) {
        self.apiKey = apiKey
        self.bundleID = bundleID
    }
    
    public func fetchImageDetectionResults(imageBase64: String,
                                           labelDetectionMaxResults: Int,
                                           faceDetectionMaxResults: Int,
                                           textDetectionMaxResults: Int,
                                           logoDetectionMaxResults: Int,
                                           landMarkDetectionMaxResults: Int,
                                           imagePropertiesMaxResults: Int,
                                           completionHandler: @escaping(GCVImageAnnotateResponses?, Error?) -> Void ) {
        fetchImageDetectionResultsData(imageBase64: imageBase64,
                                       labelDetectionMaxResults: labelDetectionMaxResults,
                                       faceDetectionMaxResults: faceDetectionMaxResults,
                                       textDetectionMaxResults: textDetectionMaxResults,
                                       logoDetectionMaxResults: logoDetectionMaxResults,
                                       landMarkDetectionMaxResults: landMarkDetectionMaxResults,
                                       imagePropertiesMaxResults: imagePropertiesMaxResults,
                                       completionHandler:
            { data, response, error in
                DispatchQueue.main.async {
                    guard let data = data else {
                        completionHandler(nil, error)
                        return
                    }
                    do {
                        let gcvResponse = try self.jsonDecoder.decode(GCVImageAnnotateResponses.self,
                                                                      from: data)
                        if let gcvImageAnnotateError = gcvResponse.error {
                            completionHandler(nil, gcvImageAnnotateError)
                            return
                        }
                        completionHandler(gcvResponse, nil)
                    } catch { completionHandler(nil, error) }
                }
            })
    }
    
    private func fetchImageDetectionResultsData(imageBase64: String,
                                                labelDetectionMaxResults: Int,
                                                faceDetectionMaxResults: Int,
                                                textDetectionMaxResults: Int,
                                                logoDetectionMaxResults: Int,
                                                landMarkDetectionMaxResults: Int,
                                                imagePropertiesMaxResults: Int,
                                                completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) {
        // Create our request URL
        var request = URLRequest(url: url)
        request.httpMethod = GCVHttpMethod.post.rawValue
        request.addValue(GCVContentType.json.rawValue, forHTTPHeaderField: "Content-Type")
        request.addValue(bundleID, forHTTPHeaderField: "X-Ios-Bundle-Identifier")
        do {
            let image = GCVImage(content: imageBase64)
            let labelDetectionFeatures = GCVImageAnnotateFeature(type: .label,
                                                                 maxResults: labelDetectionMaxResults)
            let faceDetectionFeatures = GCVImageAnnotateFeature(type: .face,
                                                                maxResults: faceDetectionMaxResults)
            let logoDetectionFeatures = GCVImageAnnotateFeature(type: .logo,
                                                                maxResults: logoDetectionMaxResults)
            let textDetectionFeatures = GCVImageAnnotateFeature(type: .text,
                                                                maxResults: textDetectionMaxResults)
            let landMarkDetectionFeatures = GCVImageAnnotateFeature(type: .landMark,
                                                                    maxResults: landMarkDetectionMaxResults)
            let imagePropertiesFeatures = GCVImageAnnotateFeature(type: .imageProperties,
                                                                  maxResults: imagePropertiesMaxResults)
            let safeSearchDetectionFeatures = GCVImageAnnotateFeature(type: .safeSearch,
                                                                      maxResults: 1)
            let imageRequest = GCVImageAnnotateRequest(image: image,
                                                       features: [labelDetectionFeatures,
                                                                  faceDetectionFeatures,
                                                                  logoDetectionFeatures,
                                                                  textDetectionFeatures,
                                                                  landMarkDetectionFeatures,
                                                                  imagePropertiesFeatures,
                                                                  safeSearchDetectionFeatures])
            let jsonRequest = GCVImageAnnotateRequests(requests: [imageRequest])
            let httpBody = try jsonEncoder.encode(jsonRequest)
            request.httpBody = httpBody
            DispatchQueue.global().async {
                self.runRequestOnBackgroundThread(request: request, completionHandler: { data, response, error in
                    completionHandler(data, response, error)
                })
            }
        } catch {
            print(error)
        }
    }
    
    private func runRequestOnBackgroundThread(request: URLRequest,
                                              completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) {
        let task: URLSessionDataTask = URLSession.shared.dataTask(with: request) { (data, response, error) in
            completionHandler(data, response, error)
        }
        task.resume()
    }
}
