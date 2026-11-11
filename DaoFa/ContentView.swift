import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        config.preferences.javaScriptEnabled = true
        let webView = WKWebView(frame: .zero, configuration: config)
        webView.scrollView.bounces = false
        return webView
    }
    func updateUIView(_ webView: WKWebView, context: Context) {
        if webView.url == nil,
           let url = Bundle.main.url(forResource: "dao-fa-suan-ming", withExtension: "html") {
            webView.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        }
    }
}

struct ContentView: View {
    var body: some View {
        WebView()
            .ignoresSafeArea()
    }
}
