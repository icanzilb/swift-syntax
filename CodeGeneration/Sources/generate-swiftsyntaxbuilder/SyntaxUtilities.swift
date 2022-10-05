//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2022 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

import SwiftSyntax
import SwiftSyntaxBuilder
import Utils

let copyrightHeader = """
    //// Automatically Generated by generate-swiftsyntaxbuilder
    //// Do Not Edit Directly!
    //===----------------------------------------------------------------------===//
    //
    // This source file is part of the Swift.org open source project
    //
    // Copyright (c) 2014 - 2022 Apple Inc. and the Swift project authors
    // Licensed under Apache License v2.0 with Runtime Library Exception
    //
    // See https://swift.org/LICENSE.txt for license information
    // See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
    //
    //===----------------------------------------------------------------------===//


    """

func createTypeInheritanceClause(conformances: [String]) -> TypeInheritanceClause? {
  conformances.isEmpty ? nil : TypeInheritanceClause {
    for conformance in conformances {
      InheritedType(typeName: conformance)
    }
  }
}

/// Create a parameter clause of the form `format: Format`.
func createFormatParameters() -> ParameterClause {
  ParameterClause {
    FunctionParameter(
      firstName: .identifier("format"),
      colon: .colon,
      type: "Format"
    )
  }
}

/// Generate the `create...` function for an `ExpressibleAs...` conformance.
func createExpressibleAsCreateFunction(type: SyntaxBuildableType, additionalDocComments: [String] = []) -> FunctionDecl {
  let docComment = ([
    "/// Conformance to `\(type.expressibleAsBaseName)`."
  ] + additionalDocComments).joined(separator: "\n")
  return FunctionDecl(
    """
    \(docComment)
    public func create\(type.buildableBaseName)() -> \(type.buildable) {
      return self
    }
    """
  )
}

/// Generate the `create...` function for an `ExpressibleAs...` conformance
/// that includes an explanation as to how the function disambiguates a conformance.
func createDisambiguatingExpressibleAsCreateFunction(type: SyntaxBuildableType, baseType: SyntaxBuildableType) -> FunctionDecl {
  createExpressibleAsCreateFunction(type: baseType, additionalDocComments: [
    "/// `\(type.buildableBaseName)` may conform to `\(baseType.expressibleAsBaseName)` via different `ExpressibleAs*` paths.",
    "/// Thus, there are multiple default implementations of `create\(baseType.buildableBaseName)`, some of which perform conversions",
    "/// through `ExpressibleAs*` protocols. To resolve the ambiguity, provie a fixed implementation that doesn't perform any conversions.",
  ])
}
//
/// Generate a `withATrivia` function.
func createWithTriviaFunction(trivia: String) -> FunctionDecl {
  FunctionDecl(
    """
    public func with\(trivia.withFirstCharacterUppercased)(_ \(trivia): Trivia) -> Self {
      var result = self
      result.\(trivia) = \(trivia)
      return result
    }
    """
  )
}

func createTriviaAttachment(varName: ExprBuildable, triviaVarName: ExprBuildable, trivia: String) -> IfStmt {
  IfStmt(
    """
    if !\(triviaVarName).isEmpty {
      let trivia = \(triviaVarName) + (\(varName).\(trivia) ?? [])
      \(varName) = \(varName).with\(trivia.withFirstCharacterUppercased)(trivia)
    }
    """
  )
}
