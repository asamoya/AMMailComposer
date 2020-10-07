//
//  Copyright © 2020 kaname ohara. All rights reserved.
//

//import Foundation
import MessageUI

public final class MailComposer: NSObject {

    // MARK: - singleton instance

    public static var shared = MailComposer()
    
    // MARK: - public functions
    
    /// send mail (present modal when 'Mail' app is ready, or send URL scheme when it's not)
    /// you must add 'mailto' value for LSApplicationQueriesSchemes key in information property list
    /// - Parameters:
    ///   - in: UIViewController
    ///   - mailAddress: mail address
    ///   - subject: subject
    ///   - body: body
    public func compose(in vc: UIViewController, to mailAddress: String, subject: String = "", body: String = "") {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients([mailAddress])
            mail.setSubject(subject)
            mail.setMessageBody(body, isHTML: false)
            vc.present(mail, animated: true)

        } else {
            // No 'Mail' app -> Send URL scheme to another one (eg.Gmail)
            let encodedParams = "subject=\(subject)&body=\(body)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
            let urlStr = "mailto:\(mailAddress)?\(encodedParams)"
            if let url = URL(string: urlStr) {
                if UIApplication.shared.canOpenURL(url) {
                    UIApplication.shared.open(url, options: [:]) {success in
                        if !success {
                            print("open(url) failed")
                        }
                    }
                } else {
                    print("canOpenURL() returns false")
                }
            }
        }
    }
}

// MARK: - MFMailComposeViewControllerDelegate

extension MailComposer: MFMailComposeViewControllerDelegate {
    
    public func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
}
