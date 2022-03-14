//
//  ModelData.swift
//  LandmarksApp
//
//  Created by Isaac Shin on 2022/03/14.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T{
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Couldn't find \(filename) in main bundle")
    }
    
    do{
        data = try Data(contentsOf: file)
    } catch{
        fatalError("Couldn't find \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: <#T##Data#>)
    } catch{
        fatalError("Couldn't find \(filename) from main bundle:\n\(error)")
    }
}
