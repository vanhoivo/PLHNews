create database quanlixemtintuc;
use quanlixemtintuc;

create table baiviet(
        id int(10) not null auto_increment PRIMARY key,
        tieude nvarchar(255),
        tacgia nvarchar(255), 
        ngaytao datetime default current_timestamp,
        ngaysua datetime default current_timestamp,
        tomtat nvarchar(16383),
        noidung text charset utf8,
        hinh varchar(255) default 'images/IMG_Default_NV.png',
        madm int(10),
        foreign key(madm) references danhmuc(id)
);

create table danhmuc(
id int(10) not null auto_increment PRIMARY key,
name nvarchar(255),
mota nvarchar(16383),
unique(name)
);

insert into danhmuc(name, mota) values('Khoa học', 'Tin tức về khoa học.');
insert into danhmuc(name, mota) values('Công nghệ', 'Tin tức về công nghệ.');
insert into danhmuc(name, mota) values('Thể thao', 'Tin tức về thể thao.');
insert into danhmuc(name, mota) values('Giáo dục', 'Tin tức về giáo dục.');
insert into danhmuc(name, mota) values('Tổng hợp', 'Tin tức tổng hợp.');

select * from danhmuc;

create table baiviet(
        id int(10) not null auto_increment PRIMARY key,
        name nvarchar(255),
        tacgia nvarchar(255), 
        tomtat nvarchar(16383),
        noidung text charset utf8,
        hinh nvarchar(255) default 'images/IMG_NV.png',
        madm nvarchar(255)
);

select * from baiviet;

insert into baiviet(name, tacgia, tomtat, noidung, hinh, madm) values(
n'Thế giới phong thánh cho Pep Guardiola quá sớm',
n'che0be0',
n'<b>Vị thế huyền thoại của Pep Guardiola được xác tín nhờ những năm tháng rực rỡ trên cương vị HLV Barcelona. Tuy nhiên, có vẻ như thế giới đã phong huyền thoại cho Pep quá sớm.</b>',
n'Sau khi dễ dàng giành tới 2 chức vô địch Champions League cùng Barcelona, Pep Guardiola được phong thánh. Dư luận dễ bị choáng ngợp bởi những chiến tích dồn dập và dĩ nhiên, vào thời điểm Pep Guardiola vô địch từ La Liga đến Champions League dễ như lấy đồ trong túi, chẳng có bất kỳ logic nào để nghi ngờ tài năng ông.

Những người đủ lý trí để chỉ ra rằng, với dàn siêu sao xuất sắc hiếm có trong lịch sử bóng đá như Messi, Iniesta, Xavi, Henry, Puyol… thực tế Barca vào thời điểm thịnh vượng chẳng cần đến một huấn luyện viên (HLV) thiên tài cũng có thể vô địch. Bằng chứng là chỉ cần bê nguyên dàn hảo thủ của Barca đi đánh trận, đội tuyển Tây Ban Nha cũng đã lần đầu tiên trong lịch sử vô địch World Cup và Euro.
<br />Nguồn: https://news.zing.vn/the-gioi-phong-thanh-cho-pep-guardiola-qua-som-post937170.html',
'images/img1.png',
'THỂ THAO'
);

insert into baiviet(name, tacgia, tomtat, noidung, hinh, madm) values(
n'Ý tưởng quái đản của Pep Guardiola làm hại Man City',
n'che0be0',
n'<b>Có lẽ sau đêm ở Etihad, những thành viên trong ban lãnh đạo Man City sẽ họp bàn về tương lai của huấn luyện viên Pep Guardiola.</b>',
n'Năm thứ 3 liên tiếp Pep không thể đưa Man City vào bán kết Champions League. Sau khi ném nửa tỷ bảng vào thị trường chuyển nhượng, những gì đội bóng thành Manchester thu về ở cúp châu Âu là con số 0. Lúc này, người ta tự hỏi Pep có thực sự tài giỏi như giới chuyên môn ca tụng.

Từ London đến Manchester, chỉ trong một tuần, Pep thực hiện những ý tưởng quái đản. Ở tứ kết lượt đi của Champions League trên sân Tottenham, chiến lược gia người Tây Ban Nha bất ngờ cất tiền vệ Kevin de Bruyne lên ghế dự bị. Quyết định khó hiểu đó góp phần khiến Man City trả giá.',
'images/img2.png',
'THỂ THAO'
);

insert into baiviet(name, tacgia, tomtat, noidung, hinh, madm) values(
n'Những tài năng trẻ giá 1 euro như Frenkie De Jong đầy rẫy ở Hà Lan',
n'vhv101',
n'<b>Truyền thông gọi thương vụ bán Frenkie De Jong cho Barca của Ajax là "món hời thập kỷ", bởi đội bóng Hà Lan ban đầu mua tài năng 21 tuổi với giá chỉ 1 euro.</b>',
n'Hè này, De Jong sẽ gia nhập Barca với giá 75 triệu euro. Anh ký hợp đồng với đại diện xứ Catalonia theo bản hợp đồng có thời hạn tới năm 2024. Trước đó vào năm 2015, Ajax tốn chỉ 1 euro, cộng thêm cho mượn vài cầu thủ, để mua De Jong từ Willem II.

Ngoài phí chuyển nhượng, Ajax đồng ý trả thêm 10% tổng phí chuyển nhượng cho Willem II khi bán tiền vệ 21 tuổi trong tương lai. Như vậy, đội bóng cũ của De Jong sắp tới sẽ nhận 7,5 triệu euro trong điều khoản đã ký cùng Ajax. Đây là khoản tiền rất lớn với họ.',
'images/img3.png',
'THỂ THAO'
);

insert into baiviet(name, tacgia, tomtat, noidung, hinh, madm) values(
n'Bầu Tú nói gì khi các CLB Việt Nam chỉ xếp hạng 22 châu Á?',
n'vhv101',
n'<b>Chủ tịch VPF Trần Anh Tú tin rằng nhà tổ chức và các CLB phải nỗ lực nhiều hơn nếu muốn bóng đá Việt Nam đạt được vị thế tốt hơn trong mắt bạn bè khu vực và châu Á.</b>',
n'Vừa qua, Liên đoàn bóng đá châu Á (AFC) đã công bố BXH các CLB châu Á. Theo BXH này, các CLB chỉ xếp hạng 22 châu Á, đứng sau nhiều nước như Thái Lan (hạng 8), Singapore (16), Malaysia (17).
Để tiện so sánh, bóng đá Thái Lan có một suất vào thẳng vòng bảng AFC Champions League và 1 suất dự vòng loại. Việc liên tục được cọ xát với các đối thủ hàng đầu châu lục đã giúp Buriram United hay Muangthong tiến bộ rất nhanh. Những năm gần đây, người Thái thường xuyên có đại diện chơi ở vòng 16 đội mạnh nhất châu lục. Tại Đông Nam Á, Thái Lan là nước duy nhất làm được điều đó.',
'images/img4.png',
'THỂ THAO'
);

insert into baiviet(name, tacgia, tomtat, noidung, hinh, madm) values(
n'Game bắn súng 7554 do người Việt làm đang được miễn phí',
n'cloud9',
n'<b>Tựa game bắn súng góc nhìn thứ nhất (FPS) 7554 do người Việt Nam làm đang được nhà phát triển tặng miễn phí nhân dịp kỷ niệm 65 năm chiến thắng Điện Biên Phủ.</b>',
n'Nhân dịp kỷ niệm 65 năm chiến thắng Điện Biên Phủ (7/5/1954 - 7/5/2019) và kỷ niệm 10 năm làm game của Hiker Games (Emobi Games cũ), nhà phát triển đã tặng miễn phí 7554 cho mọi người. Game thủ có thể vào trang chủ của 7554 để tải về bản cài đặt.

Vào năm 2011, “đứa con tinh thần” 7554 của Emobi Games đã gây sốt cộng đồng game thủ. Đây là tựa game FPS do người Việt Nam phát triển và sản xuất. 7554 ra đời khi mà cả nhân lực, công nghệ và chính sách cho game tại thời điểm đó vẫn còn nhiều khó khăn so với thế giới.',
'images/img5.png',
'CÔNG NGHỆ'
);

insert into baiviet(name, tacgia, tomtat, noidung, hinh, madm) values(
n'Đã thành công trong việc dùng máy tính dự đoán tương lai',
n'cloud9',
n'<b>Các máy tính "tiên tri" sử dụng điện toán lượng tử, vượt qua được những rào cản của máy tính truyền thống vốn sử dụng hệ thống tính toán nhị phân.</b>',
n'Nhóm các nhà khoa học từ Đại học Griffith, Australia và Đại học Công nghệ Nanyang (NTU), Singapore đã phát triển một cỗ máy lượng tử mô phỏng chính xác các kết quả trong tương lai.

Nghiên cứu này có ý nghĩa rất lớn tại thời điểm ngành cơ học lượng tử và học máy (trí tuệ nhân tạo) đang dần giao thoa nhau như hiện nay.',
'images/img6.png',
'CÔNG NGHỆ'
);

insert into baiviet(name, tacgia, tomtat, noidung, hinh, madm) values(
n'Ghi hồ sơ đăng ký dự thi THPT quốc gia 2019 thế nào cho đúng?',
n'cloud9',
n'<b>TTO - Từ hôm nay 1-4 đến 20-4, học sinh lớp 12 sẽ chính thức nộp hồ sơ đăng ký dự thi THPT quốc gia và đăng ký nguyện vọng xét tuyển vào các trường đại học năm 2019.</b>',
n'Việc phải ghi chính xác thông tin trên hồ sơ rất quan trọng với thí sinh, nếu ghi không đúng sẽ gặp nhiều rắc rối về sau.

Để giúp thí sinh chuẩn bị bộ hồ sơ đăng ký dự thi THPT quốc gia 2019 và đăng ký xét tuyển đại học năm 2019 tốt nhất, Tuổi Trẻ Online ghi lại hướng dẫn của các chuyên gia.

Hồ sơ gồm những gì?

ThS Nguyễn Mạnh Hùng - chuyên viên chính Vụ Giáo dục đại học - Bộ GD-ĐT, khuyên trước khi khai phiếu đăng ký dự thi, thí sinh phải đọc kỹ các mục và bản hướng dẫn ghi phiếu, điều nào chưa rõ thí sinh cần hỏi cán bộ tiếp nhận đăng ký dự thi để được hướng dẫn.

Đồng thời, thí sinh cần tra cứu thông tin về mã sở GD-ĐT, mã tỉnh/huyện, mã xã/phường, mã trường THPT, đối tượng ưu tiên, khu vực tuyển sinh.

Mẫu hồ sơ đăng ký dự thi THPT quốc gia và xét tuyển vào đại học, cao đẳng, trung cấp nhóm ngành đào tạo giáo viên năm 2019 gồm:

• 1 bì đựng phiếu đăng ký dự thi có dán ảnh, Phiếu số 1, Phiếu số 2 và tờ hướng dẫn ghi phiếu

• Bản sao 2 mặt Chứng minh nhân dân hoặc Thẻ căn cước công dân được dán trên 1 mặt của tờ giấy A4

• 3 ảnh 4×6 kiểu chân dung

Thí sinh khai thông tin cần thiết trên bì đựng Phiếu đăng ký dự thi, Phiếu số 1 - 2 (thông tin phải giống nhau ở tất cả các mục tương ứng trên bì và hai phiếu) rồi nộp cho nơi tiếp nhận đăng ký dự thi, kèm theo bản sao (photocopy) 2 mặt Chứng minh nhân dân hoặc Thẻ căn cước công dân trên 1 mặt tờ giấy A4 và hai ảnh cỡ 4x6 kiểu chân dung, chụp trong vòng 6 tháng (ghi rõ họ tên, ngày, tháng, năm sinh vào mặt sau ảnh, hai ảnh này đựng trong phong bì nhỏ).

Ngoài ra, phải dán thêm một ảnh vào vị trí đã xác định ở mặt trước bì đựng phiếu đăng ký dự thi. Trường THPT nơi thí sinh đang học hoặc công an xã phường nơi thí sinh tự do đăng cư trú k‎ý tên và đóng dấu giáp lai lên ảnh.

"Thí sinh hoàn toàn chịu trách nhiệm về thông tin khai trong phiếu đăng ký dự thi", ông Hùng nhắc nhở.

Cách ghi phiếu đăng ký dự thi và đăng k‎‎ý xét tuyển chính xác

ThS Lê Văn Hiển - phó trưởng phòng đào tạo Trường ĐH Luật TP.HCM, cũng lưu ý ‎: "Thí sinh ghi đầy đủ thông tin bằng chữ in hoa có dấu, bằng số hoặc bằng chữ viết thường theo yêu cầu cụ thể của từng mục. Thông tin điền vào cần rõ ràng, dễ đọc, không tẩy xóa".',
'images/img7.png',
'GIÁO DỤC'
);

insert into baiviet(name, tacgia, tomtat, noidung, hinh, madm) values(
n'Giao diện mới của menu Start trong Windows 10 19H2 là đây!',
n'cloud9',
n'<b>Chắc hẳn nhiều người trong số chúng ta đã từng được nghe nói rằng menu Start của Windows 10 sẽ được thiết kế lại trong một bản cập nhật lớn sắp tới. Cụ thể, thiết kế mới này sẽ ít chú trọng hơn hoặc thậm chí là loại bỏ hẳn Live Tiles, thay thế chúng bằng các biểu tượng tĩnh (static icon) nhỏ.</b>',
n'Nhiều ý kiến cho rằng đây không phải là cải tiến mà là một sự thụt lùi, khiến cho giao diện menu Start quay về thời kỳ của Windows 7. Tuy nhiên các chuyên gia vẫn tin tưởng rằng động thái lần này mà Microsoft thực hiện trên menu Start không chỉ đơn thuần là một thay đổi về mặt hình thức, mà nhiều khả năng còn chứa đựng những tính năng thú vị khác nữa.
Microsoft dự kiến sẽ giới thiệu giao diện menu Start mới của mình trong Windows 10 19H2 vào nửa cuối năm nay. Hãy cùng chờ xem sự thay đổi này sẽ thực sự hiện ra như thế nào và có thể mang lại hiệu quả ra sao!',
'images/img8.png',
'CÔNG NGHỆ'
);

insert into baiviet(name, tacgia, tomtat, noidung, hinh, madm) values(
n'CHÍNH THỨC: Xuân Trường và Văn Lâm xuất hiện trong PES 19',
n'cloud9',
n'<b>PES 19 đã sở hữu bản quyền Thai League vào mùa Hè năm ngoái và hiện Xuân Trường cùng Văn Lâm đã chính thức được cập nhật vào phiên bản này.</b>',
n'Với sự hợp tác giữa LĐBĐ Thái Lan và công ty KONAMI, ĐTQG và giải VĐQG của xứ Chùa Vàng sẽ chính thức góp mặt trong tựa game nổi tiếng PES 2019 vào 9/2018. Tuy nhiên, mãi đến cuối tháng 3/2019, Lương Xuân Trường và Đặng Văn Lâm mới chính thức xuất hiện trong phiên bản này.

Hiện cả hai của cầu thủ của Việt Nam thi đấu tại Thai League vẫn chưa được vẽ mặt cụ thể và chỉ xuất hiện với nhân vật không có biểu cảm. Dù là thủ môn đắt giá nhất lịch sử bóng đá Thái Lan, Văn Lâm chỉ được đánh giá ở mức 63, thuộc tầm trung của CLB Muangthong United.',
'images/img9.png',
'GAME'
);

insert into baiviet(name, tacgia, tomtat, noidung, hinh, madm) values(
n'Bộ Công an loại 25 sinh viên từ Sơn La sau vụ gian lận điểm',
n'cloud9',
n'<b>16 sinh viên Học viện Cảnh sát nhân dân, 7 sinh viên Học viện An ninh nhân dân sẽ bị trả về gia đình.</b>',
n'Ngày 17/4, Cục Đào tạo, Bộ Công an cho biết đã nhận danh sách sinh viên được nâng điểm thi THPT quốc gia 2018 từ Sở Giáo dục và Đào tạo Sơn La. Cục Đào tạo đã chuyển danh sách về trường trực thuộc và bàn giao 25 em này về đơn vị sơ tuyển tại Sơn La để làm thủ tục trả cho gia đình quản lý.

Trong 25 sinh viên bị trả về, 7 em trúng tuyển Học viện An ninh nhân dân, 16 em đỗ Học viện Cảnh sát nhân dân và 2 em vào Đại học Phòng cháy chữa cháy. Ngoài thí sinh lớp 12 dự thi, trong số này còn có một số em đang thực hiện nghĩa vụ.',
'images/img10.png',
'THỜI SỰ'
);

insert into baiviet(name, tomtat, tacgia, noidung, hinh, madm) values(
n'De Gea xin lỗi CĐV sau thảm bại của Man Utd',
n'Thủ môn Man Utd thừa nhận những gì anh và đồng đội thể hiện trong trận thua Everton 0-4 hôm 21/4 là kém xa kỳ vọng của người hâm mộ.',
n'Cloud9',
n'"Thật khó để nói nên lời cảm xúc trong tôi hôm nay", David de Gea viết trên Twitter sau trận thua tại Goodison Park. "Với tư cách đội trưởng, tôi muốn nói rằng cách đội bóng chơi hôm nay, chưa nói đến kết quả, là rất không tương xứng với sự kỳ vọng khi chúng tôi khoác trên người chiếc áo Man Utd".
De Gea hôm qua xuất phát với tấm băng đội trưởng Man Utd trên tay, nhưng anh phải cùng Man Utd nhận hai bàn thua ngay trong hiệp một. Trong tình huống Gylfi Sigurdsson sút xa nâng tỷ số lên 2-0 ở phút 28, De Gea bị nhiều nhà chuyên môn chỉ trích rằng anh phản ứng quá chậm chạp khi đổ người và không kịp cản bóng.
&#13;&#10;
<i><b>Nguồn: https://vnexpress.net/bong-da/de-gea-xin-loi-cdv-sau-tham-bai-cua-man-utd-3912758.html</b></i>
',
'images/img11.png',
'THỂ THAO'
);

insert into baiviet(name, tomtat, tacgia, noidung, hinh, madm) values(
n'Người dân đông nghịt ở bến xe Miền Tây, sân bay Tân Sơn Nhất',
n'Tối 26/4, người dân đổ về bến xe đông nghịt. Tại Tân Sơn Nhất, máy bay liên tục trễ chuyến khiến lượng khách ngồi chờ ken đặc.',
n'Cloud9',
n'Kỳ nghỉ lễ dịp 30/4 kéo dài 5 ngày, từ 27/4 đến hết 1/5
Từ chiều 26/4, cửa ngõ các thành phố lớn và sân bay Tân Sơn Nhất bắt đầu đông đúc
Vietnam Airlines và Jetstar Pacific cho biết sẽ cung ứng gần 1 triệu chỗ (xấp xỉ 4.700 chuyến bay) trên các đường bay nội địa và quốc tế. Các bến xe tăng gấp đôi công suất
&#13;&#10;
<i><b>Nguồn: https://news.zing.vn/nguoi-dan-dong-nghit-o-ben-xe-mien-tay-san-bay-tan-son-nhat-post940122.html</b></i>
',
'images/img12.png',
'THỜI SỰ'
);

insert into baiviet(name, tomtat, tacgia, noidung, hinh, madm) values(
n'Thủ tướng giao Bộ Công an xác minh hành vi hối lộ vụ gian lận điểm thi',
n'Sau bài viết của Zing.vn, Thủ tướng giao Bộ Công an xác minh các hành vi đưa và nhận hối lộ trong bê bối liên quan đến gian lận điểm thi ở một số địa phương.',
n'Cloud9',
n'Văn phòng Chính phủ vừa ban hành chỉ đạo của Thủ tướng Nguyễn Xuân Phúc liên quan đến vụ gian lận điểm thi ở một số địa phương.
Trích thông tin báo điện tử Zing.vn phản ánh việc Luật sư Đặng Văn Cường cho rằng, việc các phụ huynh thí sinh được nâng điểm đều có chức vụ là cơ sở cần thiết để làm rõ hành vi đưa và nhận hối lộ trong vụ việc này, Thủ tướng giao Bộ Công an chỉ đạo khẩn trương kiểm tra, xác minh thông tin phản ánh nêu trên.
&#13;&#10;
<i><b>Nguồn: https://news.zing.vn/thu-tuong-giao-bo-cong-an-xac-minh-hanh-vi-hoi-lo-vu-gian-lan-diem-thi-post940202.html</b></i>
',
'images/img13.png',
'THỜI SỰ'
);

insert into baiviet(name, tomtat, tacgia, noidung, hinh, madm) values(
n'Hàng không tung hơn 1 triệu vé, xe khách gấp đôi công suất dịp 30/4',
n'Nắm bắt xu hướng người dân về quê, đi du lịch trong dịp nghỉ lễ 30/4 - 1/5, các hãng vận tải hàng không, đường bộ, đường sắt đồng loạt tăng lượng phương tiện và tần suất hoạt động.',
n'Cloud9',
n'Do dịp 30/4 - 1/5 năm nay người dân được nghỉ 5 ngày liên tiếp nên nhu cầu đi lại tăng cao. Tại Hà Nội, dự kiến lượng khách tại các bến xe sẽ tăng khoảng 200% đến 250% so với ngày thường.
Trao đổi với Zing.vn, ông Nguyễn Anh Toàn, Giám đốc Công ty cổ phần Bến xe Hà Nội, cho biết đơn vị sẽ tăng cường 550 lượt xe khách phục vụ người dân trong dịp nghỉ lễ. Trong đó bến xe Giáp Bát tăng 250 lượt, bến xe Mỹ Đình tăng 230 lượt và bến xe Gia Lâm tăng 70 lượt.
&#13;&#10;
<i><b>Nguồn: https://news.zing.vn/hang-khong-tung-hon-1-trieu-ve-xe-khach-gap-doi-cong-suat-dip-30-4-post940035.html</b></i>
',
'images/img14.png',
'THỜI SỰ'
);