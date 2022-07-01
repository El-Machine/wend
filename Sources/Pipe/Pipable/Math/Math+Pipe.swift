//  Copyright © 2020-2022 El Machine 🤖
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
//  Created by Alex Kozin
//

import Foundation

extension Bool {
    
    static postfix func |<T: Numeric> (p: Self) -> T {
        p ? 1 : 0
    }

}

extension Double {
    
    static postfix func |(p: Self) -> Float {
        Float(p)
    }
    
}

extension String {
    
    static postfix func |(self: Self) -> Int? {
        Int(self) ?? Int(String(self.unicodeScalars.filter(CharacterSet.decimalDigits.inverted.contains)))
    }
    
    static postfix func |(self: Self) -> Int {
        (self|)!
    }
    
}
    
postfix func |<T: BinaryFloatingPoint>(p: T) -> Int {
    Int(p)
}

postfix func |(piped: String?) -> Double? {
    Double(piped ?? "")
}