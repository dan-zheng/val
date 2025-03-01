/// A name denoting an object.
public struct NameExpr: Expr {

  public static let kind = NodeKind.nameExpr

  public enum Domain: Equatable, Codable {

    /// No domain.
    case none

    /// Domain is implicit; the expression denotes a type member.
    case implicit

    /// Domain is a value expression or a type identifier.
    case expr(AnyExprID)

    /// Domain is a type typression.
    case type(AnyTypeExprID)

  }

  /// The domain of the name, if it is qualified.
  public var domain: Domain

  /// The name of the referred entity.
  public var name: SourceRepresentable<Name>

  /// The type and value arguments of the referred entity.
  public var arguments: [GenericArgument]

  public init(
    domain: Domain = .none,
    name: SourceRepresentable<Name>,
    arguments: [GenericArgument] = []
  ) {
    self.domain = domain
    self.name = name
    self.arguments = arguments
  }

}
