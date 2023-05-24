//
//  MovieSearchViewController.swift
//  UI
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import UIKit

public final class MovieSearchViewController: BaseViewController {
    
    let viewModel: MovieSearchViewModel
    
    init(viewModel: MovieSearchViewModel) {
        self.viewModel = viewModel
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
    }
}
