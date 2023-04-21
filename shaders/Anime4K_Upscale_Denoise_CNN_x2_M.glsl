// MIT License

// Copyright (c) 2019-2021 bloc97
// All rights reserved.

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

//!DESC Anime4K-v3.2-Upscale-Denoise-CNN-x2-(M)-Conv-4x3x3x3
//!HOOK MAIN
//!BIND MAIN
//!SAVE conv2d_tf
//!WIDTH MAIN.w
//!HEIGHT MAIN.h
//!COMPONENTS 4
//!WHEN OUTPUT.w MAIN.w / 1.200 > OUTPUT.h MAIN.h / 1.200 > *
#define go_0(x_off, y_off) (MAIN_texOff(vec2(x_off, y_off)))
vec4 hook() {
    vec4 result = mat4(-0.029052526, 0.059789784, -0.024398074, 0.06907132, 0.18920785, -0.12923062, 0.0766382, -0.12048348, -0.017786544, 0.06251133, -0.068393864, 0.056690093, 0.0, 0.0, 0.0, 0.0) * go_0(-1.0, -1.0);
    result += mat4(0.14032267, -0.077691495, -0.009036259, -0.13049065, 0.20954624, 0.023231741, -0.2759354, 0.49927905, 0.039609738, -0.092625424, 0.09426452, -0.2246486, 0.0, 0.0, 0.0, 0.0) * go_0(-1.0, 0.0);
    result += mat4(-0.023119625, 0.046549924, 0.073033765, 0.03727065, 0.04498207, 0.024455868, 0.17602317, -0.3150503, 0.019985953, 0.03670126, 0.0071220254, 0.107966185, 0.0, 0.0, 0.0, 0.0) * go_0(-1.0, 1.0);
    result += mat4(0.111121014, -0.084099665, 0.12595509, -0.048271902, -0.007799661, 0.04831373, 0.11868961, 0.11607051, 0.05169621, -0.050569464, 0.120362274, 0.034607537, 0.0, 0.0, 0.0, 0.0) * go_0(0.0, -1.0);
    result += mat4(-0.41167754, -0.44940078, 0.35485214, 0.58048695, -1.0151424, -0.70137614, 0.38405335, 0.37337455, -0.096364655, -0.14538667, 0.17917591, 0.32259464, 0.0, 0.0, 0.0, 0.0) * go_0(0.0, 0.0);
    result += mat4(0.06378494, -0.040756933, -0.4773648, -0.47702238, 0.1803328, -0.21388084, -0.5509359, -0.6491179, -0.048081584, -0.0025129975, -0.28561604, -0.22229671, 0.0, 0.0, 0.0, 0.0) * go_0(0.0, 1.0);
    result += mat4(-0.037024107, 0.016497454, -0.05315267, -0.023392007, 0.1840294, 0.12675077, 0.037417043, -0.022394283, -0.028192522, -0.016344562, -0.07269005, -0.04747136, 0.0, 0.0, 0.0, 0.0) * go_0(1.0, -1.0);
    result += mat4(0.039480202, 0.5577544, -0.117326505, 0.06622856, -0.038784727, 0.65673745, -0.109742545, 0.22294083, 0.00038519394, 0.24552485, -0.07008514, 0.00029412706, 0.0, 0.0, 0.0, 0.0) * go_0(1.0, 0.0);
    result += mat4(-0.009279719, -0.031882852, 0.14124188, -0.0759899, -0.024016602, 0.15252088, 0.13614258, -0.09961189, 0.05446014, -0.03827061, 0.11210173, -0.028823104, 0.0, 0.0, 0.0, 0.0) * go_0(1.0, 1.0);
    result += vec4(0.012836382, -0.0062823873, -0.03165346, -0.0017501811);
    return result;
}
//!DESC Anime4K-v3.2-Upscale-Denoise-CNN-x2-(M)-Conv-4x3x3x8
//!HOOK MAIN
//!BIND conv2d_tf
//!SAVE conv2d_1_tf
//!WIDTH conv2d_tf.w
//!HEIGHT conv2d_tf.h
//!COMPONENTS 4
//!WHEN OUTPUT.w MAIN.w / 1.200 > OUTPUT.h MAIN.h / 1.200 > *
#define go_0(x_off, y_off) (max((conv2d_tf_texOff(vec2(x_off, y_off))), 0.0))
#define go_1(x_off, y_off) (max(-(conv2d_tf_texOff(vec2(x_off, y_off))), 0.0))
vec4 hook() {
    vec4 result = mat4(-0.06215308, -0.054471835, 0.1285146, 0.037585296, -0.14467795, 0.0057610427, 0.006528968, 0.18607244, 0.03762581, -0.121003255, 0.0827445, 0.076479666, 0.07540097, 0.16371846, -0.18786757, -0.12048073) * go_0(-1.0, -1.0);
    result += mat4(-0.11520603, -0.22384967, 0.0970881, 0.045122143, -0.40358877, 0.12487416, -0.4489702, 0.04854906, -0.08240888, -0.0058777514, 0.19108902, 0.042189106, -0.07843178, 0.0012592699, -0.11303816, -0.1118517) * go_0(-1.0, 0.0);
    result += mat4(0.29387334, 0.08150406, -0.06009834, 0.07054583, -0.146034, 0.04053809, 0.23284695, -0.08233496, 0.0957811, 0.20221621, 0.13570721, -0.081069246, -0.031743366, -0.038912926, -0.059060514, 0.05190416) * go_0(-1.0, 1.0);
    result += mat4(0.18404631, -0.034244366, -0.13406059, 0.2242061, -0.23668705, -0.10359684, -0.09689738, -0.04932347, -0.0020525968, 0.15236467, -0.2634303, -0.029878438, 0.3283669, 0.09891668, -0.46656898, -0.03271751) * go_0(0.0, -1.0);
    result += mat4(-0.1824976, -1.0545974, 0.93027455, -0.13887188, 0.3128633, -0.2734884, -0.831517, -0.18065166, -0.2119423, 0.19241124, -0.13313763, -0.10523897, 0.2675327, -0.06853148, 0.007885104, 0.26000848) * go_0(0.0, 0.0);
    result += mat4(-0.18109167, -0.019768981, -0.14131357, -0.3181756, 0.22158594, 0.1431138, -0.12970252, -0.011459096, -0.03742945, 0.2316056, -0.054623842, -0.09360549, 0.10176328, -0.108150974, 0.122787155, 0.07614884) * go_0(0.0, 1.0);
    result += mat4(-0.02370754, -0.10264054, 0.030659392, 0.056694325, 0.034085, -0.0538203, 0.09111551, 0.0063995267, 0.0835243, -0.06623529, 0.20924146, 0.09457414, 0.27925664, 0.049511474, -0.22062886, 0.03312504) * go_0(1.0, -1.0);
    result += mat4(0.17009354, 0.34391564, -0.1680695, -0.051450633, -0.044037253, -0.1412577, 0.01097572, -0.049040757, 0.104024716, -0.34571946, 0.5213214, -0.17010914, -0.016452854, 0.3303069, -0.22249438, 0.23866816) * go_0(1.0, 0.0);
    result += mat4(0.20491506, 0.20098424, 0.015425732, -0.033999693, -0.0111842435, 0.09945295, -0.025766203, 0.17068656, 0.049262784, 0.0077788536, 0.068585835, 0.19229786, -0.013048818, 0.04877973, 0.024053875, -0.06846659) * go_0(1.0, 1.0);
    result += mat4(0.14208305, 0.09790381, -0.008420949, -0.016165754, 0.02445528, 0.08700781, 0.046639573, -0.22105917, -0.08529265, 0.06606378, 0.0947481, 0.08149193, -0.0959293, -0.037756894, -0.008136973, 0.046241503) * go_1(-1.0, -1.0);
    result += mat4(0.2577669, 0.13766493, 0.021107635, 0.018978242, 0.452542, 0.25566816, -0.68909633, 0.03804329, 0.06771752, 0.07894156, 0.22501312, -0.047511246, 0.00040517355, -0.0202232, -0.27541754, -0.040150844) * go_1(-1.0, 0.0);
    result += mat4(-0.30176973, -0.15739526, -0.038548045, -0.07003333, 0.32053417, 0.025467036, -0.044913124, 0.20454903, 0.12475206, -0.03966162, 0.07139637, 0.12101497, -0.10777517, -0.062379625, 0.06598757, -0.14795317) * go_1(-1.0, 1.0);
    result += mat4(0.12068516, 0.0026514034, -0.055378057, -0.0976728, 0.15887645, 0.15590422, 0.076294206, -0.15417404, -0.16548084, -0.18422292, -0.1670212, 0.041155312, -0.11765263, 0.16991171, -0.21535093, 0.01542368) * go_1(0.0, -1.0);
    result += mat4(-0.37845853, 0.5732961, 0.114283465, 0.14638355, -0.109194644, 0.087304994, -0.15938401, 0.58242995, -0.025850652, 0.02730721, -0.48582682, -0.2547883, 0.1899583, 0.24296008, -0.8162976, 0.018036429) * go_1(0.0, 0.0);
    result += mat4(0.1633212, -0.117295206, 0.021892091, 0.07762347, -0.09726402, -0.1364192, 0.10752197, 0.42020246, 0.06665656, -0.10822656, 0.1337331, 0.0552859, 0.04700212, 0.108017646, -0.2009353, -0.0435288) * go_1(0.0, 1.0);
    result += mat4(-0.045603696, 0.05774526, -0.0071174325, 0.24119262, -0.06899063, 0.016012343, 0.009982042, -0.19038968, -0.17796072, -0.12510185, 0.22739507, -0.1805478, -0.100294635, 0.017557602, 0.039842658, 0.13116726) * go_1(1.0, -1.0);
    result += mat4(0.0131523665, -0.20472725, 0.121814765, -0.17769355, 0.097669855, 0.09648846, -0.072887406, 0.22992326, -0.019087939, 0.35375193, -0.057155706, 0.17699116, 0.030690158, -0.423475, 0.03703492, -0.03429164) * go_1(1.0, 0.0);
    result += mat4(-0.12143413, -0.018402342, 0.04536776, -0.12743106, 0.03355068, -0.09694192, 0.09913357, -0.036602203, 0.11038047, 0.13236065, 0.12966877, -0.10163848, 0.0030612876, -0.116145626, 0.045318183, 0.11492169) * go_1(1.0, 1.0);
    result += vec4(0.05657016, -0.04848861, 0.10297782, -0.0076417355);
    return result;
}
//!DESC Anime4K-v3.2-Upscale-Denoise-CNN-x2-(M)-Conv-4x3x3x8
//!HOOK MAIN
//!BIND conv2d_1_tf
//!SAVE conv2d_2_tf
//!WIDTH conv2d_1_tf.w
//!HEIGHT conv2d_1_tf.h
//!COMPONENTS 4
//!WHEN OUTPUT.w MAIN.w / 1.200 > OUTPUT.h MAIN.h / 1.200 > *
#define go_0(x_off, y_off) (max((conv2d_1_tf_texOff(vec2(x_off, y_off))), 0.0))
#define go_1(x_off, y_off) (max(-(conv2d_1_tf_texOff(vec2(x_off, y_off))), 0.0))
vec4 hook() {
    vec4 result = mat4(-0.088122115, -0.009916053, -0.124469265, -0.032139737, -0.13709281, 0.09177288, -0.06794775, -0.03962873, 0.17613642, -0.11064388, 0.2531882, -0.3817648, -0.1172188, -0.042132895, -0.098772734, -0.114560865) * go_0(-1.0, -1.0);
    result += mat4(0.18876404, -0.14613804, 0.23869626, 0.06580185, -0.13533239, 0.25754455, -0.29734856, 0.028218834, -0.39304733, -0.14716247, 0.19408274, -0.18518063, -0.31482637, -0.1508887, -0.3841371, 0.021975968) * go_0(-1.0, 0.0);
    result += mat4(-0.22316615, -0.0923483, 0.16932568, -0.13138154, 0.139829, 0.010975908, -0.0587337, -0.054484393, -0.13758336, -0.030077504, -0.050642505, -0.14933856, -0.040563874, -0.030220931, 0.2867556, 0.17022403) * go_0(-1.0, 1.0);
    result += mat4(0.12611523, -0.07087836, 0.08281469, 0.024588918, -0.023549056, -0.13102995, 0.17571726, 0.0740372, -0.3167631, 0.17491543, 0.4459055, -0.4687942, -0.19755729, 0.03723031, -0.06757113, 0.03502462) * go_0(0.0, -1.0);
    result += mat4(0.12098187, 0.12341856, -0.061940372, 0.7251308, 0.055730965, -0.5169302, 0.37959704, -0.08753306, -0.45700142, -0.4960699, 0.1690022, -0.40233734, 0.0262836, -0.13345262, 0.11002605, -0.16773209) * go_0(0.0, 0.0);
    result += mat4(-0.20428565, 0.117523015, -0.044863444, -0.1770644, 0.22925, 0.029694336, -0.23891294, 0.039587863, -0.11235541, -0.23890465, 0.037618574, -0.039127905, 0.14058869, 0.020599412, -0.074353516, 0.12343045) * go_0(0.0, 1.0);
    result += mat4(-0.04680316, -0.049870726, 0.06975308, -0.21486782, -0.08177838, 0.09760846, -0.031408366, 0.13881667, -0.14650045, 0.29182404, -0.080848776, -0.25525567, 0.018876432, -0.015662232, -0.016014043, -0.08435915) * go_0(1.0, -1.0);
    result += mat4(-0.100864016, -0.24647528, -0.007994345, 0.13047779, 0.14746517, 0.25517163, 0.054900885, -0.07251866, -0.29500577, -0.03758923, 0.05514366, -0.058372885, -0.03055354, -0.062586576, 0.017739896, 0.08644674) * go_0(1.0, 0.0);
    result += mat4(-0.029502464, -0.08905223, 0.0047584837, -0.09646073, 0.044714086, 0.15522493, -0.070930906, -0.026954453, 0.057949875, -0.017211404, -0.00566463, -0.0050975676, 0.0050182147, -0.010722001, 0.011812942, -0.04698445) * go_0(1.0, 1.0);
    result += mat4(0.18863353, -0.11575336, 0.26541254, -0.15280409, 0.14376, -0.05783716, 0.08554402, 0.27605456, 0.004611954, 0.074173525, -0.07963756, 0.082979314, 0.099553905, -0.06539344, 0.4330784, 0.07996894) * go_1(-1.0, -1.0);
    result += mat4(-0.31001288, 0.035875235, 0.049856357, -0.09614268, 0.23397788, -0.12425775, 0.45108303, 0.27973723, 0.0753222, 0.11388394, -0.043821793, -0.05610102, -0.06536777, 0.009822641, 0.7956708, -0.05798737) * go_1(-1.0, 0.0);
    result += mat4(0.19827974, 0.010130333, -0.13153136, 0.11593003, -0.15762039, -0.0040722084, 0.20404483, 0.28999883, 0.08152756, 0.07773477, 0.019730574, 0.0123460535, -0.034676805, -0.19133334, 0.01860159, -0.12945038) * go_1(-1.0, 1.0);
    result += mat4(-0.1861255, 0.039945368, 0.28345293, -0.17425321, 0.36748698, 0.03729066, -0.35957313, 0.11234573, -0.07122196, 0.012845119, -0.09049443, 0.10106711, 0.07425845, -0.14626606, 0.46169114, -0.2652126) * go_1(0.0, -1.0);
    result += mat4(-0.6222811, -0.08538015, 0.023319554, -0.7206892, -0.33495513, 0.2960924, -0.033479776, -0.29255456, 0.29802337, 0.47570458, 0.012769826, 0.19874385, -0.25652033, -0.4018595, 0.3055839, 0.1881051) * go_1(0.0, 0.0);
    result += mat4(0.32152474, 0.0024920676, -0.113435976, 0.14440896, -0.287736, 0.0251382, 0.28160754, 0.02769615, 0.067614004, 0.0832741, -0.095353454, -0.19792004, -0.40394694, -0.24224225, 0.3224996, 0.030300485) * go_1(0.0, 1.0);
    result += mat4(0.0045148246, -0.04621849, -0.026470715, 0.0588576, 0.14559188, 0.037437905, -0.13778603, 0.08173416, 0.033548757, -0.015654223, 0.15016593, 0.07761835, -0.016546778, 0.02640291, 0.112717085, 0.020371364) * go_1(1.0, -1.0);
    result += mat4(0.114227325, -0.0405595, -0.11662477, 0.014747093, 0.11170598, 0.58740836, -0.27560827, -0.1848705, -0.02491223, -0.15605451, 0.0028677192, -0.11290364, -0.12331832, -0.3191161, 0.3505101, 0.15236251) * go_1(1.0, 0.0);
    result += mat4(0.21131381, 0.13965495, -0.103683874, 0.26049778, -0.010777816, 0.015093082, 0.13207617, 0.14064828, -0.007847294, 0.025702007, -0.082993574, -0.04923462, -0.052900862, -0.006775377, 0.1432969, 0.09598549) * go_1(1.0, 1.0);
    result += vec4(0.08015534, 0.10264796, -0.031173404, 0.21282151);
    return result;
}
//!DESC Anime4K-v3.2-Upscale-Denoise-CNN-x2-(M)-Conv-4x3x3x8
//!HOOK MAIN
//!BIND conv2d_2_tf
//!SAVE conv2d_3_tf
//!WIDTH conv2d_2_tf.w
//!HEIGHT conv2d_2_tf.h
//!COMPONENTS 4
//!WHEN OUTPUT.w MAIN.w / 1.200 > OUTPUT.h MAIN.h / 1.200 > *
#define go_0(x_off, y_off) (max((conv2d_2_tf_texOff(vec2(x_off, y_off))), 0.0))
#define go_1(x_off, y_off) (max(-(conv2d_2_tf_texOff(vec2(x_off, y_off))), 0.0))
vec4 hook() {
    vec4 result = mat4(-0.13262276, 0.18682314, -0.1433667, -0.0061677806, -0.15057871, -0.15389217, 0.40721065, -0.082456455, 0.028175479, -0.06136406, 0.13517159, -0.0066659097, -0.03311807, -0.056219388, 0.066265404, -0.017012158) * go_0(-1.0, -1.0);
    result += mat4(0.0652481, -0.02717338, -0.17586891, -0.1458622, 0.37166637, -0.13651049, -0.095090784, 0.1450258, -0.08856753, -0.029000161, -0.11024598, 0.14231622, 0.027118085, 0.060637098, -0.028174674, 0.020973917) * go_0(-1.0, 0.0);
    result += mat4(0.17137158, 0.015818363, -0.1761587, -0.07798954, -0.22039492, -0.08250406, 0.15350278, 0.05466543, 0.07231244, 0.124937475, -0.14530692, -0.036220204, -0.20202135, 0.16154502, -0.1472417, 0.045183204) * go_0(-1.0, 1.0);
    result += mat4(-0.06751513, 0.3630837, -0.23374555, -0.17641832, 0.23866339, -0.12625019, 0.14955078, 0.3757683, 0.25546572, -0.0009440543, -0.029705383, 0.12500505, 0.039303612, 0.02745342, 0.06280759, -0.027673393) * go_0(0.0, -1.0);
    result += mat4(-0.40253955, 0.5532656, 0.15580782, 0.23305601, 0.04307387, -0.37548792, 0.021682428, -0.14554474, -0.44655007, 0.12335231, 0.22693188, -0.19185324, -0.39905196, -0.36661598, 0.34626722, 0.3220371) * go_0(0.0, 0.0);
    result += mat4(0.13051705, -0.051269528, 0.027860573, 0.12866034, 0.095374286, 0.0072371624, 0.06641015, -0.040609945, 0.14411138, 0.03813084, 0.024812538, -0.069997884, -0.2398024, 0.16384888, 0.004522481, -0.2734798) * go_0(0.0, 1.0);
    result += mat4(-0.048976544, 0.36923414, -0.23769425, -0.02964149, 0.13426293, -0.070416726, -0.036279447, 0.21007125, -0.0062456504, 0.12307804, -0.18920022, 0.016429992, 0.091225415, -0.00714184, -0.079064, 0.050525308) * go_0(1.0, -1.0);
    result += mat4(0.007005748, -0.1929285, -0.27960134, -0.014070343, -0.012031938, -0.21320626, 0.22591045, 0.06750757, 0.038049847, -0.08933499, 0.15640227, 0.36653376, 0.11274315, 0.0015512784, -0.14319079, -0.41117874) * go_0(1.0, 0.0);
    result += mat4(0.039254356, 0.04123307, -0.14476523, 0.19676228, -0.1746638, 0.068685316, 0.19318552, -0.007086376, -0.08810745, 0.041937724, 0.1393943, 0.27539206, -0.08331265, 0.043064818, -0.02783017, -0.13006629) * go_0(1.0, 1.0);
    result += mat4(0.18761271, -0.009960496, -0.18572417, 0.010640895, 0.10240658, 0.036137953, -0.109363064, 0.05820501, -0.04092678, 0.11809751, -0.11843415, 0.11893309, -0.06356792, 0.1509876, -0.12252014, -0.0070098704) * go_1(-1.0, -1.0);
    result += mat4(-0.0012312894, 0.038436964, -0.046054237, 0.04859312, -0.4190657, 0.2529927, 0.23133701, -0.00065297337, -0.039581586, 0.00905735, 0.16532114, -0.12568031, 0.17818217, -0.28053075, 0.38509414, -0.03763847) * go_1(-1.0, 0.0);
    result += mat4(-0.0897875, 0.063593514, 0.07660054, 0.12268424, 0.21554653, -0.1025501, 0.2557211, 0.04492533, 0.10992355, -0.035215836, -0.009733763, -0.02165148, 0.08618596, -0.19276536, 0.18174514, -0.18021213) * go_1(-1.0, 1.0);
    result += mat4(-0.002999377, -0.12630916, -0.030010369, -0.2676409, -0.20229307, 0.15253967, -0.12200155, -0.1552754, -0.16193017, 0.10819683, 0.10696224, -0.1920264, -0.29354608, -0.32021165, 0.08644405, -0.16153689) * go_1(0.0, -1.0);
    result += mat4(0.49931613, -0.3669461, -0.49107462, -0.3654748, 0.32047966, 0.03246311, -0.06424334, 0.009108802, 0.2367612, -0.46587244, 0.16957493, 0.3237888, 0.93676794, 0.01834384, -0.9349752, -0.04654371) * go_1(0.0, 0.0);
    result += mat4(-0.112562165, 0.006074484, -0.12288025, -0.08560263, 0.25336134, 0.025205871, 0.25063732, 0.12370882, -0.40429187, 0.12992847, -0.2816234, 0.08179623, 0.27197668, 0.066299304, -0.12988937, 0.16257611) * go_1(0.0, 1.0);
    result += mat4(0.047864527, -0.05821779, -0.06311128, -0.0065775234, -0.065763995, 0.014864688, 0.09148591, -0.25059348, 0.008846306, -0.22123712, 0.4062609, -0.100248575, -0.50293785, -0.13373566, 0.21480446, -0.0841981) * go_1(1.0, -1.0);
    result += mat4(0.19313097, -0.061253734, -0.1801314, -0.20178059, -0.039574936, 0.08167749, 0.010974997, 0.069656976, -0.13193963, 0.35555324, 0.62686867, -0.28656846, -0.27831817, -0.0040086447, 0.4031064, 0.47767937) * go_1(1.0, 0.0);
    result += mat4(0.15396428, 0.069321476, -0.15190981, -0.24133344, 0.106151104, -0.11271092, 0.06878746, 0.14279713, -0.02006402, -0.36284852, -0.00926688, -0.39887694, -0.20926239, -0.021860912, 0.07588468, 0.2620174) * go_1(1.0, 1.0);
    result += vec4(-0.0073282495, -0.040352557, -0.063710704, 0.07255652);
    return result;
}
//!DESC Anime4K-v3.2-Upscale-Denoise-CNN-x2-(M)-Conv-4x3x3x8
//!HOOK MAIN
//!BIND conv2d_3_tf
//!SAVE conv2d_4_tf
//!WIDTH conv2d_3_tf.w
//!HEIGHT conv2d_3_tf.h
//!COMPONENTS 4
//!WHEN OUTPUT.w MAIN.w / 1.200 > OUTPUT.h MAIN.h / 1.200 > *
#define go_0(x_off, y_off) (max((conv2d_3_tf_texOff(vec2(x_off, y_off))), 0.0))
#define go_1(x_off, y_off) (max(-(conv2d_3_tf_texOff(vec2(x_off, y_off))), 0.0))
vec4 hook() {
    vec4 result = mat4(-0.17903937, -0.0014294779, 0.1824805, -0.19555633, -0.0052551827, -0.013796094, 0.06358042, 0.13301018, 0.008874768, 0.06605332, 0.06117636, 0.012946474, 0.048656575, 0.0060409275, -0.0671362, -0.06897735) * go_0(-1.0, -1.0);
    result += mat4(-0.16098012, 0.10772552, -0.13175552, -0.5299018, 0.068713695, -0.048258893, -0.49698257, 0.36581638, 0.21755004, -0.12125899, -0.27382872, -0.12268086, 0.014334542, 0.20573758, 0.45879167, -0.29648975) * go_0(-1.0, 0.0);
    result += mat4(0.06860283, -0.18047708, 0.024707617, 0.11900479, 0.09474589, -0.16559775, -0.054095846, -0.011377782, -0.008733984, 0.105020404, -0.040116277, -0.0022003972, 0.1453799, -0.032110006, -0.018741792, -0.12511599) * go_0(-1.0, 1.0);
    result += mat4(0.20024729, -0.01969923, -0.026999667, -0.39064395, -0.14559332, -0.11634086, -0.13226044, 0.11779975, -0.08838282, -0.0882447, -0.23166943, -0.15760234, 0.030928904, -0.032423917, 0.20324136, -0.19692755) * go_0(0.0, -1.0);
    result += mat4(0.49499384, 0.7327846, -0.6173799, -0.53821295, -0.15000962, 0.11169762, 0.6942423, 0.07956513, 0.06913002, -0.19037646, -0.19826908, 0.68080276, -0.2747096, -0.15832238, 0.47366706, 0.090432756) * go_0(0.0, 0.0);
    result += mat4(-0.18274948, 0.09204629, 0.16644076, 0.05641037, 0.03328184, -0.6218293, 0.26432592, -0.093742386, 0.33038342, -0.24853565, -0.23683667, -0.37430722, -0.20684583, -0.32283148, -0.07633969, -0.08765815) * go_0(0.0, 1.0);
    result += mat4(0.06821987, 0.06395764, -0.14685121, -0.15894371, -0.093540885, 0.057568345, -0.048376244, -0.009256543, -0.26325077, -0.03193119, -0.16857445, -0.02404981, 0.110593356, 0.042911418, 0.06626762, -0.0312436) * go_0(1.0, -1.0);
    result += mat4(0.3108626, 0.37123847, -0.082249805, -0.21339422, -0.3756041, -0.08518717, -0.16853802, 0.011641729, -0.30096757, 0.26942274, -0.08990497, -0.19451031, 0.21974437, -0.04231723, 0.26160353, -0.040834647) * go_0(1.0, 0.0);
    result += mat4(0.11795158, 0.24436565, 0.043223023, -0.0159957, -0.19689156, 0.13223267, -0.013983249, 0.09437164, -0.47648698, -0.00082660443, -0.085406005, 0.10885898, 0.104696035, -0.053257108, 0.024389362, 0.0282572) * go_0(1.0, 1.0);
    result += mat4(0.032890156, 0.0115719065, -0.01898909, -0.03034875, -0.041037276, -0.1026382, 0.03337663, 0.20108728, -0.00023235095, -0.018033072, -0.028535927, 0.07359915, 0.075182244, 0.02959868, 0.15107772, -0.09815672) * go_1(-1.0, -1.0);
    result += mat4(-0.004040557, 0.06707476, 0.039022792, 0.52437925, -0.08027356, 0.040488366, 0.035332825, 0.07683081, -0.03521227, -0.081861034, 0.090804815, 0.10580108, 0.20452882, -0.58755285, 0.04303056, 0.41562977) * go_1(-1.0, 0.0);
    result += mat4(0.09290062, 0.03495193, 0.02347216, -0.012873525, -0.076936446, 0.1453216, -0.03742271, -0.14174925, -0.058219753, 0.19095406, 0.055627216, 0.09437343, -0.010424211, -0.314692, 0.3314579, -0.053285643) * go_1(-1.0, 1.0);
    result += mat4(-0.053961687, 0.1483992, 0.042458896, -0.1966439, 0.13864957, 0.07587672, -0.06519269, 0.09530391, 0.04215073, 0.039545458, 0.21056756, 0.09972659, 0.02987125, -0.08102741, 0.07075036, 0.21867757) * go_1(0.0, -1.0);
    result += mat4(-0.5512795, 0.03104814, 0.27901977, 0.122875504, -0.2656715, 0.007895486, -0.6735937, 0.20810314, -0.31432617, 0.07420857, 0.2573659, -0.35361463, 0.19826569, -0.47774056, 0.15816487, -0.29203883) * go_1(0.0, 0.0);
    result += mat4(0.35078493, -0.07371588, -0.026663188, -0.20976657, -0.009644347, 0.037428845, -0.33933878, -0.010807704, 0.088060796, 0.16753472, -0.12296045, 0.17563403, 0.1501952, 0.07353703, 0.32531765, 0.11667607) * go_1(0.0, 1.0);
    result += mat4(0.096126616, -0.058021486, -0.03439203, 0.06868024, 0.047914367, 0.026945053, 0.04207778, 0.046023168, 0.16024022, 0.07846185, 0.004195093, 0.07272046, -0.10458233, -0.0904536, 0.16049337, 0.015941419) * go_1(1.0, -1.0);
    result += mat4(0.032256138, -0.055398785, 0.079738356, 0.113359064, 0.11975066, -0.074372105, 0.102006756, -0.011490042, 0.15155345, 0.0025528704, 0.23328577, -0.059241068, -0.067783386, -0.18220833, 0.0057692174, 0.039900843) * go_1(1.0, 0.0);
    result += mat4(-0.06173998, -0.07121991, -0.01118306, -0.063749574, -0.032665797, 0.0014987896, 0.03113169, 0.06916617, 0.0066490914, -0.052818965, -0.050131317, 0.10337558, -0.030870482, -0.14671221, 0.12152145, -0.05003445) * go_1(1.0, 1.0);
    result += vec4(-0.010524109, -0.008519857, -0.08958723, -0.07917139);
    return result;
}
//!DESC Anime4K-v3.2-Upscale-Denoise-CNN-x2-(M)-Conv-4x3x3x8
//!HOOK MAIN
//!BIND conv2d_4_tf
//!SAVE conv2d_5_tf
//!WIDTH conv2d_4_tf.w
//!HEIGHT conv2d_4_tf.h
//!COMPONENTS 4
//!WHEN OUTPUT.w MAIN.w / 1.200 > OUTPUT.h MAIN.h / 1.200 > *
#define go_0(x_off, y_off) (max((conv2d_4_tf_texOff(vec2(x_off, y_off))), 0.0))
#define go_1(x_off, y_off) (max(-(conv2d_4_tf_texOff(vec2(x_off, y_off))), 0.0))
vec4 hook() {
    vec4 result = mat4(0.11029161, 0.027180295, -0.115622066, 0.16493714, 0.29633296, -0.11739625, -0.36390316, 0.15221693, -0.009233659, -0.062213745, -0.07184558, 0.07418268, -0.05182182, 0.0066014086, -0.006811494, -0.010030367) * go_0(-1.0, -1.0);
    result += mat4(-0.18361749, 0.08565693, 0.24127418, -0.20478591, 0.6198113, -0.17994536, -0.011840256, 0.120292775, 0.2873902, -0.019704796, -0.062267166, 0.0104749305, -0.048370067, -0.028105626, 0.11494511, -0.15941763) * go_0(-1.0, 0.0);
    result += mat4(-0.08084502, 0.10195475, -0.03200553, 0.032734055, 0.030348243, -0.028927604, 0.045914374, 0.029237835, 0.07756032, -0.06346545, -0.290196, 0.057043966, 0.13982558, -0.12195619, -0.15895663, -0.10097537) * go_0(-1.0, 1.0);
    result += mat4(-0.12018707, -0.320156, -0.4089669, 0.26015735, 0.59622765, -0.05654362, 0.28581724, 0.32069868, -0.0013007161, -0.060870633, -0.2732852, 0.2357145, 0.2137239, 0.0110256495, -0.069258444, 0.113870576) * go_0(0.0, -1.0);
    result += mat4(0.54700065, -0.072552234, 0.27267826, -0.26660076, 0.7043544, 0.18192886, 0.80024594, 0.2447395, -0.3289639, -0.2681839, 0.063631415, -1.0118654, 0.45691678, 0.42904988, -0.2301862, -0.6652257) * go_0(0.0, 0.0);
    result += mat4(0.19215634, 0.030154131, 0.07679603, 0.50318545, 0.056434657, 0.028623195, -0.14471184, -0.13905096, -0.03254216, -0.1191584, -0.18907212, 0.49208716, 0.5069476, -0.1490824, -0.104480386, -0.06595394) * go_0(0.0, 1.0);
    result += mat4(-0.08893682, 0.13113782, 0.023672188, 0.013086517, -0.25986442, 0.038162243, -0.10951209, -0.2027832, -0.013547809, -0.029482972, -0.17670235, 0.13529542, -0.0621569, -0.0979757, -0.10714689, -0.08474307) * go_0(1.0, -1.0);
    result += mat4(-0.032828752, 0.00037559783, 0.023968933, -0.047482926, -0.20302027, 0.08830911, -0.20885307, -0.11137413, 0.16585048, -0.076796696, -0.030462325, -0.2020944, 0.048723634, -0.45607433, -0.29950324, -0.5867916) * go_0(1.0, 0.0);
    result += mat4(0.008863689, 0.061761267, -0.039097138, 0.24465923, -0.05917457, -0.21383028, -0.085846715, -0.14150433, 0.0988731, -0.0160538, -0.045119412, 0.095252946, -0.057551738, 0.21348421, -0.03480491, -0.26071647) * go_0(1.0, 1.0);
    result += mat4(-0.21351442, 0.10038809, 0.34001955, -0.100911774, 0.0208522, -0.028755441, 0.025793588, 0.013080005, 0.03849989, 0.13662058, 0.04311886, 0.17398632, -0.01397261, -0.016415505, -0.0070752064, 0.007656161) * go_1(-1.0, -1.0);
    result += mat4(-0.280189, 0.09252764, -0.077729605, 0.12662902, -0.10433321, 0.03644144, -0.06625324, 0.05696802, 0.15468478, 0.08328583, 0.069849946, 0.061947342, -0.05560477, -0.0074776993, -0.15365681, -0.03526299) * go_1(-1.0, 0.0);
    result += mat4(0.05886785, 0.15303846, 0.0066637015, -0.19983207, -0.07803175, -0.10772685, -0.12690999, -0.08275092, 0.033436153, 0.08424011, 0.17092863, 0.0043526487, 0.014620474, 0.044702258, 0.1686881, -0.016890949) * go_1(-1.0, 1.0);
    result += mat4(0.1833738, 0.14381635, -0.025888365, -0.14182197, -0.25804865, 0.07216123, 0.025790794, 0.14096753, 0.023591481, 0.15610993, 0.026975863, 0.008755717, -0.13039349, -0.063048325, -0.121329494, -0.12331732) * go_1(0.0, -1.0);
    result += mat4(0.0005065098, 0.44017914, 0.18493074, 0.13099027, -0.36087477, -0.37567857, -0.48981526, 0.5590752, -0.23918836, 0.19170256, 0.16816153, -0.29986876, -0.44738817, 0.018545123, 0.66217834, 0.31810755) * go_1(0.0, 0.0);
    result += mat4(-0.16725904, 0.05753713, 0.058880586, -0.336765, 0.013667228, 0.056172702, 0.13465533, -0.07573556, -0.06313958, 0.06746643, 0.18878669, 0.09404202, -0.21780397, 0.12862128, -0.09476746, -0.34096682) * go_1(0.0, 1.0);
    result += mat4(-0.07169524, 0.072302215, 0.052789338, -0.14035568, 0.078670934, -0.22246763, -0.0098074945, 0.024950746, 0.10949147, 0.06182366, 0.021721192, 0.12129548, 0.094007075, 0.06076156, 0.016474832, 0.08092115) * go_1(1.0, -1.0);
    result += mat4(-0.10960447, 0.1878152, -0.029822018, 0.10598909, 0.1582181, 0.086522795, 0.093725055, 0.12908185, 0.23202112, -0.28859115, 0.26614165, 0.124523655, 0.19427507, 0.059677128, 0.003624697, 0.44220912) * go_1(1.0, 0.0);
    result += mat4(-0.03620583, -0.102766834, 0.025527107, -0.11316131, -0.1507822, 0.0543862, -0.08225627, -0.06438472, 0.04580623, 0.6329729, 0.23854075, 0.35752076, 0.04363613, -0.12580468, -0.0006126687, -0.04995386) * go_1(1.0, 1.0);
    result += vec4(0.060475674, -0.042036578, 0.06406282, 0.05569301);
    return result;
}
//!DESC Anime4K-v3.2-Upscale-Denoise-CNN-x2-(M)-Conv-4x3x3x8
//!HOOK MAIN
//!BIND conv2d_5_tf
//!SAVE conv2d_6_tf
//!WIDTH conv2d_5_tf.w
//!HEIGHT conv2d_5_tf.h
//!COMPONENTS 4
//!WHEN OUTPUT.w MAIN.w / 1.200 > OUTPUT.h MAIN.h / 1.200 > *
#define go_0(x_off, y_off) (max((conv2d_5_tf_texOff(vec2(x_off, y_off))), 0.0))
#define go_1(x_off, y_off) (max(-(conv2d_5_tf_texOff(vec2(x_off, y_off))), 0.0))
vec4 hook() {
    vec4 result = mat4(0.008187961, -0.08433309, -0.17281345, 0.1306418, -0.2925821, 0.20668334, 0.14854355, -0.15960559, 0.08599311, -0.096088655, -0.10121403, 0.067429096, 0.049158614, 0.036637552, 0.22137405, -0.17016457) * go_0(-1.0, -1.0);
    result += mat4(0.024813082, 0.028489944, 0.06814137, -0.1245949, 0.54239255, 0.08648708, 0.28979865, 0.110916786, -0.1927179, -0.17756873, -0.1878214, 0.05795718, -0.080397904, 0.22125137, 0.1907366, -0.016493658) * go_0(-1.0, 0.0);
    result += mat4(0.027259264, 0.01494357, 0.04852894, 0.037580628, 0.031005561, 0.003570554, -0.072993, -0.053475574, 0.031119492, -0.14140029, -0.10386501, -0.015266508, 0.01153506, 0.16006693, 0.088294305, 0.04201491) * go_0(-1.0, 1.0);
    result += mat4(0.13026185, 0.097255, 0.49145448, -0.33619553, -0.21144676, 0.019042643, -0.27274492, 0.3033865, 0.14040698, -0.13656893, 0.28211337, -0.26930946, -0.1626638, 0.105105706, -0.50837296, 0.39536825) * go_0(0.0, -1.0);
    result += mat4(-0.42495522, 0.14972518, 0.0007564128, 0.37367433, 0.44553527, 0.3338494, -0.26058698, 0.087256804, -0.4324135, 0.20706014, 0.33552194, -0.13375738, -0.13469471, 0.22374928, -0.36969653, -0.34171587) * go_0(0.0, 0.0);
    result += mat4(0.26543954, -0.004381978, 0.10609993, -0.09718426, -0.15620759, -0.03287476, 0.093032375, 0.00028344034, -0.11699793, -0.016492033, 0.023340177, 0.0062737763, -0.14305823, -0.2721832, -0.160177, -0.06915171) * go_0(0.0, 1.0);
    result += mat4(0.03334679, 0.12436332, -0.13226178, 0.13868971, 0.017779246, -0.012697869, -0.11553709, 0.08638636, 0.0955215, -0.0309646, 0.040856246, -0.03978358, 0.023490254, -0.07178907, 0.23794931, -0.1714287) * go_0(1.0, -1.0);
    result += mat4(-0.11820261, 0.116130814, 0.58924234, -0.37785482, 0.016644944, -0.071019046, 0.0076222476, -0.024118654, -0.076183304, -0.14971451, 0.06356606, -0.07225465, -0.17400762, 0.030856986, 0.03957665, -0.0070553776) * go_0(1.0, 0.0);
    result += mat4(0.10954708, 0.063694, -0.058218896, 0.0010372304, 0.032423936, 0.006164447, -0.031383317, 0.012955956, -0.17115591, 0.16328962, 0.07279567, 0.06571465, 0.005532307, 0.13575353, 0.04082173, 0.041579492) * go_0(1.0, 1.0);
    result += mat4(0.03146011, -0.08227295, -0.03498218, 0.04772092, 0.12055223, -0.12383867, 0.05448358, -0.07948453, -0.019064998, -0.0964146, -0.024651276, 0.041473705, -0.06493721, -0.054806646, -0.21607941, 0.20078054) * go_1(-1.0, -1.0);
    result += mat4(-0.25740683, -0.33160943, -0.37422308, 0.12679969, -0.032204475, 0.41485202, 0.4538808, -0.082535125, 0.11784846, 0.10195789, 0.064491615, -0.10170162, -0.09500746, -0.15640756, -0.079364255, -0.12576963) * go_1(-1.0, 0.0);
    result += mat4(-0.02532797, -0.014487023, -0.09441118, -0.060885422, -0.41196415, -0.1359501, 0.07101173, -0.053279232, 0.010979353, 0.1914526, 0.054606825, 0.015926225, 0.10410896, 0.010272597, -0.048138764, -0.02698072) * go_1(-1.0, 1.0);
    result += mat4(-0.35856235, 0.099759184, -0.11972965, -0.03850837, -0.5143867, 0.3721666, -0.100802526, 0.21814734, -0.11864143, 0.15086797, 0.047075786, -0.14188164, 0.48882273, -0.12767795, 0.4937544, -0.41288656) * go_1(0.0, -1.0);
    result += mat4(0.21679138, 0.023770422, -0.5454043, 0.18567741, 0.15965948, -0.84900963, -0.4684333, -0.21884751, 0.5876668, -0.9346244, -0.30144307, 0.97177315, 0.24103107, 0.35953388, 0.2032729, 1.2934744) * go_1(0.0, 0.0);
    result += mat4(-0.5121466, -0.123357795, 0.1833694, 0.048652876, -0.20895603, 0.0619325, 0.064119816, 0.072841786, -0.21813762, -0.126957, -0.23441431, -0.009071302, -0.09766064, -0.12546945, 0.086008705, -0.0072638122) * go_1(0.0, 1.0);
    result += mat4(0.15312338, -0.051029235, 0.07638347, -0.14028431, 0.10694411, -0.14639509, 0.3193828, -0.22767228, -0.19987194, 0.18207504, -0.19648756, 0.24752761, -0.03402804, -0.04186147, -0.20177092, 0.09467012) * go_1(1.0, -1.0);
    result += mat4(-0.3587345, -0.20358992, -0.11016057, 0.21079709, -0.26201126, 0.040362626, 0.3186598, -0.059521858, 0.27564716, -0.041431133, 0.19315968, -0.30228892, 0.01191173, -0.10380854, 0.03030344, 0.026699625) * go_1(1.0, 0.0);
    result += mat4(0.13373446, -0.011457521, -0.24851708, 0.06563771, -0.051668253, 0.09096929, -0.013976447, 0.041433394, -0.046981215, -0.00015144625, 0.05696515, 0.024501698, 0.2714476, -0.017434085, 0.025333954, -0.054034695) * go_1(1.0, 1.0);
    result += vec4(0.06757453, -0.021112159, -0.015639946, 0.05520713);
    return result;
}
//!DESC Anime4K-v3.2-Upscale-Denoise-CNN-x2-(M)-Conv-4x1x1x56
//!HOOK MAIN
//!BIND conv2d_tf
//!BIND conv2d_1_tf
//!BIND conv2d_2_tf
//!BIND conv2d_3_tf
//!BIND conv2d_4_tf
//!BIND conv2d_5_tf
//!BIND conv2d_6_tf
//!SAVE conv2d_last_tf
//!WIDTH conv2d_tf.w
//!HEIGHT conv2d_tf.h
//!COMPONENTS 4
//!WHEN OUTPUT.w MAIN.w / 1.200 > OUTPUT.h MAIN.h / 1.200 > *
#define g_0 (max((conv2d_tf_tex(conv2d_tf_pos)), 0.0))
#define g_1 (max(-(conv2d_tf_tex(conv2d_tf_pos)), 0.0))
#define g_2 (max((conv2d_1_tf_tex(conv2d_1_tf_pos)), 0.0))
#define g_3 (max(-(conv2d_1_tf_tex(conv2d_1_tf_pos)), 0.0))
#define g_4 (max((conv2d_2_tf_tex(conv2d_2_tf_pos)), 0.0))
#define g_5 (max(-(conv2d_2_tf_tex(conv2d_2_tf_pos)), 0.0))
#define g_6 (max((conv2d_3_tf_tex(conv2d_3_tf_pos)), 0.0))
#define g_7 (max(-(conv2d_3_tf_tex(conv2d_3_tf_pos)), 0.0))
#define g_8 (max((conv2d_4_tf_tex(conv2d_4_tf_pos)), 0.0))
#define g_9 (max(-(conv2d_4_tf_tex(conv2d_4_tf_pos)), 0.0))
#define g_10 (max((conv2d_5_tf_tex(conv2d_5_tf_pos)), 0.0))
#define g_11 (max(-(conv2d_5_tf_tex(conv2d_5_tf_pos)), 0.0))
#define g_12 (max((conv2d_6_tf_tex(conv2d_6_tf_pos)), 0.0))
#define g_13 (max(-(conv2d_6_tf_tex(conv2d_6_tf_pos)), 0.0))
vec4 hook() {
    vec4 result = mat4(0.03795613, 0.09572901, 0.019826923, 0.10568741, -0.0030050736, -0.018890928, 0.0095737, 0.00807826, -0.022741016, 0.0046556294, -0.017018225, -0.010523109, -0.017621946, -0.0006488902, -0.009405731, -0.0027796263) * g_0;
    result += mat4(-0.046617493, -0.018167915, -0.039274286, -0.027566826, -0.015821747, 0.003789104, -0.0020801623, 0.004032968, -0.05708595, -0.018440764, -0.032891296, 0.004184342, 0.047413353, 0.0034510887, 0.019148773, -0.0035636695) * g_1;
    result += mat4(-0.046619494, -0.017274255, -0.03372405, -0.011152855, 0.10981248, 0.036214054, 0.07969624, 0.05590572, -0.031791378, -0.00307391, -0.0032425344, 0.0025762853, 0.0053703627, -0.02076939, -0.00058634114, -0.012593452) * g_2;
    result += mat4(0.110471316, 0.031102506, 0.07860556, -0.018570926, -0.05038586, -0.07667239, -0.0819002, -0.08958284, 0.03846167, -0.007570915, 0.008598097, -0.0082979705, -0.03610172, -0.022735123, 0.02343143, 0.030037913) * g_3;
    result += mat4(-0.075562544, -0.020187575, -0.020969959, 0.0062222136, 0.019780673, 0.059694994, 0.019240001, 0.05951303, 0.004168261, 0.00041100322, -0.0013793377, 0.002048099, -0.040564027, -0.031818517, -0.015498987, -0.02695407) * g_4;
    result += mat4(-0.0016428401, 0.018965026, -0.013192817, -0.008289604, -0.044686675, -0.009061507, -0.049217258, -0.043777503, -0.07308355, -0.063734084, 0.019393511, -0.028853234, 0.057311818, 0.04126226, 0.086301416, 0.11784249) * g_5;
    result += mat4(-0.06087458, 0.046508487, -0.10723279, 0.017619802, 0.13637137, 0.2054238, 0.013641375, 0.091581754, 0.03556439, 0.0500333, 0.0696777, 0.0922045, -0.020914901, -0.025425691, -0.050319638, -0.049094327) * g_6;
    result += mat4(0.0030941095, -0.008679898, -0.05815756, -0.038728733, -0.062450465, -0.073838525, -0.030359933, -0.08355475, -0.039032117, -0.0689333, -0.04834296, -0.079471886, 0.09694701, 0.17491414, 0.093450785, 0.16742545) * g_7;
    result += mat4(0.035618782, -0.027659958, 0.055540156, 0.013073733, 0.12144545, 0.05981087, -0.015131131, -0.0476281, -0.090847984, 0.005347584, 0.015588529, 0.024184622, -0.10743599, -0.01785147, -0.08566232, -0.14611128) * g_8;
    result += mat4(-0.03812077, 0.018126076, -0.016625525, -0.06906415, -0.06267368, -0.058914356, 0.0009385371, -0.026746314, 0.048242237, 0.028906677, -0.028120263, -0.004209134, 0.009636235, 0.013206963, 0.07449269, 0.038961377) * g_9;
    result += mat4(-0.014510558, -0.021065345, 0.09356215, -0.005815953, 0.08807958, 0.067895725, 0.08723713, 0.057831496, -0.10227873, -0.07699344, -0.06321843, -0.07448854, 0.09820774, 0.007563063, -0.14045772, -0.014161681) * g_10;
    result += mat4(-0.18385889, 0.2255883, -0.29741547, 0.14618248, -0.08100661, -0.06860545, -0.112705804, -0.122642964, -0.06736901, 0.06971933, 0.12909706, -0.0418256, -0.32786265, 0.032497127, 0.4390302, 0.032726523) * g_11;
    result += mat4(0.10560793, 0.083280005, -0.20369564, -0.14290833, -0.119196005, -0.028741803, 0.020456403, -0.06509816, 0.073811695, 0.02724128, -0.08691891, 0.10240907, 0.16827166, -0.17502932, -0.18295282, 0.15154512) * g_12;
    result += mat4(0.0036247042, -0.002368346, 0.049646147, 0.058079436, 0.14403848, 0.07125248, 0.040327612, -0.013934329, 0.03871744, -0.1717596, 0.20666012, -0.24093682, -0.09846371, 0.011563227, 0.11973811, -0.0574434) * g_13;
    result += vec4(0.022095086, 0.021079032, 0.030224537, 0.02154015);
    return result;
}
//!DESC Anime4K-v3.2-Upscale-Denoise-CNN-x2-(M)-Depth-to-Space
//!HOOK MAIN
//!BIND MAIN
//!BIND conv2d_last_tf
//!WIDTH conv2d_last_tf.w 2 *
//!HEIGHT conv2d_last_tf.h 2 *
//!WHEN OUTPUT.w MAIN.w / 1.200 > OUTPUT.h MAIN.h / 1.200 > *
vec4 hook() {
    vec2 f0 = fract(conv2d_last_tf_pos * conv2d_last_tf_size);
    ivec2 i0 = ivec2(f0 * vec2(2.0));
    float c0 = conv2d_last_tf_tex((vec2(0.5) - f0) * conv2d_last_tf_pt + conv2d_last_tf_pos)[i0.y * 2 + i0.x];
    float c1 = c0;
    float c2 = c1;
    float c3 = c2;
    return vec4(c0, c1, c2, c3) + MAIN_tex(MAIN_pos);
}
