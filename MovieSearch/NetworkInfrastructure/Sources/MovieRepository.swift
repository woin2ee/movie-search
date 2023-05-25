//
//  MovieRepository.swift
//  NetworkInfrastructure
//
//  Created by Jaewon Yun on 2023/05/24.
//

import Alamofire
import Domain
import Foundation
import RxAlamofire
import RxSwift

public struct MovieRepository: MovieRepositoryProtocol {
    
    public init() {}
    
    public func getMovies(by query: Domain.MovieSearchQuery) -> RxSwift.Observable<[Domain.Movie]> {
        let url: String = "http://kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieList.json"
        let parameters: Parameters = ["key": "052b9b9d43796f6a05992bf77113decb"]
        let responseSequence: Observable<MovieListResponse> = AF.rx.decodable(.get, url, parameters: parameters)
        let moviesSequence = responseSequence.map { response in
            return response.movieListResult.movieList.map { $0.toDomain() }
        }
        return moviesSequence
    }
    
}
