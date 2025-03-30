import Foundation
import PythonKit

struct PythonAsyncFunctionTests {
    static let pythonModule: PythonObject = {
        let sys = Python.import("sys")
        sys.path.insert(0, Bundle.module.resourcePath!)
        let asyncFunctionTests = Python.import("AsyncFunctionTests")
        return asyncFunctionTests
    }()
}
