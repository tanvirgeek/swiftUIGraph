//
//  Report.swift
//  BargraphDemo
//
//  Created by MD Tanvir Alam on 11/10/20.
//  Copyright © 2020 MD Tanvir Alam. All rights reserved.
//

import Foundation

struct Report {
    let year:String
    let revinue:Double
}

extension Report{
    static func getAll()->[Report]{
        return
            [
                Report(year: "2015", revinue: 2000),
                Report(year: "2017", revinue: 5000),
                Report(year: "2019", revinue: 8000),
            ]
    }
}
