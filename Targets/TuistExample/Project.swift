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

//let exampleKitProject = Project.makeFrameworkTarget(organizationId: organizationId,
//                                                    projectName: proejctName,
//                                                    name: "TuistExampleKit",
//                                                    platform: .iOS)
//let exampleUIProject = Project.makeFrameworkTarget(organizationId: organizationId,
//                                                   projectName: proejctName,
//                                                   name: "TuistExampleUI",
//                                                   platform: .iOS)
//
//let dependency = ["TuistExampleKit", "TuistExampleUI"].map({ TargetDependency.target(name: $0) })

let projectTarget = Project.makeAppTargets(organizationId: "io.tuist",
                                           projectName: proejctName,
                                           name: "TuistExample",
                                           platform: .iOS,
                                           dependencies: [])

let project = Project(name: "TuistExample",
                      organizationName: organizationId,
                      targets: projectTarget)
