//
//  PointerHelperFunctions.swift
//  
//
//  Created by Khalid Alotaibi on 11/27/22.
//

import RealModule

//Mark:- PointerHelperFunctions
func helperToPointer<T: Real>(
    src: ShapedArray<T>
) -> UnsafeBufferPointer<T>
{
    src.withUnsafeBufferPointer { tempSrc in
        return tempSrc
    }
}

func helperToMutatingPointer<T: Real>(
    dst: inout ShapedArray<T>
) -> UnsafeMutableBufferPointer<T>
{
    dst.withUnsafeMutableBufferPointer { tempDst in
        return tempDst
    }
}
