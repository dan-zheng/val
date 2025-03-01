/// A subscript call.
public struct SubscriptCallExpr: Expr {

  public static let kind = NodeKind.subscriptCallExpr

  /// The callee.
  public var callee: AnyExprID

  /// The arguments of the call.
  public var arguments: [CallArgument]

  public init(callee: AnyExprID, arguments: [CallArgument] = []) {
    self.callee = callee
    self.arguments = arguments
  }

}
