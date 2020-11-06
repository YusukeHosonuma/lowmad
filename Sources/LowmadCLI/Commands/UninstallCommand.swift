import Foundation
import SwiftCLI
import LowmadKit

class UninstallCommand: LowmadCommand {

    @CollectedParam(minCount: 0) var subset: [String]

    init(lowmad: Lowmad) {
        super.init(lowmad: lowmad,
                   name: "uninstall",
                   description: "",
                   longDescription: "")
    }

    override func execute() throws {
        try lowmad.runUninstall(subset: subset)
    }
}