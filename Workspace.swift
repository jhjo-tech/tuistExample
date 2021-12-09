//
//  Workspace.swift
//  ProjectDescriptionHelpers
//
//  Created by Bruce on 2021/12/09.
//

import ProjectDescription

let workspace = Workspace(
    name: "CustomWorkspace",
    projects: [
        "Targets/TuistExample",
        "Targets/TuistExampleKit",
        "Targets/TuistExampleUI"
    ]
)
