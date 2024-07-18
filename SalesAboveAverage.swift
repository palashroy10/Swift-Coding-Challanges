//
//  SalesAboveAverage.swift
//  test
//
//  Created by Palash Roy on 7/17/24.
//

import Foundation

let sales = [100, 200, 200, 400, 500, 200, 100]

func checkSalesAboveAverage() {
    let sum = sales.reduce(0, { $0 +  $1 })
    let avg = sum/sales.count
    var max = 0
    var count = 0
    for item in sales {
        if item > avg {
            count = count + 1
        } else {
            if max < count {
                max = count
                count = 0
            }
        }
    }
    if max < count {
        max = count
    }
    print(avg)
    print(max)
}
