#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D screenTexture;

uniform float invert;

void main()
{
//vec3 col = texture(screenTexture, TexCoords).rgb;
if (invert != 0)
FragColor = vec4(1 - vec3(texture(screenTexture, TexCoords)), 1.0);
else
FragColor = vec4(vec3(texture(screenTexture, TexCoords)), 1.0);

}

/*
void main()
{
//без эффекта
    vec3 col = texture(screenTexture, TexCoords).rgb;
    FragColor = vec4(col, 1.0);

//иверсия цвета
    //  FragColor = vec4(vec3(1.0 - texture(screenTexture, TexCoords)), 1.0);

//серый постэффект
    /*
    FragColor = texture(screenTexture, TexCoords);
    float average = 0.2126 * FragColor.r + 0.7152 * FragColor.g + 0.0722 * FragColor.b;
    FragColor = vec4(average, average, average, 1.0);
    */
//}
