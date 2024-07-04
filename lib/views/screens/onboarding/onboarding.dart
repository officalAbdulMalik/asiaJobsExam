import 'package:asia_jobs/imports.dart';
import 'package:asia_jobs/views/screens/onboarding/components/onboard_continer.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: -15.sp,
            right: 0,
            child: QuickImage(
              width: 1.sw,
                height: index == 1? 500.sp:1.sh, fit: BoxFit.cover, url: index == 0? Assets.onboard1:Assets.onboard2),
          ),
          Positioned(
              bottom: 0,
              child: OnboardContainer(
                index: index,
                onChange: (ind) {
                  index = ind;
                  if(index == 1){
                    
                  }
                  setState(() {});
                },
              ))
        ],
      ),
    );
  }
}
