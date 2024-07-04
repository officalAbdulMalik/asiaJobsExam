import 'package:asia_jobs/imports.dart';

class OnboardContainer extends StatelessWidget {
  const OnboardContainer({super.key, this.onChange, required this.index});
  final Function(int index)? onChange;
  final int index;


 final String secondIndexText = 'Job In Best';
  final String firstIndexText = 'Job Match!';



  @override
  Widget build(BuildContext context) {

    print(index);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 15.sp),
      height: 280.sp,
      width: 1.sw,
      decoration: BoxDecoration(
        color: AppColors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
              text: TextSpan(
                  text: 'Best\n',
                  style: Styles.sfBold(
                    color: AppColors.black,
                    fontSize: 35.sp,
                  ),
                  children: [
                TextSpan(
                    text: index == 0 ? firstIndexText:secondIndexText,
                    style: Styles.sfBold(
                      color: AppColors.primaryBlue,
                      fontSize: 35.sp,
                      decoration: TextDecoration.underline,
                    )),
                    TextSpan(
                        text: index == 0 ? '':"\nCompany!",
                        style: Styles.sfBold(
                          color: AppColors.primaryBlue,
                          fontSize: 35.sp,
                          decoration: TextDecoration.underline,
                        )),
              ])),
         index == 0? 20.y:10.y,
          AppText(
            'Explore all the most exciting job roles based\nOn your interest and study major.',
            maxLine: 2,
            style: Styles.sfMedium(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          index == 0? 20.y:10.y,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    height: 15.sp,
                    width: 100.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.sp),
                      color: index == 0? AppColors.whiteContiner:AppColors.primaryBlue,
                    ),
                  ),
                  Container(
                    height: 15.sp,
                    width: 50.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.sp),
                      color: index == 1? AppColors.whiteContiner:AppColors.primaryBlue,
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  onChange!(1);
                },
                child: Container(
                  height: 60.sp,
                  width: 60.sp,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryBlue,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primaryBlue.withOpacity(0.3),
                        spreadRadius: 6,
                        blurRadius: 9,
                        offset: const Offset(1, 1), // changes position of shadow
                      ),
                    ],

                  ),
                  child: Center(
                    child: QuickImage(
                      url: Assets.arrow,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
