//
// Swiftfin is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2026 Jellyfin & Jellyfin Contributors
//

extension CheckedContinuation where E == Never {

    func resume<Value, Failure: Error>(failure: Failure) where T == Result<Value, Failure> {
        resume(returning: .failure(failure))
    }

    func resume<Value, Failure: Error>(success: Value) where T == Result<Value, Failure> {
        resume(returning: .success(success))
    }
}
