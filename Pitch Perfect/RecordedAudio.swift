//
//  RecordedAudio.swift
//  Pitch Perfect
//
//  Created by Joshua  Tan on 29/8/15.
//  Copyright (c) 2015 Joshua. All rights reserved.
//

import Foundation

class RecordedAudio: NSObject{
    var filePathUrl: NSURL!
    var title: String!
    
    convenience override init() {
        self.init(filePath: NSURL(), newTitle: "Default")
    }
    
    init(filePath:NSURL, newTitle: String){
        self.filePathUrl = filePath
        self.title = newTitle
    }
}



