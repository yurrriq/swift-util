
import Foundation

extension NSAttributedString {
  func join(sequence: [NSAttributedString]) -> NSAttributedString {
    if sequence.isEmpty { return NSAttributedString(string: "") }

    var acc = NSMutableAttributedString(attributedString: sequence[0])
    for elem in dropFirst(sequence) {
      acc.appendAttributedString(self)
      acc.appendAttributedString(elem)
    }
    return NSAttributedString(attributedString: acc)
  }
}
