import 'package:flutter/material.dart';
import 'package:yolo/app/app_resources.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
      bool expand1 = false;
    bool expand2 = false;
    bool expand3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
        title: Text("Thông tin",
          style:  AppTextStyles.boldTextStyle(
            color: AppColors.white, fontSize: AppFontSizes.large),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Material(
        color: const Color(0xffEAECF0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Mô tả",style:  AppTextStyles.boldTextStyle(
              color: const Color(0xff667085), fontSize: AppFontSizes.small)),
              const SizedBox(height: 5,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Text("Ứng dụng hỗ trợ người nông dân nhận diện các loại bệnh phổ biến trên cây lúa bằng cách quét hình ảnh.",style:  AppTextStyles.boldTextStyle(
              color: const Color(0xff344054), fontSize: AppFontSizes.medium),),
            
                ),
                const SizedBox(height: 20),
                 Text("Nhận diện các loại bệnh",style:  AppTextStyles.boldTextStyle(
                    color: const Color(0xff667085), fontSize: AppFontSizes.small)),
                    const SizedBox(height: 10,),
                

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Column(
                    children: [
                                          Text.rich(
                        TextSpan(children: [
                          TextSpan(text: "1. Bệnh bạc lá                                                   ",
                           style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.medium),),
                           WidgetSpan(child: InkWell(
                            onTap: () {
                              setState(() {
                                expand1 = !expand1;
                              });
                            
                            },
                            child: expand1 ? const Icon(Icons.arrow_drop_down,color: Colors.black,) : const Icon(Icons.arrow_drop_up,color: Colors.black,),
                           )),
                           TextSpan(text: "\n(theo Viện nghiên cứu lúa gạo quốc tế:",style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.medium),),
                           TextSpan(text: "http://www.knowledgebank.irri.org", style:  AppTextStyles.boldTextStyle(
                           color: Colors.blue, fontSize: AppFontSizes.medium),),
                           TextSpan(text: ")", style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.medium),),
                        ])),
                      Row(
                        children: [Expanded(child: Image.asset("assets/images/blight_3.png"),),const SizedBox(width: 10,),Expanded(flex: 2 ,child: Image.asset("assets/images/blight_1.png")),],
                      ),
                      const SizedBox(height: 10,),
                       if (expand1)
                      Text("- Bệnh bạc lá lúa là một bệnh phổ biến do vi khuẩn Xanthomonas oryzae pv. oryzae gây ra. Bệnh này thường xuất hiện ở những vùng trồng lúa có khí hậu nhiệt đới và ôn hòa, đặc biệt là khi thời tiết mưa ẩm và nhiệt độ cao.",style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.small),),
                      if (expand1)
                      Text("\n- Nguyên nhân: Bệnh phát sinh từ vi khuẩn sống trên cỏ dại hoặc gốc rạ của các cây lúa đã nhiễm bệnh, lây lan qua gió, mưa hoặc nước tưới. Sử dụng phân bón không đúng cách và thâm canh không hợp lý cũng tạo điều kiện cho vi khuẩn phát triển​.",style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.small),),
                      if (expand1)
                      Text("\n- Triệu chứng:  Bệnh xuất hiện dưới dạng các vết sọc nước màu vàng đến trắng ở rìa lá, bắt đầu từ đầu lá hoặc mép lá và lan dần vào phiến lá.",style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.small),),
                      if (expand1)
                      Text("\n- Hậu quả: Khi bệnh nặng, lá lúa có thể bị cháy khô và cây lúa còi cọc, không tạo hạt hoặc hạt lép, ảnh hưởng lớn đến năng suất và chất lượng thu hoạch.",style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.small),),
                      if (expand1)
                      Text("\n- Phòng bệnh: Thường xuyên kiểm tra đồng ruộng, phát hiện sớm các triệu chứng bệnh để có biện pháp xử lý kịp thời. Áp dụng kết hợp các biện pháp canh tác, sinh học và hóa học để kiểm soát bệnh hiệu quả và bền vững.​",style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.small),),
                    ],
                  ),
            
                ),
                const SizedBox(height: 20),
                   Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Column(
                    children: [
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(text: "2. Bệnh đạo ôn                                                   ",
                           style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.medium),),
                           WidgetSpan(child: InkWell(
                            onTap: () {
                              setState(() {
                                expand2 = !expand2;
                              });
                            
                            },
                            child: expand2 ? const Icon(Icons.arrow_drop_down,color: Colors.black,) : const Icon(Icons.arrow_drop_up,color: Colors.black,),
                           )),
                           TextSpan(text: "\n(theo Viện nghiên cứu lúa gạo quốc tế:",style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.medium),),
                           TextSpan(text: "http://www.knowledgebank.irri.org", style:  AppTextStyles.boldTextStyle(
                           color: Colors.blue, fontSize: AppFontSizes.medium),),
                           TextSpan(text: ")", style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.medium),),
                        ]),
                      ),
                      Row(
                        children: [Expanded(child: Image.asset("assets/images/blast_2.png"),),const SizedBox(width: 10,),Expanded(flex: 2 ,child: Image.asset("assets/images/blast_1.png")),],
                      ),
                      const SizedBox(height: 10,),
                       if (expand2)
                      Text("- Bệnh đạo ôn lúa là một trong những bệnh hại phổ biến và nghiêm trọng nhất đối với cây lúa, gây ra bởi nấm Pyricularia oryzae. Bệnh này có thể ảnh hưởng đến tất cả các giai đoạn phát triển của cây lúa, từ giai đoạn mạ đến khi lúa trổ bông, và có thể gây thiệt hại nặng nề đến năng suất và chất lượng lúa.",style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.small),),
                       if (expand2)
                      Text("\n- Nguyên nhân:  Bệnh phát sinh và phát triển mạnh trong điều kiện thời tiết âm u, mưa phùn, nhiệt độ từ 18 đến 26 độ C và độ ẩm cao. Bón nhiều phân đạm, gieo sạ dày, lá lúa nằm ngang, thiếu nước và nhiều cỏ dại cũng là các yếu tố thuận lợi cho bệnh phát triển​.",style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.small),),
                       if (expand2)
                      Text("\n- Triệu chứng:  Trên lá, vết bệnh ban đầu nhỏ như đầu mũi kim màu xanh xám, sau đó lan rộng thành hình thoi với trung tâm màu nâu đậm và viền xám trắng. Các vết này có thể liên kết với nhau tạo thành mảng lớn, khiến lá bị cháy khô.",style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.small),),
                       if (expand2)
                      Text("\n- Hậu quả: Khi bệnh tấn công cổ bông và cổ gié, nó làm cho hạt lúa không vào gạo, dẫn đến hiện tượng bạc bông, lúa lép trắng, và gãy cổ bông​. Trên cuống hạt, nấm gây bệnh làm lững hạt, gây hiện tượng muối hạt, làm hạt lúa rụng nhiều khi cắt.",style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.small),),
                       if (expand2)
                      Text("\n- Phòng bệnh: Thường xuyên kiểm tra đồng ruộng, phát hiện sớm các triệu chứng bệnh để có biện pháp xử lý kịp thời.  Thực hiện vệ sinh đồng ruộng, xử lý hạt giống trước khi gieo, không gieo sạ quá dày, bón phân cân đối và giữ mực nước hợp lý.​",style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.small),),
                    ],
                  ),
            
                ),
                  const SizedBox(height: 20),
                   Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Column(
                    children: [
                                           Text.rich(
                        TextSpan(children: [
                          TextSpan(text: "3. Bệnh đốm nâu                                                ",
                           style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.medium),),
                           WidgetSpan(child: InkWell(
                            onTap: () {
                              setState(() {
                                expand3 = !expand3;
                              });
                            
                            },
                            child: expand3 ? const Icon(Icons.arrow_drop_down,color: Colors.black,) : const Icon(Icons.arrow_drop_up,color: Colors.black,),
                           )),
                           TextSpan(text: "\n(theo Viện nghiên cứu lúa gạo quốc tế:",style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.medium),),
                           TextSpan(text: "http://www.knowledgebank.irri.org", style:  AppTextStyles.boldTextStyle(
                           color: Colors.blue, fontSize: AppFontSizes.medium),),
                           TextSpan(text: ")", style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.medium),),
                        ]),),
                      Row(
                        children: [Expanded(child: Image.asset("assets/images/bs_2.png"),),const SizedBox(width: 10,),Expanded(flex: 2 ,child: Image.asset("assets/images/bs_1.png")),],
                      ),
                      const SizedBox(height: 10,),
                       if (expand3)
                      Text("Bệnh đốm nâu trên lúa là một bệnh phổ biến và gây hại nghiêm trọng, đặc biệt là trong các điều kiện đất nghèo dinh dưỡng hoặc đất bị phèn, đất cát gần chân núi. Bệnh này do nấm Bipolaris oryzae gây ra, phát triển mạnh trong điều kiện thời tiết ẩm ướt và nhiệt độ cao.",style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.small),),
                       if (expand3)
                      Text("\n- Triệu chứng:  Xuất hiện các đốm nhỏ như đầu mũi kim màu nâu nhạt. Những vết này sau đó lớn dần và chuyển thành hình bầu dục nhỏ, giống như hạt mè, có màu nâu hoặc nâu đậm trên cả hai mặt lá, thường có quầng vàng nhỏ xung quanh. Vết bệnh nặng: Khi điều kiện thuận lợi cho bệnh phát triển, vết bệnh lớn hơn, liên kết với nhau tạo thành các mảng lớn, khiến lá bị cháy khô, giảm hiệu suất quang hợp​.",style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.small),),
                       if (expand3)
                      Text("\n- Hậu quả: Bệnh làm giảm hiệu suất quang hợp của lá, ảnh hưởng đến sự phát triển của cây và dẫn đến năng suất thấp, hạt lúa kém chất lượng​.",style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.small),),
                       if (expand3)
                      Text("\n- Phòng bệnh: Thường xuyên kiểm tra đồng ruộng, phát hiện sớm các triệu chứng bệnh để có biện pháp xử lý kịp thời. Áp dụng kết hợp các biện pháp canh tác, sinh học và hóa học để kiểm soát bệnh hiệu quả và bền vững.​",style:  AppTextStyles.boldTextStyle(
                           color: const Color(0xff344054), fontSize: AppFontSizes.small),),
                      
                      
                    ],
                  ),
                )
                
              ],
            ),
          ),
        ),
      ),
    );
    
    
  }
}