//
//  FindPeakFromArray.swift
//  test
//
//  Created by Palash Roy on 7/31/24.
//

import Foundation

/// given an array find number of peaks. Peaks are when side of the numbers are lower thn the mid one. Alsoif the start one is max and next one smallerr, its a peak and last one is bigger than the previous one, its peak.
///
func findPeak(A: [Int]) -> Int {
    var fPointer = 0
    var mPointer = 1
    var lPointer = 2
    
    var peak = 0
    
    switch A.count {
    case 0:
        return -1
    case 1:
        return A[0] == A[1] ? 0 : 1
    default:
        while lPointer < A.count {
            if A[fPointer] < A[mPointer] && A[mPointer] > A[lPointer] {
                peak += 1
            }
            else if A[fPointer] > A[mPointer] && fPointer == 0 {
                peak += 1
            }
            else if A[lPointer] > A[mPointer] && lPointer == A.count - 1 {
                peak += 1
            }
            fPointer += 1
            lPointer += 1
            mPointer += 1
        }
        return peak
    }
}
