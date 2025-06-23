USE backend_cnpm;

INSERT INTO `roles` (`ID_Role`, `name`, `createdAt`, `updatedAt`) 
VALUES ('1', 'admin', current_timestamp(), current_timestamp()),
	   ('2', 'user', current_timestamp(), current_timestamp());

INSERT INTO `users` (`ID_User`, `ID_Role`, `fullname`, `email`, `phone_number`, `address`, `password`, `createdAt`, `updatedAt`) 
VALUES ('1', '1', 'Admin', 'admin@gmail.com', '0123456789', 'Số 1 Đại Cồ Việt', '$2a$10$Pzk.F.xNkWEYVvCCCMm4CeYlslFxX8giI7tWqi4Ckl.qDidvY1qUO', current_timestamp(), current_timestamp()),
('2', '2', 'Tester', 'tester@gmail.com', '0123456789', 'Số 1 Đại Cồ Việt', '$2a$10$c.CuXtWXx/swd0CgQOcp6OocssQMtyI/dOmLBJGJmnbAgD81U05wC', current_timestamp(), current_timestamp());

INSERT INTO `categories` (`ID_Category`, `name`, `createdAt`, `updatedAt`) 
VALUES (1, 'Quần áo nam', current_timestamp(), current_timestamp()),
	   (2, 'Quần áo nữ', current_timestamp(), current_timestamp()),
       (3, 'Quần áo ấm', current_timestamp(), current_timestamp());
       
INSERT INTO
    `products` (
        `ID_Product`,
        `ID_Category`,
        `title`,
        `price`,
        `discount`,
        `quantity`,
        `description`,
        `createdAt`,
        `updatedAt`
    )
VALUES (
        '1',
        '1',
        'Áo Thun Unisex Form Rộng Tay Lỡ Basic Màu Trơn',
        '150000',
        '20000',
        '500',
        'Áo thun chất liệu cotton co giãn thoáng mát, phù hợp mặc đi học, đi chơi hoặc mặc nhóm.',
        current_timestamp(),
        current_timestamp()
    ),
    (
        '2',
        '1',
        'Áo Sơ Mi Nam Dài Tay Trắng Công Sở Hàn Quốc',
        '250000',
        '30000',
        '300',
        'Thiết kế thanh lịch, form ôm nhẹ giúp tôn dáng, vải không nhăn, dễ ủi.',
        current_timestamp(),
        current_timestamp()
    ),
    (
        '3',
        '1',
        'Áo Khoác Bomber Nam Nữ Unisex Chất Vải Dày Dặn',
        '350000',
        '50000',
        '200',
        'Áo khoác phong cách Hàn Quốc cá tính, thích hợp mặc mùa thu đông.',
        current_timestamp(),
        current_timestamp()
    ),
    (
        '4',
        '2',
        'Quần Jean Nam Form Slim Fit Co Giãn Nhẹ',
        '280000',
        '40000',
        '400',
        'Chất jean bền, co giãn nhẹ, phong cách trẻ trung dễ phối đồ.',
        current_timestamp(),
        current_timestamp()
    ),
    (
        '5',
        '2',
        'Quần Ống Rộng Nữ Cạp Cao Chất Linen Thoáng Mát',
        '320000',
        '30000',
        '350',
        'Thiết kế thời trang, thích hợp mặc mùa hè hoặc đi chơi.',
        current_timestamp(),
        current_timestamp()
    ),
    (
        '6',
        '2',
        'Quần Short Jean Nữ Lưng Cao',
        '220000',
        '20000',
        '450',
        'Phong cách trẻ trung, năng động, chất jean co giãn thoải mái.',
        current_timestamp(),
        current_timestamp()
    ),
    (
        '7',
        '3',
        'Đầm Maxi Nữ Dự Tiệc Xẻ Tà Sang Trọng',
        '500000',
        '70000',
        '150',
        'Thiết kế quyến rũ, chất liệu mềm mại, phù hợp mặc tiệc hoặc sự kiện.',
        current_timestamp(),
        current_timestamp()
    ),
    (
        '8',
        '3',
        'Đầm Suông Công Sở Tay Lỡ',
        '400000',
        '60000',
        '200',
        'Phong cách lịch sự, nhã nhặn, thích hợp mặc đi làm.',
        current_timestamp(),
        current_timestamp()
    ),
    (
        '9',
        '3',
        'Đầm Xòe Tay Phồng Cổ Vuông Vintage',
        '370000',
        '50000',
        '180',
        'Phong cách cổ điển nhẹ nhàng, dễ thương và nữ tính.',
        current_timestamp(),
        current_timestamp()
    ),
    (
        '10',
        '1',
        'Áo Hoodie Nỉ Nam Nữ Form Rộng 2 Lớp',
        '320000',
        '30000',
        '300',
        'Áo hoodie giữ ấm tốt, thiết kế unisex, có nhiều màu để lựa chọn.',
        current_timestamp(),
        current_timestamp()
    );

INSERT INTO `vouchers` (`ID_Voucher`, `name`, `value`, `createdAt`, `updatedAt`) 
VALUES ('1', 'Voucher khuyến mãi nhân dịp năm mới 2025', '20000', current_timestamp(), current_timestamp()),
	('2', 'Merry Christmas', '50000', current_timestamp(), current_timestamp()),
	('3', 'Khuyến mãi nhân dịp lễ tình nhân valentine', '100000', current_timestamp(), current_timestamp()),
	('4', 'Hè rộn vang, tha hồ mua sắm', '20000', current_timestamp(), current_timestamp());

INSERT INTO `voucher_users` (`ID_VU`, `ID_Voucher`, `ID_User`, `createdAt`, `updatedAt`) 
VALUES (1, '4', '2', current_timestamp(), current_timestamp()),
(2, '3', '2', current_timestamp(), current_timestamp()),
(3, '2', '2', current_timestamp(), current_timestamp()),
(4, '1', '2', current_timestamp(), current_timestamp());

INSERT INTO `images` (`ID_Image`, `ID_Product`, `content`, `createdAt`, `updatedAt`) 
VALUES 
('1', '1', 'https://cdn-fsly.yottaa.net/5d669b394f1bbf7cb77826ae/www.bathandbodyworks.com/v~4b.21a/dw/image/v2/BBDL_PRD/on/demandware.static/-/Sites-master-catalog/default/dw6f601100/hires/026634409.jpg?sh=471&yocs=o_s_', current_timestamp(), current_timestamp()),
('2', '2', 'https://cdn-fsly.yottaa.net/5d669b394f1bbf7cb77826ae/www.bathandbodyworks.com/v~4b.21a/dw/image/v2/BBDL_PRD/on/demandware.static/-/Sites-master-catalog/default/dw7c8ce3f6/hires/026633943.jpg?sh=471&yocs=o_s_', current_timestamp(), current_timestamp()),
('3', '3', 'https://cdn-fsly.yottaa.net/5d669b394f1bbf7cb77826ae/www.bathandbodyworks.com/v~4b.21a/dw/image/v2/BBDL_PRD/on/demandware.static/-/Sites-master-catalog/default/dwcda2cc8e/hires/026588599.jpg?sh=471&yocs=o_s_', current_timestamp(), current_timestamp()),
('4', '4', 'https://r2d.com.vn/wp-content/uploads/2020/07/Scented-Wax-Melts-Cinnamon-Orange-scaled.jpg', current_timestamp(), current_timestamp()),
('5', '5', 'https://r2d.com.vn/wp-content/uploads/2020/07/Sap-thom-tinh-dau-sa-chanh.jpg', current_timestamp(), current_timestamp()),
('6', '6', 'https://m.media-amazon.com/images/I/81fpDEassPL._SL1500_.jpg', current_timestamp(), current_timestamp()),
('7', '7', 'https://m.media-amazon.com/images/I/71HleyFIsAL.jpg', current_timestamp(), current_timestamp()),
('8', '8', 'https://post.healthline.com/wp-content/uploads/2021/05/1253543-5-26-21-The-18-Best-Essential-Oils-for-Anxiety-732x549-Feature.jpg', current_timestamp(), current_timestamp()),
('9', '9', 'https://cdn.shopify.com/s/files/1/1011/1722/articles/a-guide-to-essential-oil-substitutes-banner.jpg?v=1650448896', current_timestamp(), current_timestamp()),
('10', '10', 'https://images.ctfassets.net/x0wnv07j8mtt/skuPrimaryImage3575/933bc4141110956d44d57cddaeefb089/Lavender_15ml_US_Website_2022.png?q=75&fm=jpg&w=1080&h=1080', current_timestamp(), current_timestamp()),
('11', '11', 'https://cf.shopee.vn/file/a66110b350a2dec087d11fa735bd6c5c', current_timestamp(), current_timestamp()),
('12', '11', 'https://cf.shopee.vn/file/a955a7f887d65b29904bd84537b4cfe6', current_timestamp(), current_timestamp()),
('13', '11', 'https://cf.shopee.vn/file/aa40193241b9c2de341b5a78c6d508f2"', current_timestamp(), current_timestamp());
