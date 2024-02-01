import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';

import 'package:sendgrid_mailer/sendgrid_mailer.dart';


class NewsletterWidget extends StatelessWidget {
  const NewsletterWidget({
    Key? key,
  }) : super(key: key);

  @override
  
  Widget build(BuildContext context) {

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
                          decoration: InputDecoration(
                            hintText: 'Enter Your email address',
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
                          maxLength: 600,
                          maxLines: 6,
                          decoration: InputDecoration(
                            
                            hintText: 'Enter Your email address',
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
                          onPressed: ()async{
//                               final Email myFormEmail = Email(
//   body: 'Email body', // This could be from the form field's value
//   subject: 'Email subject', // Subject (maybe type of question, etc)
//   recipients: ['hana.ou123@yahoo.fr'], // This is receiver (maybe your email)  // Attachments
//   isHTML: false,
// );
//                             await FlutterEmailSender.send(myFormEmail);
sendEmail(subject: 'subject mail1', body: 'body test mail 1');
print('mail sent ++++++++++++++++++++++++++++++++');
                          },
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
 final mailer = Mailer('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');
  final toAddress = Address('hanadeveloper.app@gmail.com');
  final fromAddress = Address('hana.ou123@yahoo.fr');
  final content = Content('text/plain', 'Hello World!');
  final subject = 'Hello Subject!';
  

  final personalization = Personalization([toAddress]);

  final email =
      Email([personalization], fromAddress, subject, content: [content]);
  mailer.send(email).then((result) {
    // ...
  });

print('+++++++++++++++++++++++mail+++++++++');
}