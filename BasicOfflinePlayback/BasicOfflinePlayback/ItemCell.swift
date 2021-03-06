//
// Bitmovin Player iOS SDK
// Copyright (C) 2017, Bitmovin GmbH, All Rights Reserved
//
// This source code and its use and distribution, is subject to the terms
// and conditions of the applicable license agreement.
//

import UIKit
import BitmovinPlayer

final class ItemCell: UITableViewCell {

    static let identifier = "ItemCell"

    var item: SourceItem? {
        didSet {
            textLabel?.text = item?.itemTitle
            detailTextLabel?.text = item?.itemDescription
        }
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        textLabel?.text = ""
        detailTextLabel?.text = ""
    }
}
