//
//  MovieTableViewCell.swift
//  UI
//
//  Created by Jaewon Yun on 2023/05/30.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Domain
import SnapKit
import UIKit

final class MovieTableViewCell: UITableViewCell {
    
    let nameLabel: UILabel = {
        let label: UILabel = .init()
        label.font = .preferredFont(forTextStyle: .body)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(false, animated: false)
    }
    
    func setupSubviews() {
        self.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            make.directionalEdges.equalToSuperview().inset(8)
        }
    }
    
    func bind(movie: Movie) {
        nameLabel.text = movie.name
    }
    
}
