import Cryptor

// MARK: - Project

func main() {
    let apiService: APIServiceManager = APIServiceManagerImpl()

    let request = FetchMockDataRequest()
    apiService.perform(request: request) { result in
        if case let .failure(error) = result {
            print(error)
        }
    }
}

