import Foundation
import UIKit

extension UIViewController {
  open func isPresentationGroupLead() -> Bool {
    return false
  }

  public var LeadPresentationGroup: UIViewController? {
    if isPresentationGroupLead() {
      return self
    }
    return presentingViewController?.LeadPresentationGroup
  }

  public func dismissPresentationGroup() {
    if !isPresentationGroupLead() {
      presentingViewController?.dismissPresentationGroup()
      return
    }

    if let snapshotView = UIApplication.shared.delegate?.window??.snapshotView(afterScreenUpdates: false) {
      view.addSubview(snapshotView)
      snapshotView.translatesAutoresizingMaskIntoConstraints = false
      snapshotView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
      snapshotView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
      snapshotView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
      snapshotView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    LeadPresentationGroup?.presentingViewController?.dismiss(animated: true)
  }
}
