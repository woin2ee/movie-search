//
//  MovieSearchViewController.swift
//  UI
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import RxSwift
import SnapKit
import UIKit

public final class MovieSearchViewController: BaseViewController {
    
    let viewModel: MovieSearchViewModel
    let disposeBag: DisposeBag = .init()
    
    let searchTextField: UITextField = {
        let textField: UITextField = .init()
        textField.borderStyle = .roundedRect
        textField.placeholder = "검색"
        return textField
    }()
    
    let movieTableView: UITableView = {
        let tableView: UITableView = .init()
        tableView.register(MovieTableViewCell.self, forCellReuseIdentifier: MovieTableViewCell.reuseIdentifier)
        return tableView
    }()
    
    public init(viewModel: MovieSearchViewModel) {
        self.viewModel = viewModel
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        bindViewModel()
        setupSubviews()
    }
    
    func bindViewModel() {
        let input: MovieSearchViewModel.Input = .init(
            searchKeyword: searchTextField.rx.text.orEmpty.asDriver()
        )
        let output = viewModel.transform(input: input)
        output.searchResults
            .skip(1)
            .drive(movieTableView.rx.items(cellIdentifier: MovieTableViewCell.reuseIdentifier, cellType: MovieTableViewCell.self)) { _, movie, cell in
                cell.bind(movie: movie)
            }
            .disposed(by: disposeBag)
    }
    
    func setupSubviews() {
        self.view.addSubview(searchTextField)
        searchTextField.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(20)
            make.top.equalTo(self.view.safeAreaLayoutGuide)
        }
        self.view.addSubview(movieTableView)
        movieTableView.snp.makeConstraints { make in
            make.top.equalTo(searchTextField.snp.bottom).offset(10)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
    
}
