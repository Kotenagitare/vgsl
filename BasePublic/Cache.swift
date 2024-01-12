// Copyright 2018 Yandex LLC. All rights reserved.

import Foundation

public protocol Cache {
  func retriveResource(forKey: String, completion: @escaping (Result<Data, Error>) -> Void)
  func storeResource(data: Data, forKey: String, completion: ((Result<Void, Error>) -> Void)?)
  func getResourceURL(forKey: String) -> URL?
}

extension Cache {
  func storeResource(data: Data, forKey key: String) {
    storeResource(data: data, forKey: key, completion: nil)
  }
}
