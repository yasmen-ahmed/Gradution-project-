import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gp/layout/home-layout/cubit/cubit.dart';
import 'package:gp/layout/home-layout/cubit/states.dart';
import 'package:gp/shared/componants/componants.dart';
import 'package:gp/shared/componants/constant.dart';
import 'package:gp/shared/localization/app_localization%20.dart';


class LunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit,HomeStates>(
        listener: (context,state) { },
      builder: (context,state) {
        var list = HomeCubit.get(context).searchLunch;
        return  buildSerachMealItem(list, context,title: AppLocalizations.of(context).translate("lunch"),//'Lunch',
            onChangedSearch: (value ) {
              HomeCubit.get(context).getSearchLunch(value,lan!);},
          isChecked: HomeCubit.get(context).isCheckedLunch,
          changeChekBox: HomeCubit.get(context).changeCheckBoxLunch,
            function: () {{
                if(HomeCubit.get(context).calculateTotalFoodCalories()! >= (HomeCubit.get(context).userModel!.totalCalorie)!.round() )
                {showToast(text: '${AppLocalizations.of(context).translate("validate_Food")} ${HomeCubit.get(context).userModel!.totalCalorie} ${AppLocalizations.of(context).translate("and your total food is")} ${HomeCubit.get(context).totalFood} ', state: ToastStates.WARNING);
                  HomeCubit.get(context).addLunchMeal();
                }else
                {
                  HomeCubit.get(context).addLunchMeal();
                }
              }
            }

        );
      },
    );
  }
}
