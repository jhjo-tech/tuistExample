//
//  Project+Framework.swift.swift
//  ProjectDescriptionHelpers
//
//  Created by Bruce on 2021/12/09.
//

import ProjectDescription

extension Project {
    public static func makeFrameworkTarget(organizationId: String,
                                           projectName: String,
                                           name: String,
                                           platform: Platform) -> [Target] {
        
//        let sourcePath: String = "\(projectName)/\(name)"
        let buildId = "\(organizationId).\(name)"
        let source = Target(
            name: name,
            platform: platform,
            product: .framework,
            bundleId: buildId,
            infoPlist: .default,
            sources: ["Sources/**"],
            resources: [],
            dependencies: []
        )
        
        let tests = Target(
            name: "\(name)Tests",
            platform: platform,
            product: .unitTests,
            bundleId: "Tests",
            infoPlist: .default,
            sources: ["Tests"],
            resources: [],
            dependencies: [.target(name: name)]
        )
        
        return [source, tests]
    }
}
