/*
* Copyright (C) 2017-2019 AshamaneProject <https://github.com/AshamaneProject>
*
* This program is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License as published by the
* Free Software Foundation; either version 2 of the License, or (at your
* option) any later version.
*
* This program is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
* more details.
*
* You should have received a copy of the GNU General Public License along
* with this program. If not, see <http://www.gnu.org/licenses/>.
*/

const Position sulfurasPos[2] =
{
    {1036.274f, -89.23959f, 55.38f, 0.0f}, // right
    //{1023.55f, -57.15799f, 55.43f, 0.0f}, // center
    {1035.446f, -25.36458f, 55.50f, 0.0f} // left
};

const Position sonsPos[2][8] =
{
    {
        {1034.168f, -15.93056f, 55.61f, 0.0f}, // right case
        {1012.12f, -26.89063f, 55.57f, 0.0f},
        {997.1042f, -40.70486f, 55.49f, 0.0f},
        {996.7518f, -75.15278f, 55.55f, 0.0f},
        {1059.132f, -110.408f, 55.44f, 0.0f},
        {1074.852f, -12.31597f, 55.43f, 0.0f},
        {1074.866f, -100.7882f, 55.43f, 0.0f},
        {1058.323f, -3.836806f, 55.44f, 0.0f}
    },
    /*{
                CENTER
    },*/
    {
        {1058.323f, -3.836806f, 55.44f, 0.0f}, // left case
        {1074.866f, -100.7882f, 55.43f, 0.0f},
        {1074.852f, -12.31597f, 55.43f, 0.0f},
        {1059.132f, -110.408f, 55.44f, 0.0f},
        {1035.049f, -98.75868f, 55.59f, 0.0f},
        {1014.325f, -88.80209f, 55.53f, 0.0f},
        {996.7518f, -75.15278f, 55.55f, 0.0f},
        {997.1042f, -40.70486f, 55.49f, 0.0f}
    }
};

const Position moltenseedcasterPos[18] =
{
    {1069.83f, 16.5104f, 44.4772f, 0.0f},
    {992.832f, 17.7813f, 46.7662f, 0.0f},
    {1048.21f, 25.9931f, 44.5918f, 0.0f},
    {956.267f, -87.0868f, 44.0874f, 0.0f},
    {1091.5f, -119.464f, 43.6151f, 0.0f},
    {975.087f, -119.648f, 44.6161f, 0.0f},
    {1112.12f, -98.3576f, 45.3863f, 0.0f},
    {1076.38f, -131.721f, 46.6812f, 0.0f},
    {974.811f, 2.56597f, 46.0879f, 0.0f},
    {1018.38f, -147.797f, 43.2673f, 0.0f},
    {946.498f, -40.6493f, 45.568f, 0.0f},
    {964.68f, -107.142f, 45.4605f, 0.0f},
    {1106.81f, -106.583f, 44.4333f, 0.0f},
    {1001.88f, -144.776f, 44.4676f, 0.0f},
    {955.611f, -26.0434f, 44.6719f, 0.0f},
    {967.128f, -7.8559f, 44.8014f, 0.0f},
    {1007.96f, 27.9514f, 44.8821f, 0.0f},
    {1030.5f, 30.3073f, 43.9789f, 0.0f}
};

#define MAX_ENGULFING_FLAMES 101
const Position engulfingflamesPos[MAX_ENGULFING_FLAMES] =
{
    {980.9271f, -58.26563f, 55.45417f, 0.0f},
    {985.1805f, -77.37847f, 55.44088f, 0.0f},
    {1023.825f, 12.97743f, 55.44697f, 0.0f},
    {1023.049f, -128.2569f, 55.44712f, 0.0f},
    {1019.599f, 7.769097f, 55.44697f, 0.0f},
    {1002.212f, -49.70486f, 55.40747f, 0.0f},
    {1002.003f, -58.23958f, 55.43312f, 0.0f},
    {989.8663f, -66.08681f, 55.43312f, 0.0f},
    {1002.721f, -40.74306f, 55.40628f, 0.0f},
    {1000.811f, -14.50694f, 55.45658f, 0.0f},
    {986.6077f, -37.76563f, 55.44108f, 0.0f},
    {988.2083f, -50.36458f, 55.42909f, 0.0f},
    {999.7552f, -98.47916f, 55.4426f, 0.0f},
    {1003.438f, -74.02431f, 55.40632f, 0.0f},
    {1014.149f, -17.32813f, 55.46292f, 0.0f},
    {1021.839f, -33.74826f, 55.4239f, 0.0f},
    {1021.495f, -79.60764f, 55.42614f, 0.0f},
    {1063.59f, -97.05729f, 55.49337f, 0.0f},
    {1009.561f, -108.1615f, 55.4697f, 0.0f},
    {1012.696f, -4.833333f, 55.60498f, 0.0f},
    {1005.799f, -8.817708f, 55.46718f, 0.0f},
    {1012.092f, -97.51215f, 55.457f, 0.0f},
    {1018.292f, -70.1875f, 55.42313f, 0.0f},
    {1018.465f, -43.76736f, 55.42176f, 0.0f},
    {1018.29f, -117.8333f, 55.44709f, 0.0f},
    {1025.286f, -86.23264f, 55.40707f, 0.0f},
    {1025.345f, -25.84722f, 55.40691f, 0.0f},
    {1005.493f, -86.4566f, 55.42747f, 0.0f},
    {1049.328f, 5.043403f, 55.46333f, 0.0f},
    {1024.91f, -106.8524f, 55.44708f, 0.0f},
    {1033.934f, -57.09201f, 55.4225f, 0.0f},
    {1034.759f, -63.95833f, 55.43965f, 0.0f},
    {1041.264f, -81.43403f, 55.42403f, 0.0f},
    {1038.53f, -100.2535f, 55.60122f, 0.0f},
    {1036.901f, -14.61806f, 55.57146f, 0.0f},
    {1035.557f, -114.1563f, 55.44709f, 0.0f},
    {1042.342f, -32.1059f, 55.42543f, 0.0f},
    {1035.911f, 0.9097222f, 55.44697f, 0.0f},
    {1035.172f, -125.6458f, 55.4471f, 0.0f},
    {1032.481f, 13.27083f, 55.44695f, 0.0f},
    {1049.274f, -90.68924f, 55.42587f, 0.0f},
    {1049.655f, -104.9063f, 55.45558f, 0.0f},
    {1051.799f, -24.09028f, 55.42579f, 0.0f},
    {1049.976f, -7.223958f, 55.45372f, 0.0f},
    {1049.741f, -118.3958f, 55.56611f, 0.0f},
    {1052.59f, -120.5625f, 55.45633f, 0.0f},
    {1057.031f, -4.104167f, 55.42584f, 0.0f},
    {1065.436f, -17.70486f, 55.42498f, 0.0f},
    {1062.127f, -109.0052f, 55.42595f, 0.0f},
    {1062.938f, -4.342014f, 55.56818f, 0.0f},
    {1069.91f, -109.651f, 55.42772f, 0.0f},
    {1055.339f, 5.067708f, 55.44706f, 0.0f},
    {1069.663f, -4.539931f, 55.43082f, 0.0f},
    {1078.007f, -97.77604f, 55.42271f, 0.0f},
    {1075.01f, -111.2326f, 55.83448f, 0.0f},
    {1079.148f, -15.53125f, 55.42302f, 0.0f},
    {991.7379f, -87.16319f, 55.44453f, 0.0f},
    {991.7986f, -25.09549f, 55.44411f, 0.0f},
    {1003.066f, -66.49132f, 55.40668f, 0.0f},
    {1006.099f, -27.36806f, 55.42767f, 0.0f},
    {1016.991f, -57.56424f, 55.41334f, 0.0f},
    {1024.446f, -8.138889f, 55.44697f, 0.0f},
    {1030.219f, -92.84028f, 55.43441f, 0.0f},
    {1036.34f, -69.82813f, 55.44252f, 0.0f},
    {1036.825f, -44.33854f, 55.44249f, 0.0f},
    {1075.01f, -111.2326f, 55.83448f, 0.0f},
    {1091.826f, -21.92535f, 55.42406f, 0.0f},
    {1086.547f, -18.08854f, 55.42277f, 0.0f},
    {1086.234f, -96.19271f, 55.42255f, 0.0f},
    {1092.516f, -92.39236f, 55.42413f, 0.0f}
};

const Position magmaPos = {1078.429f, -57.52951f, 52.88182f, 0.0f};
const Position uprisePos = {1035.950806f, -53.164410f, 55.36f, 3.09f};

const Position lavascionPos[2] =
{
    {1027.569214f, 0.377208f, 55.37f, 4.59f},
    {1030.938477f, -118.280388f, 55.37f, 1.63f}
};

const Position npcPos[3] =
{
    {984.063599f, -77.561241f, 55.36f, 0.52f}, // Malfurion
    {981.854797f, -57.635929f, 55.375f, 0.0f}, // Cenarius
    {983.261658f, -38.466282f, 55.36f, 5.86f}  // Hamuul
};

#define MAX_FLOOR_POS 276
bool bFloor[MAX_FLOOR_POS];
const Position floorPos[MAX_FLOOR_POS] =
{
    {989.587952f, -76.366386f, 55.349987f, 0.0f},
    {989.587952f, -76.366386f, 55.349987f, 0.0f},
    {993.546570f, -84.167061f, 55.358173f, 0.0f},
    {995.698364f, -87.794167f, 55.369511f, 0.0f},
    {997.897095f, -91.248756f, 55.370525f, 0.0f},
    {997.897095f, -91.248756f, 55.370525f, 0.0f},
    {1004.538025f, -100.838669f, 55.375378f, 0.0f},
    {1004.538025f, -100.838669f, 55.375378f, 0.0f},
    {1007.399414f, -104.148109f, 55.381451f, 0.0f},
    {1011.662842f, -108.530952f, 55.405006f, 0.0f},
    {1014.779236f, -110.668205f, 55.363823f, 0.0f},
    {1017.076782f, -112.435242f, 55.363823f, 0.0f},
    {1020.250122f, -116.625015f, 55.363823f, 0.0f},
    {1024.958130f, -119.461624f, 55.363823f, 0.0f},
    {1029.014771f, -119.090645f, 55.363823f, 0.0f},
    {1032.356201f, -118.114021f, 55.363823f, 0.0f},
    {1036.138062f, -116.544846f, 55.363823f, 0.0f},
    {1039.989990f, -115.320221f, 55.363823f, 0.0f},
    {1043.616333f, -114.193474f, 55.363823f, 0.0f},
    {1043.616333f, -114.193474f, 55.363823f, 0.0f},
    {1050.636475f, -111.958145f, 55.369514f, 0.0f},
    {1054.963135f, -110.442261f, 55.350349f, 0.0f},
    {1059.528442f, -108.529106f, 55.342762f, 0.0f},
    {1065.821411f, -105.466881f, 55.485096f, 0.0f},
    {1069.354858f, -103.432693f, 55.358250f, 0.0f},
    {1072.578979f, -101.426239f, 55.342739f, 0.0f},
    {1072.578979f, -101.426239f, 55.342739f, 0.0f},
    {1076.956055f, -98.530350f, 55.341328f, 0.0f},
    {1081.591064f, -95.000076f, 55.339260f, 0.0f},
    {1084.692017f, -92.353302f, 55.339260f, 0.0f},
    {1087.701416f, -89.657600f, 55.065765f, 0.0f},
    {1091.014648f, -86.314545f, 55.127625f, 0.0f},
    {1095.936646f, -80.953392f, 55.199532f, 0.0f},
    {1096.903564f, -79.495842f, 55.208492f, 0.0f},
    {1100.622437f, -72.898834f, 55.228493f, 0.0f},
    {1102.087769f, -69.358284f, 55.202152f, 0.0f},
    {1103.610596f, -65.275658f, 55.202152f, 0.0f},
    {1104.297241f, -63.052803f, 55.202152f, 0.0f},
    {1105.200195f, -56.120453f, 55.199200f, 0.0f},
    {1104.951904f, -53.214905f, 55.199280f, 0.0f},
    {1103.122192f, -47.084213f, 55.200516f, 0.0f},
    {1101.436035f, -43.605370f, 55.201672f, 0.0f},
    {1099.023315f, -39.358879f, 55.241444f, 0.0f},
    {1096.799316f, -36.281410f, 55.233231f, 0.0f},
    {1094.473755f, -33.324512f, 55.219719f, 0.0f},
    {1091.871826f, -30.560057f, 55.193100f, 0.0f},
    {1086.033203f, -25.252872f, 55.106861f, 0.0f},
    {1082.423584f, -22.314253f, 55.182652f, 0.0f},
    {1082.423584f, -22.314253f, 55.182652f, 0.0f},
    {1075.769165f, -16.639814f, 55.339275f, 0.0f},
    {1072.899048f, -14.576386f, 55.340378f, 0.0f},
    {1069.526245f, -12.223269f, 55.341652f, 0.0f},
    {1069.526245f, -12.223269f, 55.341652f, 0.0f},
    {1062.302246f, -7.288276f, 55.342690f, 0.0f},
    {1058.528198f, -5.075464f, 55.342690f, 0.0f},
    {1058.528198f, -5.075464f, 55.342690f, 0.0f},
    {1052.780273f, -1.766142f, 55.357311f, 0.0f},
    {1045.125732f, 2.472355f, 55.506531f, 0.0f},
    {1045.125732f, 2.472355f, 55.506531f, 0.0f},
    {1036.893311f, 6.249002f, 55.363716f, 0.0f},
    {1032.065063f, 7.045691f, 55.363716f, 0.0f},
    {1028.690308f, 6.277740f, 55.363716f, 0.0f},
    {1025.243286f, 4.567934f, 55.363716f, 0.0f},
    {1019.339417f, 0.357896f, 55.363716f, 0.0f},
    {1016.056519f, -2.506513f, 55.363716f, 0.0f},
    {1016.056519f, -2.506513f, 55.363716f, 0.0f},
    {1009.626587f, -8.440317f, 55.387253f, 0.0f},
    {1006.737549f, -11.390366f, 55.384300f, 0.0f},
    {1004.187988f, -14.251666f, 55.378017f, 0.0f},
    {1004.187988f, -14.251666f, 55.378017f, 0.0f},
    {998.408081f, -20.820904f, 55.370193f, 0.0f},
    {994.663757f, -25.262178f, 55.378338f, 0.0f},
    {992.492859f, -28.267826f, 55.374504f, 0.0f},
    {988.435852f, -35.015297f, 55.359245f, 0.0f},
    {987.749512f, -36.624081f, 55.357723f, 0.0f},
    {985.996033f, -42.816757f, 55.346569f, 0.0f},
    {985.705750f, -48.642662f, 55.345722f, 0.0f},
    {986.011780f, -51.811348f, 55.351658f, 0.0f},
    {986.731323f, -55.539455f, 55.357380f, 0.0f},
    {987.668762f, -59.507465f, 55.359657f, 0.0f},
    {989.828308f, -66.805748f, 55.343422f, 0.0f},
    {991.199646f, -70.626381f, 55.342487f, 0.0f},
    {992.723755f, -74.103882f, 55.342678f, 0.0f},
    {994.467773f, -77.808884f, 55.345303f, 0.0f},
    {996.636353f, -81.925835f, 55.346645f, 0.0f},
    {998.630249f, -85.137009f, 55.354248f, 0.0f},
    {1003.563599f, -91.235130f, 55.356552f, 0.0f},
    {1006.442566f, -93.762978f, 55.357544f, 0.0f},
    {1009.624146f, -96.241760f, 55.367626f, 0.0f},
    {1012.709839f, -98.455177f, 55.376896f, 0.0f},
    {1015.889404f, -100.529335f, 55.385876f, 0.0f},
    {1023.290039f, -104.606537f, 55.363808f, 0.0f},
    {1026.788696f, -105.988319f, 55.363808f, 0.0f},
    {1031.455200f, -107.698265f, 55.363808f, 0.0f},
    {1034.805420f, -108.639809f, 55.363808f, 0.0f},
    {1039.405396f, -109.638466f, 55.363808f, 0.0f},
    {1042.832397f, -110.139130f, 55.363808f, 0.0f},
    {1048.967407f, -110.380898f, 55.380917f, 0.0f},
    {1053.862061f, -109.848946f, 55.351803f, 0.0f},
    {1056.684082f, -109.093529f, 55.343895f, 0.0f},
    {1063.682129f, -106.202599f, 55.343895f, 0.0f},
    {1067.022949f, -104.398407f, 55.486080f, 0.0f},
    {1070.222290f, -102.354019f, 55.342693f, 0.0f},
    {1074.602905f, -99.366615f, 55.341282f, 0.0f},
    {1077.900391f, -96.882584f, 55.339741f, 0.0f},
    {1081.143677f, -94.080070f, 55.339741f, 0.0f},
    {1084.942261f, -90.420509f, 55.055805f, 0.0f},
    {1088.638916f, -86.379578f, 55.171429f, 0.0f},
    {1090.785645f, -83.617081f, 55.206688f, 0.0f},
    {1092.841797f, -80.446014f, 55.246910f, 0.0f},
    {1095.323608f, -75.393486f, 55.300446f, 0.0f},
    {1097.887817f, -68.674934f, 55.229664f, 0.0f},
    {1098.436646f, -66.106422f, 55.231602f, 0.0f},
    {1099.127563f, -60.029434f, 55.245483f, 0.0f},
    {1098.935547f, -56.816910f, 55.247105f, 0.0f},
    {1097.314331f, -50.015842f, 55.259510f, 0.0f},
    {1095.749268f, -46.278057f, 55.261917f, 0.0f},
    {1093.991821f, -42.952183f, 55.299847f, 0.0f},
    {1092.055054f, -39.704430f, 55.355255f, 0.0f},
    {1089.779419f, -36.644871f, 55.343513f, 0.0f},
    {1084.443359f, -30.902901f, 55.276554f, 0.0f},
    {1081.773438f, -28.202744f, 55.223637f, 0.0f},
    {1078.384644f, -25.329546f, 55.160522f, 0.0f},
    {1074.599365f, -22.743853f, 55.057480f, 0.0f},
    {1070.890747f, -20.422815f, 55.338089f, 0.0f},
    {1064.590454f, -16.711069f, 55.340023f, 0.0f},
    {1064.590454f, -16.711069f, 55.340023f, 0.0f},
    {1058.374023f, -13.459753f, 55.342598f, 0.0f},
    {1050.632690f, -10.038863f, 55.363640f, 0.0f},
    {1046.939575f, -9.157690f, 55.377659f, 0.0f},
    {1037.310181f, -9.132583f, 55.363766f, 0.0f},
    {1033.313599f, -9.727928f, 55.363766f, 0.0f},
    {1030.211914f, -10.446792f, 55.363766f, 0.0f},
    {1026.551147f, -11.639145f, 55.363766f, 0.0f},
    {1026.551147f, -11.639145f, 55.363766f, 0.0f},
    {1016.924927f, -15.717890f, 55.384575f, 0.0f},
    {1016.924927f, -15.717890f, 55.384575f, 0.0f},
    {1009.253357f, -21.030584f, 55.363495f, 0.0f},
    {1006.052734f, -24.010141f, 55.351208f, 0.0f},
    {1004.012390f, -26.849760f, 55.351891f, 0.0f},
    {1001.919189f, -30.306541f, 55.347366f, 0.0f},
    {999.171448f, -36.741261f, 55.476414f, 0.0f},
    {997.744934f, -40.578316f, 55.338905f, 0.0f},
    {996.831726f, -44.246246f, 55.342419f, 0.0f},
    {995.707642f, -49.069187f, 55.343170f, 0.0f},
    {994.638367f, -57.149567f, 55.351212f, 0.0f},
    {994.563843f, -59.737225f, 55.351334f, 0.0f},
    {995.670471f, -66.039101f, 55.343811f, 0.0f},
    {997.143921f, -69.539040f, 55.412365f, 0.0f},
    {998.525940f, -72.387802f, 55.472435f, 0.0f},
    {1002.950684f, -78.872192f, 55.323071f, 0.0f},
    {1005.271484f, -81.583260f, 55.323071f, 0.0f},
    {1007.760376f, -83.941551f, 55.323071f, 0.0f},
    {1010.985901f, -86.434448f, 55.332600f, 0.0f},
    {1018.381653f, -91.266289f, 55.359653f, 0.0f},
    {1022.064026f, -92.846832f, 55.355190f, 0.0f},
    {1025.634277f, -94.185966f, 55.366409f, 0.0f},
    {1032.098145f, -95.685585f, 55.371971f, 0.0f},
    {1035.922241f, -95.919579f, 55.369213f, 0.0f},
    {1039.123535f, -96.000191f, 55.365894f, 0.0f},
    {1045.495239f, -95.417900f, 55.342995f, 0.0f},
    {1049.444458f, -94.409851f, 55.342995f, 0.0f},
    {1053.057983f, -93.188332f, 55.342995f, 0.0f},
    {1056.530762f, -91.656273f, 55.468712f, 0.0f},
    {1063.761353f, -87.496811f, 55.113106f, 0.0f},
    {1066.055664f, -85.687790f, 55.207016f, 0.0f},
    {1071.215942f, -80.455368f, 55.353889f, 0.0f},
    {1073.580078f, -77.176895f, 55.396931f, 0.0f},
    {1075.583130f, -73.890274f, 55.427834f, 0.0f},
    {1077.356567f, -70.552864f, 55.456337f, 0.0f},
    {1078.924561f, -66.829536f, 55.495342f, 0.0f},
    {1080.757935f, -59.741096f, 55.561565f, 0.0f},
    {1081.307373f, -55.736923f, 55.561211f, 0.0f},
    {1081.218628f, -51.073231f, 55.527626f, 0.0f},
    {1079.678101f, -45.808216f, 55.474701f, 0.0f},
    {1078.918579f, -44.489994f, 55.461369f, 0.0f},
    {1073.604126f, -38.430630f, 55.408817f, 0.0f},
    {1070.379150f, -36.406448f, 55.387875f, 0.0f},
    {1070.379150f, -36.406448f, 55.387875f, 0.0f},
    {1062.315796f, -33.020763f, 55.255566f, 0.0f},
    {1058.328369f, -31.823332f, 55.182911f, 0.0f},
    {1052.303101f, -31.022139f, 55.342606f, 0.0f},
    {1048.512329f, -31.235683f, 55.445930f, 0.0f},
    {1043.911621f, -31.878471f, 55.339775f, 0.0f},
    {1039.684082f, -33.760609f, 55.342567f, 0.0f},
    {1037.006104f, -35.471081f, 55.346699f, 0.0f},
    {1032.403687f, -39.523468f, 55.482792f, 0.0f},
    {1028.961670f, -44.210407f, 55.359226f, 0.0f},
    {1027.180908f, -47.564133f, 55.339264f, 0.0f},
    {1025.319092f, -51.541428f, 55.345097f, 0.0f},
    {1021.191956f, -56.172901f, 55.337452f, 0.0f},
    {1017.082214f, -57.556934f, 55.333057f, 0.0f},
    {1013.145325f, -58.681984f, 55.331436f, 0.0f},
    {1008.505737f, -55.709465f, 55.328613f, 0.0f},
    {1004.659790f, -52.462414f, 55.325661f, 0.0f},
    {1005.640686f, -47.874466f, 55.327473f, 0.0f},
    {1010.107056f, -47.971008f, 55.333622f, 0.0f},
    {1014.816467f, -50.390041f, 55.335052f, 0.0f},
    {1019.180481f, -52.692486f, 55.336716f, 0.0f},
    {1019.180481f, -52.692486f, 55.336716f, 0.0f},
    {1027.188354f, -57.497364f, 55.339745f, 0.0f},
    {1031.159912f, -61.695530f, 55.339745f, 0.0f},
    {1031.159912f, -61.695530f, 55.339745f, 0.0f},
    {1034.828735f, -65.853859f, 55.484928f, 0.0f},
    {1040.218384f, -71.198463f, 55.352779f, 0.0f},
    {1045.409668f, -74.391930f, 55.344795f, 0.0f},
    {1047.516846f, -75.268456f, 55.211361f, 0.0f},
    {1053.144775f, -76.553375f, 55.186527f, 0.0f},
    {1059.225098f, -75.846481f, 55.288441f, 0.0f},
    {1064.348267f, -74.739967f, 55.386608f, 0.0f},
    {1068.167114f, -72.656647f, 55.418571f, 0.0f},
    {1071.061279f, -69.457756f, 55.455006f, 0.0f},
    {1072.820313f, -64.816483f, 55.513748f, 0.0f},
    {1073.693359f, -59.915833f, 55.571762f, 0.0f},
    {1072.445801f, -55.747414f, 55.568142f, 0.0f},
    {1067.858276f, -53.141857f, 55.500511f, 0.0f},
    {1063.098022f, -54.356564f, 55.435936f, 0.0f},
    {1058.335449f, -55.836018f, 55.336182f, 0.0f},
    {1054.641602f, -53.484303f, 55.257755f, 0.0f},
    {1054.133789f, -48.892433f, 55.230694f, 0.0f},
    {1055.723022f, -45.433296f, 55.231083f, 0.0f},
    {1059.281372f, -41.336437f, 55.311749f, 0.0f},
    {1062.509277f, -40.141117f, 55.382195f, 0.0f},
    {1067.742310f, -39.335720f, 55.399162f, 0.0f},
    {1070.379395f, -39.430305f, 55.410610f, 0.0f},
    {1074.453247f, -39.992729f, 55.421822f, 0.0f},
    {1080.096558f, -41.019958f, 55.428555f, 0.0f},
    {1083.702881f, -42.259380f, 55.431042f, 0.0f},
    {1083.702881f, -42.259380f, 55.431042f, 0.0f},
    {1093.085327f, -46.339035f, 55.311073f, 0.0f},
    {1096.429565f, -48.639759f, 55.266884f, 0.0f},
    {1100.847778f, -53.689301f, 55.226982f, 0.0f},
    {1103.205566f, -56.964355f, 55.211361f, 0.0f},
    {1104.184570f, -61.540665f, 55.206486f, 0.0f},
    {1104.053955f, -65.538765f, 55.198261f, 0.0f},
    {1102.818481f, -70.686089f, 55.195309f, 0.0f},
    {1101.139038f, -74.411903f, 55.209534f, 0.0f},
    {1098.853760f, -77.553101f, 55.202942f, 0.0f},
    {1098.853760f, -77.553101f, 55.202942f, 0.0f},
    {1091.495850f, -85.611717f, 55.142807f, 0.0f},
    {1087.675293f, -87.595169f, 55.148357f, 0.0f},
    {1082.326782f, -88.547142f, 55.148617f, 0.0f},
    {1078.627686f, -86.867432f, 55.217148f, 0.0f},
    {1074.469849f, -82.801079f, 55.310173f, 0.0f},
    {1070.979980f, -79.293770f, 55.373650f, 0.0f},
    {1067.398315f, -78.572701f, 55.370304f, 0.0f},
    {1062.473022f, -79.596413f, 55.291267f, 0.0f},
    {1062.473022f, -79.596413f, 55.291267f, 0.0f},
    {1053.377197f, -82.550560f, 55.043480f, 0.0f},
    {1047.849731f, -82.870789f, 55.484989f, 0.0f},
    {1043.493164f, -82.910599f, 55.341621f, 0.0f},
    {1039.519165f, -81.872398f, 55.342705f, 0.0f},
    {1035.902588f, -80.068253f, 55.345181f, 0.0f},
    {1032.765137f, -78.481529f, 55.350323f, 0.0f},
    {1027.483887f, -74.301239f, 55.471058f, 0.0f},
    {1024.683472f, -70.987854f, 55.355656f, 0.0f},
    {1023.972473f, -65.982864f, 55.349430f, 0.0f},
    {1026.934448f, -62.956783f, 55.339241f, 0.0f},
    {1030.494873f, -61.005817f, 55.339241f, 0.0f},
    {1030.494873f, -61.005817f, 55.339241f, 0.0f},
    {1037.647705f, -55.082851f, 55.348488f, 0.0f},
    {1036.857300f, -50.583542f, 55.471188f, 0.0f},
    {1035.398926f, -47.424313f, 55.484940f, 0.0f},
    {1031.898926f, -43.121082f, 55.359249f, 0.0f},
    {1028.377808f, -41.065453f, 55.433487f, 0.0f},
    {1024.665283f, -38.272064f, 55.353931f, 0.0f},
    {1022.077087f, -35.167114f, 55.344936f, 0.0f},
    {1019.372009f, -31.751467f, 55.335869f, 0.0f},
    {1017.256348f, -28.557459f, 55.327129f, 0.0f},
    {1014.674377f, -23.342880f, 55.348438f, 0.0f},
    {1013.636597f, -17.340637f, 55.376278f, 0.0f},
    {1014.523132f, -13.703154f, 55.385811f, 0.0f},
    {1017.688599f, -9.174082f, 55.363716f, 0.0f},
    {1021.419556f, -6.485737f, 55.363716f, 0.0f},
    {1026.289307f, -5.784576f, 55.363716f, 0.0f},
    {1028.801514f, -6.460843f, 55.363716f, 0.0f}
};
