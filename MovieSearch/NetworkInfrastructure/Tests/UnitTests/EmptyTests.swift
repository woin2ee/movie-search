//
//  EmptyTests.swift
//  NetworkInfrastructure
//
//  Created by Jaewon Yun on 2023/05/24.
//

@testable import NetworkInfrastructure
import Domain
import RxBlocking
import XCTest

final class EmptyTests: XCTestCase {
    
    var sut: MovieRepository!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = .init()
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    func test_() throws {
        // Arrange
        let query: MovieSearchQuery = .init(keyword: "xxxx")
        
        // Act
        let movies = try sut.getMovies(by: query).toBlocking().single()
        
        // Assert
        XCTAssertNotEqual(movies.count, 0)
    }
    
}
