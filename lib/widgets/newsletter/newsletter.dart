import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';

//import 'package:sendgrid_mailer/sendgrid_mailer.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsletterWidget extends StatelessWidget {
  const NewsletterWidget({
    Key? key,
  }) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
  final TextEditingController subjectController = TextEditingController();
 final TextEditingController bodyController = TextEditingController();
    return DefaultPadding(
      vertical: 46,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 1170.sm,
            height: 600.sm,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30).r,
              color: const Color(0xFFFFD482),
            ),
            child: Assets.intersect.image(),
          ),
          Column(
            children: [
              Text(
                'Sign up to our newsletter',
                style: TextStyles.inter(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              16.verticalSpaceFromWidth,
              Text(
                'Recieve latest news, update, and many other things every week.',
                style: inter16,
              ),
              40.verticalSpaceFromWidth,
              Container(
                width: 450.sm,
                height: 60.sm,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12).r,
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: subjectController,
                          decoration: InputDecoration(
                            hintText: 'Enter Your subject',
                            border: InputBorder.none,
                            // contentPadding: EdgeInsets.symmetric(
                            //   horizontal: 30,
                            //   vertical: 15,
                            // ).w,
                            hintStyle: inter16,
                          ),
                          textAlignVertical: TextAlignVertical.center,
                        ),
                      ),
                      
                      


                      
                    ],
                  ),
                ),
              ),
          
           16.verticalSpaceFromWidth,
          //text mail part 
 Container(
                width: 450.sm,
                height: 200.sm,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12).r,
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: bodyController,
                          maxLength: 600,
                          maxLines: 6,
                          decoration: InputDecoration(
                            
                            hintText: 'Enter Your message',
                            border: InputBorder.none,
                            // contentPadding: EdgeInsets.symmetric(
                            //   horizontal: 30,
                            //   vertical: 15,
                            // ).w,
                            hintStyle: inter16,
                           
                          ),
                          textAlignVertical: TextAlignVertical.center,
                        ),
                      ),
                      Container(
                        width: 40.sm,
                        height: 40.sm,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12).r,
                          color: AppsColors.buttonColor,
                        ),
                        child: IconButton(
                          onPressed: (){

                            sendEmail(
                              subject: subjectController.text,
                              body: bodyController.text);
                            },
//                           
                          icon: Assets.icons.sendIcon.image(
                            color: Colors.white,
                            width: 15.83.sm,
                            height: 17.08.sm,
                          ),
                        ),
                      ),
                      // text part 


                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void sendEmail({required String body, required String subject }) async{
//  final mailer = Mailer('88b6b8153bb6a27c5e5f4f874ad31c56');
//   final toAddress = Address('hanadeveloper.app@gmail.com');
//   final fromAddress = Address('hana.ou123@yahoo.fr');
//   final content = Content('text/plain', 'Hello World!');
//   final subject = 'Hello Subject!';
  

//   final personalization = Personalization([toAddress]);

//   final email =
//       Email([personalization], fromAddress, subject, content: [content]);
//   mailer.send(email).then((result) {
//     // ...
//   });
    final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: 'hana.ou123@yahoo.fr',
        queryParameters: {
            'subject': subject,
            'body':  Uri.encodeComponent(body)
        },
    );
    launchUrl(emailLaunchUri);


print('+++++++++++++++++++++++mail+++++++++');
}