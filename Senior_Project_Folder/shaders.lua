
shader_greyscale = love.graphics.newShader[[
vec4 effect( vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords ){
	vec4 pixel = Texel(texture, texture_coords );//This is the current pixel color
	float grayscale = (pixel.r  + pixel.b + pixel.g) / 3.0;
	pixel.r = grayscale;
	pixel.b = grayscale;
	pixel.g = grayscale;
	return pixel;//Set the screen pixel to that color
}
]]

shader_gradient = love.graphics.newShader[[
extern number screenWidth;
	vec4 effect( vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords ){
	  vec4 pixel = Texel(texture, texture_coords );//This is the current pixel color
	  number average = (pixel.r+pixel.b+pixel.g)/3.0;
	  number factor = screen_coords.x/screenWidth;
	  pixel.r = pixel.r + (average-pixel.r) * factor;
	  pixel.g = pixel.g + (average-pixel.g) * factor;
	  pixel.b = pixel.b + (average-pixel.b) * factor;
	  return pixel;
	}
]]

shader_bloom = love.graphics.newShader[[
   //BlackBulletIV
   extern vec2 size = vec2(20,20);
   extern int samples = 2; // pixels per axis; higher = bigger glow, worse performance
   extern float quality = .5; // lower = smaller glow, better quality

   vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc)
   {
      vec4 src = Texel(tex, tc);
      vec4 sum = vec4(0);
      int diff = (samples - 1) / 2;
      vec2 sizeFactor = vec2(1) / size * quality;

      for (int x = -diff; x <= diff; x++)
      {
         for (int y = -diff; y <= diff; y++)
         {
            vec2 offset = vec2(x, y) * sizeFactor;
            sum += Texel(tex, tc + offset);
         }
      }

   return ((sum / (samples * samples)) + src) * color;
   }
]]

