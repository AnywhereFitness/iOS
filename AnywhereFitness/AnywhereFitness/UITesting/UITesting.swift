//
//  UITesting.swift
//  AnywhereFitness
//
//  Created by brian vilchez on 1/9/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//

import Foundation

var isUITesting: Bool {
    return CommandLine.arguments.contains("UITesting")
}
