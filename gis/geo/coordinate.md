# Coordinate

- [大地座標系統與二度分帶座標](https://www.sunriver.com.tw/grid_tm2.htm)
- https://hiking.biji.co/index.php?q=review&act=info&review_id=5989
- http://iot-sky.com/


- 大地座標系統
- 二度分帶座標

大地基準與座標格式
原則上，地表上任何一個地理位置都可以用大地基準 (Datum)＋座標格式 (Format/Grid) 兩個參數來標示。
- 在台灣常聽到的 TWD67、TWD97、WGS84 等，都是大地基準
- 而經緯度、UTM (六度分帶)、TM2 (二度分帶) 、電力座標等，指的是座標格式。 
  - 例如埔里虎子山原點，雖然有不同座標表示方式，指的都是同一個地理位置。

## TWD67
- 這套座標系統是採用 1967 年的國際地球原子計算，通稱為「TWD67」。
 

## TWD97
- 衛星定位發明後，對於地圖測量技術起了至重大變革，不需再透過天文觀測，即可計算地表任何地方的經緯度，不僅精度更高，且所測得的是適用於全球的一套座標系統，我國亦順應世界潮流予以採用，將此座標系統稱為「TWD97」(Taiwan Datum 1997)。

## WGS84
- GPS座標有許多種方式呈現，目前在台灣最普遍採用的是WGS84(World Geodetic System 1984)，包含Google 地圖也是採用此系統，因此本文就以WGS84的系統來說明。
- 即便在WGS84系統中的經緯度座標值也可以分成以下三種方式來呈現(以埔里虎子山三角點為例)：
  - 度(°)：N23.973875° , E120.982025° (北緯23.973875度, 東經120.982025度)
  - 度分(° ')：N23° 58.4325'   , E120° 58.9215' (北緯23度58.4325分, 東經120度58.9215分)
  - 度分秒(° ' ")：N23° 58' 25.95" ,  E120° 58' 55.29"(北緯23度58分25.95秒, 東經120度58分55.29秒)

- 以上這三種座標值之間要如何換算呢? 其實很簡單，只要記得下面這個原則就好：
  - 「１度＝６０分、１分＝６０秒」

- 最後一個問題是小數位數要取到第幾位才比較不會失真太多呢? 以Google地圖為例, Google地圖的度只取到小數第5位而已，在台灣地區的誤差大約只有1公尺左右，應該可以算是很精確了。不過這個誤差值在地球上每個緯度都不相同。
- 大家都知道地球是一個橢圓形的構造，以周長來說，赤道最長，大約是40075公里，被切成360個經度(東經180度+西經180度)，則每個經度的寬度大約是111.32公里(40075公里/360度)，則:
(1).若取到小數第5位，則誤差值約為  1.11 公尺
(2).若取到小數第4位，則誤差值約為 11.1 公尺
(3).若取到小數第3位，則誤差值約為 111 公尺
(4).若取到小數第2位，則誤差值約為   1.1 公里
(5).若取到小數第1位，則誤差值約為   11 公里