//
//  QuestionRecord.swift
//  StudiPartna
//
//  Created by Gary Mullings on 3/31/18.
//  Copyright © 2018 Gary Mullings. All rights reserved.
//

import Foundation

struct Question {
//    let subject : SubjectsEnum
    let question : String
    let answers : [Answer]
}

struct theQuestions {
    let question : [String:[Question]]
}
