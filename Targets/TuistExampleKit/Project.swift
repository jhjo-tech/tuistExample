import ProjectDescription
import ProjectDescriptionHelpers

/*
                +-------------+
                |             |
                |     App     | Contains TuistExample App target and TuistExample unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Creates our project using a helper function defined in ProjectDescriptionHelpers
//let project = Project.app(name: "TuistExample",
//                          platform: .iOS,
//                          additionalTargets: ["TuistExampleKit", "TuistExampleUI"])

let proejctName = "Targets"
let organizationId = "io.tuist"

let tuistExampleKit = Project.makeFrameworkTarget(organizationId: organizationId,
                                                   projectName: proejctName,
                                                   name: "TuistExampleUI",
                                                   platform: .iOS)

let project = Project(name: "TuistExampleUI",
                             organizationName: organizationId,
                             targets: tuistExampleKit)
