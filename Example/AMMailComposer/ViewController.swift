//
//  Copyright (c) 2020 kaname ohara. All rights reserved.
//

import UIKit
import AMMailComposer

final class ViewController: UIViewController {

    @IBAction private func onClickComposeItem(_ sender: Any) {
        // Note: remember add 'mailto' value to LSApplicationQueriesSchemes key in information property list
        MailComposer.shared.compose(in: self, to: "kaname.ohara@gmail.com",
                                    subject: "I have one Question",
                                    body: "This is mail body.\r\n\r\nThank you.")
    }
}
