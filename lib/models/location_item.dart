
class LocationItem{
final int TraveId;
final double rating;
final double distance;
final double time;
final String province;
final String locationName;
 final String category;
final String imageURL;
bool isFavorated;
final String decription;
bool isSelected;

  LocationItem(
    {
    required this.isSelected,
    required this.category,
    required this.isFavorated,
    required this.TraveId, 
    required this.rating, 
    required this.distance, 
    required this.time, 
    required this.province, 
    required this.locationName, 
    required this.imageURL, 
    required this.decription});
    static List<LocationItem> locationtList = [
    LocationItem(
        TraveId: 0,
        province: 'Đà Lạt',
        category: 'Địa điểm phổ biến',
        locationName: 'Nhà Thờ Con Gà',
        rating: 4,
        distance: 254,
        time: 10,
        imageURL: 'assets/images/location_00.png',
        isFavorated: true,
        decription:
        'Nhà Thờ Con Gà là địa điểm du lịch thuộc hàng “kinh điển” đối với các tín đồ du lịch Đà Lạt.',
        isSelected: false),
    LocationItem(
        TraveId: 1,
        province: 'Đà Lạt',
        category: 'Địa điểm phổ biến',
        locationName: 'Đồi Robin',
        rating: 5,
        distance: 267,
        time: 11,
        imageURL: 'assets/images/location_01.png',
        isFavorated: true,
        decription:
       'Nằm trên đèo Prenn thơ mộng, đồi Robin đã trở thành một điểm tham quan hấp dẫn bởi nơi đây sở hữu tầm nhìn vô cùng thoáng đãng để chiêm ngưỡng vẻ đẹp của Đà Lạt.',
        isSelected: false),
    LocationItem(
        TraveId: 2,
        province: 'Đà Lạt',
        category: 'Địa điểm phổ biến',
        locationName: 'Hồ Xuân Hương',
        rating: 5,
        distance: 192,
        time: 8,
        imageURL: 'assets/images/location_02.png',
        isFavorated: true,
        decription:
        'Bất cứ ai khi đến trung tâm Đà Lạt đều cũng ngỡ ngàng trước vẻ đẹp của hồ Xuân Hương',
        isSelected: false),
    LocationItem(
        TraveId: 3,
        province: 'Đà Lạt',
        category: 'Địa điểm mới',
        locationName: 'Puppy Farm',
        rating: 3.5,
        distance: 156,
        time: 6,
        imageURL: 'assets/images/location_03.png',
        isFavorated: true,
        decription:
        'Một địa điểm chiếm được sự yêu mến của rất nhiều người, bởi đây là ngôi nhà chung của hơn 150 chú chó “cưng xỉu”.',
        isSelected: false), 
    LocationItem(
        TraveId: 4,
        province: 'Đà Lạt',
        category: 'Địa điểm mới',
        locationName: 'Cổng Trời Bali Green Hills',
        rating: 5,
        distance: 148,
        time: 4,
        imageURL: 'assets/images/location_04.png',
        isFavorated: true,
        decription:
        'Cổng trời Đà Lạt là phiên bản Việt của Cổng trời Bali tại ngôi đền Pura Lempuyang Luhur, Indonesia.',
        isSelected: false),
    LocationItem(
        TraveId: 5,
        province: 'Đà Lạt',
        category: 'Địa điểm mới',
        locationName: 'Chợ Đêm',
        rating: 4.5,
        distance: 220,
        time: 2,
        imageURL: 'assets/images/location_05.png',
        isFavorated: true,
        decription:
        'Từ lâu, chợ đêm Đà Lạt đã thành điểm đến quen thuộc mà bất cứ ai khi đến du lịch Đà Lạt đều muốn lui tới.',
        isSelected: false),
    LocationItem(
        TraveId: 6,
        province: 'Đà Lạt',
        category: 'Địa điểm mới',
        locationName: 'Thác Prenn',
        rating: 5,
        distance: 214,
        time: 9,
        imageURL: 'assets/images/location_06.png',
        isFavorated: true,
        decription:
        'Khung cảnh thiên nhiên là sự kết hợp khéo léo của tiếng thác đổ chậm, tiếng chim hót, tiếng gió thổi đem lại cảm giác thư giãn, dễ chịu tuyệt đối.',
        isSelected: false),
    LocationItem(
        TraveId: 7,
        province: 'Đà Lạt',
        category: 'Địa điểm gần bạn',
        locationName: 'Thác Voi',
        rating: 4.5,
        distance: 135,
        time: 5,
        imageURL: 'assets/images/location_07.png',
        isFavorated: true,
        decription:
        'Đến thác Voi, bạn có thể thử sức đi bộ lên đỉnh thác với 145 bậc đá gắn liền vào vách núi hiểm trở trong tiếc thác đổ ầm ầm bên tai.',
        isSelected: false),
    LocationItem(
        TraveId: 8,
        province: 'Đà Lạt',
        category: 'Địa điểm gần bạn',
        locationName: 'Đồi Mộng Mơ',
        rating: 4,
        distance: 145,
        time: 8,
        imageURL: 'assets/images/location_08.png',
        isFavorated: true,
        decription:
        'Đồi Mộng Mơ là một trong những khu du lịch Đà Lạt mang đậm chất thơ, nơi bạn có thể chiêm ngưỡng nét đẹp kinh diễm của nhiều loài hoa.',
        isSelected: false),
    
    ];
  
}