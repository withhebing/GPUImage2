public class HighlightAndShadowTint: BasicOperation {
    public var shadowTintIntensity:Float = 0.0 { didSet { uniformSettings["shadowTintIntensity"] = shadowTintIntensity } }
    public var highlightTintIntensity:Float = 0.0 { didSet { uniformSettings["highlightTintIntensity"] = highlightTintIntensity } }
    public var shadowTintColor:Color = Color.Red { didSet { uniformSettings["shadowTintColor"] = shadowTintColor } }
    public var highlightTintColor:Color = Color.Blue { didSet { uniformSettings["highlightTintColor"] = highlightTintColor } }
    
    public init() {
        super.init(fragmentShader:HighlightShadowTintFragmentShader, numberOfInputs:1)
        
        ({shadowTintIntensity = 0.0})()
        ({highlightTintIntensity = 0.0})()
        ({shadowTintColor = Color.Red})()
        ({highlightTintColor = Color.Blue})()
    }
}