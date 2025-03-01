/// An explicit cast expression.
public struct CastExpr: Expr {

  public static let kind = NodeKind.castExpr

  /// The kind of a cast expression.
  public enum Kind: Codable {

    /// An upcast.
    case up

    /// An downcast.
    case down

    /// A built-in pointer conversion.
    ///
    /// - Note: built-in conversion expressions may only be used in the core library. The compiler
    ///   shall emit a warning if one is found outside of core library sources.
    case builtinPointerConversion

  }

  /// The left operand.
  public var left: AnyExprID

  /// The type to which the left operand is being converted.
  public var right: AnyTypeExprID

  /// The kind of the cast.
  public var kind: Kind

  public init(left: AnyExprID, right: AnyTypeExprID, kind: Kind) {
    self.left = left
    self.right = right
    self.kind = kind
  }

}
