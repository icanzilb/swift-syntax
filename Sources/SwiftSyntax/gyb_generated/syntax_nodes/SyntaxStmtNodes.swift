//// Automatically Generated From SyntaxNodes.swift.gyb.
//// Do Not Edit Directly!
//===------------ SyntaxNodes.swift - Syntax Node definitions -------------===//
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


// MARK: - BreakStmtSyntax

public struct BreakStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .breakStmt else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `BreakStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .breakStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeBreakKeyword: UnexpectedNodesSyntax? = nil,
    breakKeyword: TokenSyntax = .keyword(.break),
    _ unexpectedBetweenBreakKeywordAndLabel: UnexpectedNodesSyntax? = nil,
    label: TokenSyntax? = nil,
    _ unexpectedAfterLabel: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeBreakKeyword, breakKeyword, unexpectedBetweenBreakKeywordAndLabel, label, unexpectedAfterLabel))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeBreakKeyword?.raw,
        breakKeyword.raw,
        unexpectedBetweenBreakKeywordAndLabel?.raw,
        label?.raw,
        unexpectedAfterLabel?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.breakStmt, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeBreakKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = BreakStmtSyntax(data.replacingChild(at: 0, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var breakKeyword: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = BreakStmtSyntax(data.replacingChild(at: 1, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenBreakKeywordAndLabel: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = BreakStmtSyntax(data.replacingChild(at: 2, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var label: TokenSyntax? {
    get {
      return data.child(at: 3, parent: Syntax(self)).map(TokenSyntax.init)
    }
    set(value) {
      self = BreakStmtSyntax(data.replacingChild(at: 3, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedAfterLabel: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 4, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = BreakStmtSyntax(data.replacingChild(at: 4, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeBreakKeyword,
      \Self.breakKeyword,
      \Self.unexpectedBetweenBreakKeywordAndLabel,
      \Self.label,
      \Self.unexpectedAfterLabel,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return "label"
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension BreakStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeBreakKeyword": unexpectedBeforeBreakKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "breakKeyword": Syntax(breakKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenBreakKeywordAndLabel": unexpectedBetweenBreakKeywordAndLabel.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "label": label.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedAfterLabel": unexpectedAfterLabel.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - ContinueStmtSyntax

public struct ContinueStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .continueStmt else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `ContinueStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .continueStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeContinueKeyword: UnexpectedNodesSyntax? = nil,
    continueKeyword: TokenSyntax = .keyword(.continue),
    _ unexpectedBetweenContinueKeywordAndLabel: UnexpectedNodesSyntax? = nil,
    label: TokenSyntax? = nil,
    _ unexpectedAfterLabel: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeContinueKeyword, continueKeyword, unexpectedBetweenContinueKeywordAndLabel, label, unexpectedAfterLabel))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeContinueKeyword?.raw,
        continueKeyword.raw,
        unexpectedBetweenContinueKeywordAndLabel?.raw,
        label?.raw,
        unexpectedAfterLabel?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.continueStmt, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeContinueKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ContinueStmtSyntax(data.replacingChild(at: 0, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var continueKeyword: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = ContinueStmtSyntax(data.replacingChild(at: 1, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenContinueKeywordAndLabel: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ContinueStmtSyntax(data.replacingChild(at: 2, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var label: TokenSyntax? {
    get {
      return data.child(at: 3, parent: Syntax(self)).map(TokenSyntax.init)
    }
    set(value) {
      self = ContinueStmtSyntax(data.replacingChild(at: 3, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedAfterLabel: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 4, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ContinueStmtSyntax(data.replacingChild(at: 4, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeContinueKeyword,
      \Self.continueKeyword,
      \Self.unexpectedBetweenContinueKeywordAndLabel,
      \Self.label,
      \Self.unexpectedAfterLabel,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return "label"
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension ContinueStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeContinueKeyword": unexpectedBeforeContinueKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "continueKeyword": Syntax(continueKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenContinueKeywordAndLabel": unexpectedBetweenContinueKeywordAndLabel.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "label": label.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedAfterLabel": unexpectedAfterLabel.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - DeferStmtSyntax

public struct DeferStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .deferStmt else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `DeferStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .deferStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeDeferKeyword: UnexpectedNodesSyntax? = nil,
    deferKeyword: TokenSyntax = .keyword(.defer),
    _ unexpectedBetweenDeferKeywordAndBody: UnexpectedNodesSyntax? = nil,
    body: CodeBlockSyntax,
    _ unexpectedAfterBody: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeDeferKeyword, deferKeyword, unexpectedBetweenDeferKeywordAndBody, body, unexpectedAfterBody))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeDeferKeyword?.raw,
        deferKeyword.raw,
        unexpectedBetweenDeferKeywordAndBody?.raw,
        body.raw,
        unexpectedAfterBody?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.deferStmt, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeDeferKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = DeferStmtSyntax(data.replacingChild(at: 0, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var deferKeyword: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = DeferStmtSyntax(data.replacingChild(at: 1, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenDeferKeywordAndBody: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = DeferStmtSyntax(data.replacingChild(at: 2, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var body: CodeBlockSyntax {
    get {
      return CodeBlockSyntax(data.child(at: 3, parent: Syntax(self))!)
    }
    set(value) {
      self = DeferStmtSyntax(data.replacingChild(at: 3, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedAfterBody: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 4, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = DeferStmtSyntax(data.replacingChild(at: 4, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeDeferKeyword,
      \Self.deferKeyword,
      \Self.unexpectedBetweenDeferKeywordAndBody,
      \Self.body,
      \Self.unexpectedAfterBody,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension DeferStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeDeferKeyword": unexpectedBeforeDeferKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "deferKeyword": Syntax(deferKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenDeferKeywordAndBody": unexpectedBetweenDeferKeywordAndBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "body": Syntax(body).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterBody": unexpectedAfterBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - DoStmtSyntax

public struct DoStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .doStmt else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `DoStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .doStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeDoKeyword: UnexpectedNodesSyntax? = nil,
    doKeyword: TokenSyntax = .keyword(.do),
    _ unexpectedBetweenDoKeywordAndBody: UnexpectedNodesSyntax? = nil,
    body: CodeBlockSyntax,
    _ unexpectedBetweenBodyAndCatchClauses: UnexpectedNodesSyntax? = nil,
    catchClauses: CatchClauseListSyntax? = nil,
    _ unexpectedAfterCatchClauses: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeDoKeyword, doKeyword, unexpectedBetweenDoKeywordAndBody, body, unexpectedBetweenBodyAndCatchClauses, catchClauses, unexpectedAfterCatchClauses))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeDoKeyword?.raw,
        doKeyword.raw,
        unexpectedBetweenDoKeywordAndBody?.raw,
        body.raw,
        unexpectedBetweenBodyAndCatchClauses?.raw,
        catchClauses?.raw,
        unexpectedAfterCatchClauses?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.doStmt, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeDoKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = DoStmtSyntax(data.replacingChild(at: 0, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var doKeyword: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = DoStmtSyntax(data.replacingChild(at: 1, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenDoKeywordAndBody: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = DoStmtSyntax(data.replacingChild(at: 2, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var body: CodeBlockSyntax {
    get {
      return CodeBlockSyntax(data.child(at: 3, parent: Syntax(self))!)
    }
    set(value) {
      self = DoStmtSyntax(data.replacingChild(at: 3, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenBodyAndCatchClauses: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 4, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = DoStmtSyntax(data.replacingChild(at: 4, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var catchClauses: CatchClauseListSyntax? {
    get {
      return data.child(at: 5, parent: Syntax(self)).map(CatchClauseListSyntax.init)
    }
    set(value) {
      self = DoStmtSyntax(data.replacingChild(at: 5, with: value?.raw, arena: SyntaxArena()))
    }
  }

  /// Adds the provided `CatchClause` to the node's `catchClauses`
  /// collection.
  /// - param element: The new `CatchClause` to add to the node's
  ///                  `catchClauses` collection.
  /// - returns: A copy of the receiver with the provided `CatchClause`
  ///            appended to its `catchClauses` collection.
  public func addCatchClause(_ element: CatchClauseSyntax) -> DoStmtSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[5] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.catchClauseList,
        from: [element.raw], arena: arena)
    }
    let newData = data.replacingChild(at: 5, with: collection, arena: arena)
    return DoStmtSyntax(newData)
  }

  public var unexpectedAfterCatchClauses: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 6, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = DoStmtSyntax(data.replacingChild(at: 6, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeDoKeyword,
      \Self.doKeyword,
      \Self.unexpectedBetweenDoKeywordAndBody,
      \Self.body,
      \Self.unexpectedBetweenBodyAndCatchClauses,
      \Self.catchClauses,
      \Self.unexpectedAfterCatchClauses,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return "body"
    case 4:
      return nil
    case 5:
      return nil
    case 6:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension DoStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeDoKeyword": unexpectedBeforeDoKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "doKeyword": Syntax(doKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenDoKeywordAndBody": unexpectedBetweenDoKeywordAndBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "body": Syntax(body).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenBodyAndCatchClauses": unexpectedBetweenBodyAndCatchClauses.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "catchClauses": catchClauses.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedAfterCatchClauses": unexpectedAfterCatchClauses.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - ExpressionStmtSyntax

public struct ExpressionStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .expressionStmt else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `ExpressionStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .expressionStmt)
    self._syntaxNode = Syntax(data)
  }

  public init<E: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeExpression: UnexpectedNodesSyntax? = nil,
    expression: E,
    _ unexpectedAfterExpression: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeExpression, expression, unexpectedAfterExpression))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeExpression?.raw,
        expression.raw,
        unexpectedAfterExpression?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.expressionStmt, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeExpression: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ExpressionStmtSyntax(data.replacingChild(at: 0, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var expression: ExprSyntax {
    get {
      return ExprSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = ExpressionStmtSyntax(data.replacingChild(at: 1, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedAfterExpression: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ExpressionStmtSyntax(data.replacingChild(at: 2, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeExpression,
      \Self.expression,
      \Self.unexpectedAfterExpression,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension ExpressionStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeExpression": unexpectedBeforeExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "expression": Syntax(expression).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterExpression": unexpectedAfterExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - FallthroughStmtSyntax

public struct FallthroughStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .fallthroughStmt else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `FallthroughStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .fallthroughStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeFallthroughKeyword: UnexpectedNodesSyntax? = nil,
    fallthroughKeyword: TokenSyntax = .keyword(.fallthrough),
    _ unexpectedAfterFallthroughKeyword: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeFallthroughKeyword, fallthroughKeyword, unexpectedAfterFallthroughKeyword))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeFallthroughKeyword?.raw,
        fallthroughKeyword.raw,
        unexpectedAfterFallthroughKeyword?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.fallthroughStmt, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeFallthroughKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = FallthroughStmtSyntax(data.replacingChild(at: 0, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var fallthroughKeyword: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = FallthroughStmtSyntax(data.replacingChild(at: 1, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedAfterFallthroughKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = FallthroughStmtSyntax(data.replacingChild(at: 2, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeFallthroughKeyword,
      \Self.fallthroughKeyword,
      \Self.unexpectedAfterFallthroughKeyword,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension FallthroughStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeFallthroughKeyword": unexpectedBeforeFallthroughKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "fallthroughKeyword": Syntax(fallthroughKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterFallthroughKeyword": unexpectedAfterFallthroughKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - ForInStmtSyntax

public struct ForInStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .forInStmt else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `ForInStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .forInStmt)
    self._syntaxNode = Syntax(data)
  }

  public init<P: PatternSyntaxProtocol, S: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeForKeyword: UnexpectedNodesSyntax? = nil,
    forKeyword: TokenSyntax = .keyword(.for),
    _ unexpectedBetweenForKeywordAndTryKeyword: UnexpectedNodesSyntax? = nil,
    tryKeyword: TokenSyntax? = nil,
    _ unexpectedBetweenTryKeywordAndAwaitKeyword: UnexpectedNodesSyntax? = nil,
    awaitKeyword: TokenSyntax? = nil,
    _ unexpectedBetweenAwaitKeywordAndCaseKeyword: UnexpectedNodesSyntax? = nil,
    caseKeyword: TokenSyntax? = nil,
    _ unexpectedBetweenCaseKeywordAndPattern: UnexpectedNodesSyntax? = nil,
    pattern: P,
    _ unexpectedBetweenPatternAndTypeAnnotation: UnexpectedNodesSyntax? = nil,
    typeAnnotation: TypeAnnotationSyntax? = nil,
    _ unexpectedBetweenTypeAnnotationAndInKeyword: UnexpectedNodesSyntax? = nil,
    inKeyword: TokenSyntax = .keyword(.in),
    _ unexpectedBetweenInKeywordAndSequenceExpr: UnexpectedNodesSyntax? = nil,
    sequenceExpr: S,
    _ unexpectedBetweenSequenceExprAndWhereClause: UnexpectedNodesSyntax? = nil,
    whereClause: WhereClauseSyntax? = nil,
    _ unexpectedBetweenWhereClauseAndBody: UnexpectedNodesSyntax? = nil,
    body: CodeBlockSyntax,
    _ unexpectedAfterBody: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeForKeyword, forKeyword, unexpectedBetweenForKeywordAndTryKeyword, tryKeyword, unexpectedBetweenTryKeywordAndAwaitKeyword, awaitKeyword, unexpectedBetweenAwaitKeywordAndCaseKeyword, caseKeyword, unexpectedBetweenCaseKeywordAndPattern, pattern, unexpectedBetweenPatternAndTypeAnnotation, typeAnnotation, unexpectedBetweenTypeAnnotationAndInKeyword, inKeyword, unexpectedBetweenInKeywordAndSequenceExpr, sequenceExpr, unexpectedBetweenSequenceExprAndWhereClause, whereClause, unexpectedBetweenWhereClauseAndBody, body, unexpectedAfterBody))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeForKeyword?.raw,
        forKeyword.raw,
        unexpectedBetweenForKeywordAndTryKeyword?.raw,
        tryKeyword?.raw,
        unexpectedBetweenTryKeywordAndAwaitKeyword?.raw,
        awaitKeyword?.raw,
        unexpectedBetweenAwaitKeywordAndCaseKeyword?.raw,
        caseKeyword?.raw,
        unexpectedBetweenCaseKeywordAndPattern?.raw,
        pattern.raw,
        unexpectedBetweenPatternAndTypeAnnotation?.raw,
        typeAnnotation?.raw,
        unexpectedBetweenTypeAnnotationAndInKeyword?.raw,
        inKeyword.raw,
        unexpectedBetweenInKeywordAndSequenceExpr?.raw,
        sequenceExpr.raw,
        unexpectedBetweenSequenceExprAndWhereClause?.raw,
        whereClause?.raw,
        unexpectedBetweenWhereClauseAndBody?.raw,
        body.raw,
        unexpectedAfterBody?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.forInStmt, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeForKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 0, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var forKeyword: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 1, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenForKeywordAndTryKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 2, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var tryKeyword: TokenSyntax? {
    get {
      return data.child(at: 3, parent: Syntax(self)).map(TokenSyntax.init)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 3, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenTryKeywordAndAwaitKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 4, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 4, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var awaitKeyword: TokenSyntax? {
    get {
      return data.child(at: 5, parent: Syntax(self)).map(TokenSyntax.init)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 5, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenAwaitKeywordAndCaseKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 6, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 6, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var caseKeyword: TokenSyntax? {
    get {
      return data.child(at: 7, parent: Syntax(self)).map(TokenSyntax.init)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 7, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenCaseKeywordAndPattern: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 8, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 8, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var pattern: PatternSyntax {
    get {
      return PatternSyntax(data.child(at: 9, parent: Syntax(self))!)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 9, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenPatternAndTypeAnnotation: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 10, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 10, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var typeAnnotation: TypeAnnotationSyntax? {
    get {
      return data.child(at: 11, parent: Syntax(self)).map(TypeAnnotationSyntax.init)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 11, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenTypeAnnotationAndInKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 12, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 12, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var inKeyword: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 13, parent: Syntax(self))!)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 13, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenInKeywordAndSequenceExpr: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 14, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 14, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var sequenceExpr: ExprSyntax {
    get {
      return ExprSyntax(data.child(at: 15, parent: Syntax(self))!)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 15, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenSequenceExprAndWhereClause: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 16, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 16, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var whereClause: WhereClauseSyntax? {
    get {
      return data.child(at: 17, parent: Syntax(self)).map(WhereClauseSyntax.init)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 17, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenWhereClauseAndBody: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 18, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 18, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var body: CodeBlockSyntax {
    get {
      return CodeBlockSyntax(data.child(at: 19, parent: Syntax(self))!)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 19, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedAfterBody: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 20, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ForInStmtSyntax(data.replacingChild(at: 20, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeForKeyword,
      \Self.forKeyword,
      \Self.unexpectedBetweenForKeywordAndTryKeyword,
      \Self.tryKeyword,
      \Self.unexpectedBetweenTryKeywordAndAwaitKeyword,
      \Self.awaitKeyword,
      \Self.unexpectedBetweenAwaitKeywordAndCaseKeyword,
      \Self.caseKeyword,
      \Self.unexpectedBetweenCaseKeywordAndPattern,
      \Self.pattern,
      \Self.unexpectedBetweenPatternAndTypeAnnotation,
      \Self.typeAnnotation,
      \Self.unexpectedBetweenTypeAnnotationAndInKeyword,
      \Self.inKeyword,
      \Self.unexpectedBetweenInKeywordAndSequenceExpr,
      \Self.sequenceExpr,
      \Self.unexpectedBetweenSequenceExprAndWhereClause,
      \Self.whereClause,
      \Self.unexpectedBetweenWhereClauseAndBody,
      \Self.body,
      \Self.unexpectedAfterBody,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    case 5:
      return nil
    case 6:
      return nil
    case 7:
      return nil
    case 8:
      return nil
    case 9:
      return nil
    case 10:
      return nil
    case 11:
      return nil
    case 12:
      return nil
    case 13:
      return nil
    case 14:
      return nil
    case 15:
      return nil
    case 16:
      return nil
    case 17:
      return nil
    case 18:
      return nil
    case 19:
      return "body"
    case 20:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension ForInStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeForKeyword": unexpectedBeforeForKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "forKeyword": Syntax(forKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenForKeywordAndTryKeyword": unexpectedBetweenForKeywordAndTryKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "tryKeyword": tryKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenTryKeywordAndAwaitKeyword": unexpectedBetweenTryKeywordAndAwaitKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "awaitKeyword": awaitKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenAwaitKeywordAndCaseKeyword": unexpectedBetweenAwaitKeywordAndCaseKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "caseKeyword": caseKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenCaseKeywordAndPattern": unexpectedBetweenCaseKeywordAndPattern.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "pattern": Syntax(pattern).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenPatternAndTypeAnnotation": unexpectedBetweenPatternAndTypeAnnotation.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "typeAnnotation": typeAnnotation.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenTypeAnnotationAndInKeyword": unexpectedBetweenTypeAnnotationAndInKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "inKeyword": Syntax(inKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenInKeywordAndSequenceExpr": unexpectedBetweenInKeywordAndSequenceExpr.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "sequenceExpr": Syntax(sequenceExpr).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenSequenceExprAndWhereClause": unexpectedBetweenSequenceExprAndWhereClause.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "whereClause": whereClause.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenWhereClauseAndBody": unexpectedBetweenWhereClauseAndBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "body": Syntax(body).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterBody": unexpectedAfterBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - GuardStmtSyntax

public struct GuardStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .guardStmt else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `GuardStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .guardStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeGuardKeyword: UnexpectedNodesSyntax? = nil,
    guardKeyword: TokenSyntax = .keyword(.guard),
    _ unexpectedBetweenGuardKeywordAndConditions: UnexpectedNodesSyntax? = nil,
    conditions: ConditionElementListSyntax,
    _ unexpectedBetweenConditionsAndElseKeyword: UnexpectedNodesSyntax? = nil,
    elseKeyword: TokenSyntax = .keyword(.else),
    _ unexpectedBetweenElseKeywordAndBody: UnexpectedNodesSyntax? = nil,
    body: CodeBlockSyntax,
    _ unexpectedAfterBody: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeGuardKeyword, guardKeyword, unexpectedBetweenGuardKeywordAndConditions, conditions, unexpectedBetweenConditionsAndElseKeyword, elseKeyword, unexpectedBetweenElseKeywordAndBody, body, unexpectedAfterBody))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeGuardKeyword?.raw,
        guardKeyword.raw,
        unexpectedBetweenGuardKeywordAndConditions?.raw,
        conditions.raw,
        unexpectedBetweenConditionsAndElseKeyword?.raw,
        elseKeyword.raw,
        unexpectedBetweenElseKeywordAndBody?.raw,
        body.raw,
        unexpectedAfterBody?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.guardStmt, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeGuardKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = GuardStmtSyntax(data.replacingChild(at: 0, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var guardKeyword: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = GuardStmtSyntax(data.replacingChild(at: 1, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenGuardKeywordAndConditions: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = GuardStmtSyntax(data.replacingChild(at: 2, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var conditions: ConditionElementListSyntax {
    get {
      return ConditionElementListSyntax(data.child(at: 3, parent: Syntax(self))!)
    }
    set(value) {
      self = GuardStmtSyntax(data.replacingChild(at: 3, with: value.raw, arena: SyntaxArena()))
    }
  }

  /// Adds the provided `Condition` to the node's `conditions`
  /// collection.
  /// - param element: The new `Condition` to add to the node's
  ///                  `conditions` collection.
  /// - returns: A copy of the receiver with the provided `Condition`
  ///            appended to its `conditions` collection.
  public func addCondition(_ element: ConditionElementSyntax) -> GuardStmtSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[3] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.conditionElementList,
        from: [element.raw], arena: arena)
    }
    let newData = data.replacingChild(at: 3, with: collection, arena: arena)
    return GuardStmtSyntax(newData)
  }

  public var unexpectedBetweenConditionsAndElseKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 4, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = GuardStmtSyntax(data.replacingChild(at: 4, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var elseKeyword: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 5, parent: Syntax(self))!)
    }
    set(value) {
      self = GuardStmtSyntax(data.replacingChild(at: 5, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenElseKeywordAndBody: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 6, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = GuardStmtSyntax(data.replacingChild(at: 6, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var body: CodeBlockSyntax {
    get {
      return CodeBlockSyntax(data.child(at: 7, parent: Syntax(self))!)
    }
    set(value) {
      self = GuardStmtSyntax(data.replacingChild(at: 7, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedAfterBody: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 8, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = GuardStmtSyntax(data.replacingChild(at: 8, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeGuardKeyword,
      \Self.guardKeyword,
      \Self.unexpectedBetweenGuardKeywordAndConditions,
      \Self.conditions,
      \Self.unexpectedBetweenConditionsAndElseKeyword,
      \Self.elseKeyword,
      \Self.unexpectedBetweenElseKeywordAndBody,
      \Self.body,
      \Self.unexpectedAfterBody,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return "condition"
    case 4:
      return nil
    case 5:
      return nil
    case 6:
      return nil
    case 7:
      return "body"
    case 8:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension GuardStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeGuardKeyword": unexpectedBeforeGuardKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "guardKeyword": Syntax(guardKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenGuardKeywordAndConditions": unexpectedBetweenGuardKeywordAndConditions.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "conditions": Syntax(conditions).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenConditionsAndElseKeyword": unexpectedBetweenConditionsAndElseKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "elseKeyword": Syntax(elseKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenElseKeywordAndBody": unexpectedBetweenElseKeywordAndBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "body": Syntax(body).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterBody": unexpectedAfterBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - LabeledStmtSyntax

public struct LabeledStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .labeledStmt else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `LabeledStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .labeledStmt)
    self._syntaxNode = Syntax(data)
  }

  public init<S: StmtSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeLabelName: UnexpectedNodesSyntax? = nil,
    labelName: TokenSyntax,
    _ unexpectedBetweenLabelNameAndLabelColon: UnexpectedNodesSyntax? = nil,
    labelColon: TokenSyntax = .colonToken(),
    _ unexpectedBetweenLabelColonAndStatement: UnexpectedNodesSyntax? = nil,
    statement: S,
    _ unexpectedAfterStatement: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeLabelName, labelName, unexpectedBetweenLabelNameAndLabelColon, labelColon, unexpectedBetweenLabelColonAndStatement, statement, unexpectedAfterStatement))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeLabelName?.raw,
        labelName.raw,
        unexpectedBetweenLabelNameAndLabelColon?.raw,
        labelColon.raw,
        unexpectedBetweenLabelColonAndStatement?.raw,
        statement.raw,
        unexpectedAfterStatement?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.labeledStmt, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeLabelName: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = LabeledStmtSyntax(data.replacingChild(at: 0, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var labelName: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = LabeledStmtSyntax(data.replacingChild(at: 1, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenLabelNameAndLabelColon: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = LabeledStmtSyntax(data.replacingChild(at: 2, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var labelColon: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 3, parent: Syntax(self))!)
    }
    set(value) {
      self = LabeledStmtSyntax(data.replacingChild(at: 3, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenLabelColonAndStatement: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 4, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = LabeledStmtSyntax(data.replacingChild(at: 4, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var statement: StmtSyntax {
    get {
      return StmtSyntax(data.child(at: 5, parent: Syntax(self))!)
    }
    set(value) {
      self = LabeledStmtSyntax(data.replacingChild(at: 5, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedAfterStatement: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 6, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = LabeledStmtSyntax(data.replacingChild(at: 6, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeLabelName,
      \Self.labelName,
      \Self.unexpectedBetweenLabelNameAndLabelColon,
      \Self.labelColon,
      \Self.unexpectedBetweenLabelColonAndStatement,
      \Self.statement,
      \Self.unexpectedAfterStatement,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return "label name"
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    case 5:
      return nil
    case 6:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension LabeledStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeLabelName": unexpectedBeforeLabelName.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "labelName": Syntax(labelName).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenLabelNameAndLabelColon": unexpectedBetweenLabelNameAndLabelColon.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "labelColon": Syntax(labelColon).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenLabelColonAndStatement": unexpectedBetweenLabelColonAndStatement.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "statement": Syntax(statement).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterStatement": unexpectedAfterStatement.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - MissingStmtSyntax

public struct MissingStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .missingStmt else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `MissingStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .missingStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpected: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpected))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpected?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.missingStmt, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpected: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = MissingStmtSyntax(data.replacingChild(at: 0, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpected,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension MissingStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpected": unexpected.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - RepeatWhileStmtSyntax

public struct RepeatWhileStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .repeatWhileStmt else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `RepeatWhileStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .repeatWhileStmt)
    self._syntaxNode = Syntax(data)
  }

  public init<C: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeRepeatKeyword: UnexpectedNodesSyntax? = nil,
    repeatKeyword: TokenSyntax = .keyword(.repeat),
    _ unexpectedBetweenRepeatKeywordAndBody: UnexpectedNodesSyntax? = nil,
    body: CodeBlockSyntax,
    _ unexpectedBetweenBodyAndWhileKeyword: UnexpectedNodesSyntax? = nil,
    whileKeyword: TokenSyntax = .keyword(.while),
    _ unexpectedBetweenWhileKeywordAndCondition: UnexpectedNodesSyntax? = nil,
    condition: C,
    _ unexpectedAfterCondition: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeRepeatKeyword, repeatKeyword, unexpectedBetweenRepeatKeywordAndBody, body, unexpectedBetweenBodyAndWhileKeyword, whileKeyword, unexpectedBetweenWhileKeywordAndCondition, condition, unexpectedAfterCondition))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeRepeatKeyword?.raw,
        repeatKeyword.raw,
        unexpectedBetweenRepeatKeywordAndBody?.raw,
        body.raw,
        unexpectedBetweenBodyAndWhileKeyword?.raw,
        whileKeyword.raw,
        unexpectedBetweenWhileKeywordAndCondition?.raw,
        condition.raw,
        unexpectedAfterCondition?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.repeatWhileStmt, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeRepeatKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = RepeatWhileStmtSyntax(data.replacingChild(at: 0, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var repeatKeyword: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = RepeatWhileStmtSyntax(data.replacingChild(at: 1, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenRepeatKeywordAndBody: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = RepeatWhileStmtSyntax(data.replacingChild(at: 2, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var body: CodeBlockSyntax {
    get {
      return CodeBlockSyntax(data.child(at: 3, parent: Syntax(self))!)
    }
    set(value) {
      self = RepeatWhileStmtSyntax(data.replacingChild(at: 3, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenBodyAndWhileKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 4, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = RepeatWhileStmtSyntax(data.replacingChild(at: 4, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var whileKeyword: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 5, parent: Syntax(self))!)
    }
    set(value) {
      self = RepeatWhileStmtSyntax(data.replacingChild(at: 5, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenWhileKeywordAndCondition: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 6, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = RepeatWhileStmtSyntax(data.replacingChild(at: 6, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var condition: ExprSyntax {
    get {
      return ExprSyntax(data.child(at: 7, parent: Syntax(self))!)
    }
    set(value) {
      self = RepeatWhileStmtSyntax(data.replacingChild(at: 7, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedAfterCondition: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 8, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = RepeatWhileStmtSyntax(data.replacingChild(at: 8, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeRepeatKeyword,
      \Self.repeatKeyword,
      \Self.unexpectedBetweenRepeatKeywordAndBody,
      \Self.body,
      \Self.unexpectedBetweenBodyAndWhileKeyword,
      \Self.whileKeyword,
      \Self.unexpectedBetweenWhileKeywordAndCondition,
      \Self.condition,
      \Self.unexpectedAfterCondition,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return "body"
    case 4:
      return nil
    case 5:
      return nil
    case 6:
      return nil
    case 7:
      return "condition"
    case 8:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension RepeatWhileStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeRepeatKeyword": unexpectedBeforeRepeatKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "repeatKeyword": Syntax(repeatKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenRepeatKeywordAndBody": unexpectedBetweenRepeatKeywordAndBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "body": Syntax(body).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenBodyAndWhileKeyword": unexpectedBetweenBodyAndWhileKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "whileKeyword": Syntax(whileKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenWhileKeywordAndCondition": unexpectedBetweenWhileKeywordAndCondition.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "condition": Syntax(condition).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterCondition": unexpectedAfterCondition.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - ReturnStmtSyntax

public struct ReturnStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .returnStmt else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `ReturnStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .returnStmt)
    self._syntaxNode = Syntax(data)
  }

  public init<E: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeReturnKeyword: UnexpectedNodesSyntax? = nil,
    returnKeyword: TokenSyntax = .keyword(.return),
    _ unexpectedBetweenReturnKeywordAndExpression: UnexpectedNodesSyntax? = nil,
    expression: E? = nil,
    _ unexpectedAfterExpression: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeReturnKeyword, returnKeyword, unexpectedBetweenReturnKeywordAndExpression, expression, unexpectedAfterExpression))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeReturnKeyword?.raw,
        returnKeyword.raw,
        unexpectedBetweenReturnKeywordAndExpression?.raw,
        expression?.raw,
        unexpectedAfterExpression?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.returnStmt, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  /// This initializer exists solely because Swift 5.6 does not support
  /// `Optional<ConcreteType>.none` as a default value of a generic parameter.
  /// The above initializer thus defaults to `nil` instead, but that means it
  /// is not actually callable when either not passing the defaulted parameter,
  /// or passing `nil`.
  ///
  /// Hack around that limitation using this initializer, which takes a
  /// `Missing*` syntax node instead. `Missing*` is used over the base type as
  /// the base type would allow implicit conversion from a string literal,
  /// which the above initializer doesn't support.
  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeReturnKeyword: UnexpectedNodesSyntax? = nil,
    returnKeyword: TokenSyntax = .keyword(.return),
    _ unexpectedBetweenReturnKeywordAndExpression: UnexpectedNodesSyntax? = nil,
    expression: MissingExprSyntax? = nil,
    _ unexpectedAfterExpression: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    self.init(
      leadingTrivia: leadingTrivia,
      unexpectedBeforeReturnKeyword,
      returnKeyword: returnKeyword,
      unexpectedBetweenReturnKeywordAndExpression,
      expression: Optional<ExprSyntax>.none,
      unexpectedAfterExpression,
      trailingTrivia: trailingTrivia
    )
  }

  public var unexpectedBeforeReturnKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ReturnStmtSyntax(data.replacingChild(at: 0, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var returnKeyword: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = ReturnStmtSyntax(data.replacingChild(at: 1, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenReturnKeywordAndExpression: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ReturnStmtSyntax(data.replacingChild(at: 2, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var expression: ExprSyntax? {
    get {
      return data.child(at: 3, parent: Syntax(self)).map(ExprSyntax.init)
    }
    set(value) {
      self = ReturnStmtSyntax(data.replacingChild(at: 3, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedAfterExpression: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 4, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ReturnStmtSyntax(data.replacingChild(at: 4, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeReturnKeyword,
      \Self.returnKeyword,
      \Self.unexpectedBetweenReturnKeywordAndExpression,
      \Self.expression,
      \Self.unexpectedAfterExpression,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension ReturnStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeReturnKeyword": unexpectedBeforeReturnKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "returnKeyword": Syntax(returnKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenReturnKeywordAndExpression": unexpectedBetweenReturnKeywordAndExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "expression": expression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedAfterExpression": unexpectedAfterExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - ThrowStmtSyntax

public struct ThrowStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .throwStmt else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `ThrowStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .throwStmt)
    self._syntaxNode = Syntax(data)
  }

  public init<E: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeThrowKeyword: UnexpectedNodesSyntax? = nil,
    throwKeyword: TokenSyntax = .keyword(.throw),
    _ unexpectedBetweenThrowKeywordAndExpression: UnexpectedNodesSyntax? = nil,
    expression: E,
    _ unexpectedAfterExpression: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeThrowKeyword, throwKeyword, unexpectedBetweenThrowKeywordAndExpression, expression, unexpectedAfterExpression))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeThrowKeyword?.raw,
        throwKeyword.raw,
        unexpectedBetweenThrowKeywordAndExpression?.raw,
        expression.raw,
        unexpectedAfterExpression?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.throwStmt, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeThrowKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ThrowStmtSyntax(data.replacingChild(at: 0, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var throwKeyword: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = ThrowStmtSyntax(data.replacingChild(at: 1, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenThrowKeywordAndExpression: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ThrowStmtSyntax(data.replacingChild(at: 2, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var expression: ExprSyntax {
    get {
      return ExprSyntax(data.child(at: 3, parent: Syntax(self))!)
    }
    set(value) {
      self = ThrowStmtSyntax(data.replacingChild(at: 3, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedAfterExpression: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 4, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ThrowStmtSyntax(data.replacingChild(at: 4, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeThrowKeyword,
      \Self.throwKeyword,
      \Self.unexpectedBetweenThrowKeywordAndExpression,
      \Self.expression,
      \Self.unexpectedAfterExpression,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension ThrowStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeThrowKeyword": unexpectedBeforeThrowKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "throwKeyword": Syntax(throwKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenThrowKeywordAndExpression": unexpectedBetweenThrowKeywordAndExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "expression": Syntax(expression).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterExpression": unexpectedAfterExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - WhileStmtSyntax

public struct WhileStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .whileStmt else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `WhileStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .whileStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeWhileKeyword: UnexpectedNodesSyntax? = nil,
    whileKeyword: TokenSyntax = .keyword(.while),
    _ unexpectedBetweenWhileKeywordAndConditions: UnexpectedNodesSyntax? = nil,
    conditions: ConditionElementListSyntax,
    _ unexpectedBetweenConditionsAndBody: UnexpectedNodesSyntax? = nil,
    body: CodeBlockSyntax,
    _ unexpectedAfterBody: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeWhileKeyword, whileKeyword, unexpectedBetweenWhileKeywordAndConditions, conditions, unexpectedBetweenConditionsAndBody, body, unexpectedAfterBody))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeWhileKeyword?.raw,
        whileKeyword.raw,
        unexpectedBetweenWhileKeywordAndConditions?.raw,
        conditions.raw,
        unexpectedBetweenConditionsAndBody?.raw,
        body.raw,
        unexpectedAfterBody?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.whileStmt, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeWhileKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = WhileStmtSyntax(data.replacingChild(at: 0, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var whileKeyword: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = WhileStmtSyntax(data.replacingChild(at: 1, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenWhileKeywordAndConditions: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = WhileStmtSyntax(data.replacingChild(at: 2, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var conditions: ConditionElementListSyntax {
    get {
      return ConditionElementListSyntax(data.child(at: 3, parent: Syntax(self))!)
    }
    set(value) {
      self = WhileStmtSyntax(data.replacingChild(at: 3, with: value.raw, arena: SyntaxArena()))
    }
  }

  /// Adds the provided `Condition` to the node's `conditions`
  /// collection.
  /// - param element: The new `Condition` to add to the node's
  ///                  `conditions` collection.
  /// - returns: A copy of the receiver with the provided `Condition`
  ///            appended to its `conditions` collection.
  public func addCondition(_ element: ConditionElementSyntax) -> WhileStmtSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[3] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.conditionElementList,
        from: [element.raw], arena: arena)
    }
    let newData = data.replacingChild(at: 3, with: collection, arena: arena)
    return WhileStmtSyntax(newData)
  }

  public var unexpectedBetweenConditionsAndBody: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 4, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = WhileStmtSyntax(data.replacingChild(at: 4, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var body: CodeBlockSyntax {
    get {
      return CodeBlockSyntax(data.child(at: 5, parent: Syntax(self))!)
    }
    set(value) {
      self = WhileStmtSyntax(data.replacingChild(at: 5, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedAfterBody: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 6, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = WhileStmtSyntax(data.replacingChild(at: 6, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeWhileKeyword,
      \Self.whileKeyword,
      \Self.unexpectedBetweenWhileKeywordAndConditions,
      \Self.conditions,
      \Self.unexpectedBetweenConditionsAndBody,
      \Self.body,
      \Self.unexpectedAfterBody,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    case 5:
      return nil
    case 6:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension WhileStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeWhileKeyword": unexpectedBeforeWhileKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "whileKeyword": Syntax(whileKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenWhileKeywordAndConditions": unexpectedBetweenWhileKeywordAndConditions.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "conditions": Syntax(conditions).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenConditionsAndBody": unexpectedBetweenConditionsAndBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "body": Syntax(body).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterBody": unexpectedAfterBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - YieldStmtSyntax

public struct YieldStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  public enum Yields: SyntaxChildChoices {
    case `yieldList`(YieldListSyntax)
    case `simpleYield`(ExprSyntax)
    public var _syntaxNode: Syntax {
      switch self {
      case .yieldList(let node): return node._syntaxNode
      case .simpleYield(let node): return node._syntaxNode
      }
    }
    init(_ data: SyntaxData) { self.init(Syntax(data))! }
    public init(_ node: YieldListSyntax) {
      self = .yieldList(node)
    }
    public init<Node: ExprSyntaxProtocol>(_ node: Node) {
      self = .simpleYield(ExprSyntax(node))
    }
    public init?<S: SyntaxProtocol>(_ node: S) {
      if let node = node.as(YieldListSyntax.self) {
        self = .yieldList(node)
        return
      }
      if let node = node.as(ExprSyntax.self) {
        self = .simpleYield(node)
        return
      }
      return nil
    }

    public static var structure: SyntaxNodeStructure {
      return .choices([
        .node(YieldListSyntax.self),
        .node(ExprSyntax.self),
      ])
    }
  }

  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .yieldStmt else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `YieldStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .yieldStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeYieldKeyword: UnexpectedNodesSyntax? = nil,
    yieldKeyword: TokenSyntax = .keyword(.yield),
    _ unexpectedBetweenYieldKeywordAndYields: UnexpectedNodesSyntax? = nil,
    yields: Yields,
    _ unexpectedAfterYields: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeYieldKeyword, yieldKeyword, unexpectedBetweenYieldKeywordAndYields, yields, unexpectedAfterYields))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeYieldKeyword?.raw,
        yieldKeyword.raw,
        unexpectedBetweenYieldKeywordAndYields?.raw,
        yields.raw,
        unexpectedAfterYields?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.yieldStmt, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeYieldKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = YieldStmtSyntax(data.replacingChild(at: 0, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var yieldKeyword: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = YieldStmtSyntax(data.replacingChild(at: 1, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedBetweenYieldKeywordAndYields: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = YieldStmtSyntax(data.replacingChild(at: 2, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public var yields: Yields {
    get {
      return Yields(data.child(at: 3, parent: Syntax(self))!)
    }
    set(value) {
      self = YieldStmtSyntax(data.replacingChild(at: 3, with: value.raw, arena: SyntaxArena()))
    }
  }

  public var unexpectedAfterYields: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 4, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = YieldStmtSyntax(data.replacingChild(at: 4, with: value?.raw, arena: SyntaxArena()))
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeYieldKeyword,
      \Self.yieldKeyword,
      \Self.unexpectedBetweenYieldKeywordAndYields,
      \Self.yields,
      \Self.unexpectedAfterYields,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension YieldStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeYieldKeyword": unexpectedBeforeYieldKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "yieldKeyword": Syntax(yieldKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenYieldKeywordAndYields": unexpectedBetweenYieldKeywordAndYields.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "yields": Syntax(yields).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterYields": unexpectedAfterYields.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

