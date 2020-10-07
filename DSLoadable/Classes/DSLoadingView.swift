//Copyright (c) 2018 MaherKSantina <maher.santina90@gmail.com>
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in
//all copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//THE SOFTWARE.

#if canImport(UIKit)
import UIKit

open class DSLoadingView: UIView {

    public var indicatorView: UIActivityIndicatorView!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        addIndicatorView()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        addIndicatorView()
    }
    
    private func addIndicatorView() {
        backgroundColor = UIColor.black.withAlphaComponent(0.33)
        
        indicatorView = UIActivityIndicatorView()
        indicatorView.translatesAutoresizingMaskIntoConstraints = false
        indicatorView.style = .white
        indicatorView.color = .red
        
        let constraints = [
            indicatorView.topAnchor.constraint(equalTo: topAnchor),
            indicatorView.leadingAnchor.constraint(equalTo: leadingAnchor),
            indicatorView.centerXAnchor.constraint(equalTo: centerXAnchor),
            indicatorView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]
        
        addSubview(indicatorView)
        constraints.forEach({ $0.isActive = true })
        indicatorView.startAnimating()
    }
}
#endif
