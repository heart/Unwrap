extension Optional {
  @inline(__always)
    public func unwrap(_ f:(Wrapped)->Void ){
    switch self {
    case .some(let value):
      f(value)
    case .none:
        break
    }
  }
}
