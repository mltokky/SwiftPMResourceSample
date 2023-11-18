import Foundation

@main
public struct SwiftPMResourceSample {
    public private(set) var text = "Hello, World!"

    public static func main() throws {
        guard let fileUrl = Bundle.module.url(forResource: "Data/hello_world", withExtension: "txt"),
              let data = try? String(contentsOf: fileUrl) else {
            print("Error: file not found")
            exit(1)
        }
        print(data)
        print("-----")
        
        guard let fileUrl2 = Bundle.module.url(forResource: "Data/self_introduction", withExtension: "json"),
              let data2 = try? String(contentsOf: fileUrl2) else {
            print("Error: file not found2")
            exit(1)
        }
        print(data2)
        print("-----")
        
        guard let fileUrl3 = Bundle.module.url(forResource: "Data/README", withExtension: "md"),
              let data3 = try? String(contentsOf: fileUrl3) else {
            print("Error: file not found3")
            exit(1)
        }
        print(data3)
        print("-----")
        
        guard let fileUrl4 = Bundle.module.url(forResource: "hello_world2", withExtension: "txt"),
              let data4 = try? String(contentsOf: fileUrl4) else {
            print("Error: file not found4")
            exit(1)
        }
        print(data4)
    }
}
