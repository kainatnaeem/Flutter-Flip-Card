import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import 'eligibility_model.dart';

class CheckEligibilty extends StatefulWidget {
  const CheckEligibilty({Key? key}) : super(key: key);

  @override
  _CheckEligibiltyState createState() => _CheckEligibiltyState();
}

class _CheckEligibiltyState extends State<CheckEligibilty> {
  List<GroupsEligibility> donorsgroup = [
    GroupsEligibility(
      text: 'A+',
      bloodgroup:
          'A+ blood contains both A and Rh antigens. A+ red blood cells can be given to both A+ and AB+ patients. A+ plasma and platelet donations are important blood products that can be used for many patients needing these types of transfusions. Therefore, A+ donors are encouraged to donate platelets, plasma or whole blood',
    ),
    GroupsEligibility(
      text: 'A-',
      bloodgroup:
          'A- blood contains the A antigen only. A- red blood cells can be given to any A and AB patients. A- plasma and platelet donations are important blood products that can be used for many patients needing these types of transfusions. Therefore, A- donors are encouraged to donate platelets, plasma or whole blood',
    ),
    GroupsEligibility(
      text: 'B+',
      bloodgroup:
          'B+ blood contains both B and Rh antigens. B+ red blood cells can be given to both B+ and AB+ patients. B+ donors are encouraged to donate whole blood, apheresis red blood cells or platelets',
    ),
    GroupsEligibility(
      text: 'B-',
      bloodgroup:
          'B- blood contains the B antigen only. B- red blood cells can be given to any B and AB patients. B- donors are encouraged to donate whole blood, apheresis red blood cells or platelets.',
    ),
    GroupsEligibility(
      text: 'AB+',
      bloodgroup:
          'AB+ is a very rare and important blood type. Since the red blood cells contain both A and B antigens, the plasma (liquid portion of the blood) can be given to all patients because these donors do not make anti-A or anti-B antibodies. These donors are encouraged to give platelets or plasma by apheresis, if possible.',
    ),
    GroupsEligibility(
      text: 'AB-',
      bloodgroup:
          'AB- blood the rarest blood type, and is also in high demand as it is a universal plasma donation. Since the red blood cells contain both A and B antigens, the plasma (liquid portion of the blood) can be given to all patients because these donors do not make anti-A or anti-B antibodies. These donors are encouraged to give platelets or plasma by apheresis, if possible.',
    ),
    GroupsEligibility(
      text: 'O+',
      bloodgroup:
          'O+ blood has no A or B antigens, and is thus “O” blood. The (+) means that the Rh antigen is present.  O+ blood is very important as a (mostly) universal red blood cell type. This blood type can be used in emergency situations such as traumatic bleeding or other types of emergency transfusions. It is also an important blood type as type “O” patients can only receive type “O” red blood cell transfusions. It cannot be used in all situations as it does have the Rh antigen present  but it is becoming more widely used in emergency situations and is often one of the most needed red blood cell donations. O+ donors are encouraged to donate whole blood and apheresis red blood cells.',
    ),
    GroupsEligibility(
      text: 'O-',
      bloodgroup:
          'O- blood is the universal blood type as it has neither A, B or Rh antigens. It can be used for any patient, no matter their blood type. O- blood donors are always in high demand, as their red blood cells are very rare compared to their extensive clinical need. Another interesting fact about this type of blood is that it is the only blood type that can be given to very small babies sometimes this blood is transfused to babies while they are still in moms womb. O- donors are encouraged to donate whole blood and apheresis red blood cells.',
    ),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: donorsgroup.map((donor) {
          return donorsData(donor);
        }).toList(),
      ),
    ));
  }

  Widget donorsData(GroupsEligibility donor) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30),
      child: Center(
        child: FlipCard(
          direction: FlipDirection.HORIZONTAL,
          front: Container(
            height: 300,
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            color: const Color.fromARGB(255, 23, 45, 79),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  donor.text,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          back: Container(
            height: 300,
            margin: const EdgeInsets.all(18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    donor.bloodgroup,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            color: Color.fromARGB(255, 163, 188, 209),
          ),
        ),
      ),
    );
  }
}
