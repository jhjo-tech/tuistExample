//
//  Project+App.swift
//  ProjectDescriptionHelpers
//
//  Created by Bruce on 2021/12/09.
//

import ProjectDescription

extension Project {
    public static func makeAppTargets(organizationId: String,
                                      projectName: String,
                                      name: String,
                                      platform: Platform,
                                      dependencies: [TargetDependency]) -> [Target] {
        let infoPlist: [String: InfoPlist.Value] = [
            "CFBundleShortVersionString": "1.0",
            "CFBundleVersion": "1",
            "UIMainStoryboardFile": "",
            "UILaunchStoryboardName": "LaunchScreen"
        ]
        
//        let sourcePath: String = "\(projectName)/\(name)"
        let buildId = "\(organizationId).\(name)"
        
        let source = Target(
            name: name,
            platform: platform,
            product: .app,
            bundleId: buildId,
            infoPlist: .extendingDefault(with: infoPlist),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: dependencies
        )
        
        let tests = Target(
            name: "\(name)Tests",
            platform: platform,
            product: .unitTests,
            bundleId: "\(buildId)Tests",
            infoPlist: .default,
            sources: ["Tests"],
            resources: [],
            dependencies: [.target(name: name)]
        )
        
        return [source, tests]
    }
}
