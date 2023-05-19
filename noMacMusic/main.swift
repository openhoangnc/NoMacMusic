//
//  main.swift
//  JOKey
//
//  Created by Hoang Nguyen on 28/08/2021.
//

import AppKit

let cliApp = "NoMacMusicCli-by-afixer-app"

let killTask = Process()
killTask.launchPath = "/usr/bin/pkill"
killTask.arguments = [cliApp]
try! killTask.run()
killTask.waitUntilExit()

let noMacMusicCli = Bundle.main.url(forResource: cliApp, withExtension: "")?.path

let launchTask = Process()
launchTask.launchPath = "/usr/bin/open"
launchTask.arguments = ["--background", "-a", noMacMusicCli!, "--args", "-bg"]
try! launchTask.run()

print("done")
