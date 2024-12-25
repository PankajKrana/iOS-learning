//
//  Wobble Shader.metal
//  Explore Text Renderer
//
//  Created by Pankaj Kumar Rana on 12/20/24.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] float2 wobble(float2 position, float amplitutde) {
    return float2(position.x, position. y + amplitutde * sin(position.x));
}
