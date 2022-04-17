// The MIT License (MIT)
// Copyright © 2020 Ivan Vorobei (hello@ivanvorobei.io)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import UIKit
/*
/**
 SPPermissions: Interface for get ready-use present styles and basic services.
 */
public enum SPPermissionsCLEAN {
    
    // MARK: - Present Styles
    
    /**
     SPPermissions: Request permissions with native style without any special controller.
     
     - parameter permissions: List if permissions for request, using model `SPPermissions.Permission`.
     */
    @available(iOSApplicationExtension, unavailable)
    public static func native(_ permissions: [Permission]) -> SPPermissionsNativeController {
        let controller = SPPermissionsNativeController(prepare(permissions))
        return controller
    }
    
    #if os(iOS)
    
    /**
     SPPermissions: Request permissions as list style.
     
     - parameter permissions: List if permissions for request, using model `SPPermissions.Permission`.
     */
    @available(iOSApplicationExtension, unavailable)
    public static func list(_ permissions: [Permission]) -> SPPermissionsListController {
        let controller = SPPermissionsListController(prepare(permissions))
        return controller
    }
    
    /**
     SPPermissions: Request permissions as dialog style.
     
     - parameter permissions: List if permissions for request, using model `SPPermissions.Permission`.
     */
    @available(iOSApplicationExtension, unavailable)
    public static func dialog(_ permissions: [Permission]) -> SPPermissionsDialogController {
        let controller = SPPermissionsDialogController(prepare(permissions))
        return controller
    }
    
    #endif
    
    // MARK: - Helpers
    
    static func prepare(_ permissions: [Permission]) -> [Permission] {
        
        for duplicate in permissions.duplicates {
            console("Got duplicate permission \(duplicate.debugName), it will be filtered")
        }
        
        for unvailable in permissions.filter({ !$0.canBePresentWithCustomInterface }) {
            console("Permission \(unvailable.debugName) can't be present with custom interface. Use `SPPermissions.Permission.NAME.request()` with requerid parametrs. Permission \(unvailable.debugName) will be filtered")
        }
        
        return permissions.removedDuplicates().filter({ $0.canBePresentWithCustomInterface })
    }
    
    static func console( _ message: String) {
        print("SPPermissions: \(message).")
    }
}
*/
