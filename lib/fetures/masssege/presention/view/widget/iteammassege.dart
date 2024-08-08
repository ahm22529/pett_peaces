import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/masssege/domain/entity/freined_chat_entity.dart';

class IteamMassage extends StatefulWidget {
  const IteamMassage({
    super.key,
    required this.freinedChatEntity,
  });

  final FreinedChatEntity freinedChatEntity;

  @override
  State<IteamMassage> createState() => _IteamMassageState();
}

class _IteamMassageState extends State<IteamMassage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: !widget.freinedChatEntity.isshow
          ? Colors.white
          : const Color(0xffE6E6E6),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(widget.freinedChatEntity.imagesender),
          ),
          trailing: Text(
            _formatDate(widget.freinedChatEntity.date),
            style: AppStyles.styleRegular14(context),
          ),
          title: Text(
            widget.freinedChatEntity.name,
            style: AppStyles.styleMedium16(context)
                .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
          ),
          subtitle: Text(
            widget.freinedChatEntity.lastmassage,
            style: AppStyles.styleMedium12(context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    if (now.day == date.day &&
        now.month == date.month &&
        now.year == date.year) {
      return DateFormat.Hm().format(date); // إذا كان نفس اليوم، عرض الساعة فقط
    } else {
      final difference = now.difference(date);
      if (difference.inDays == 1) {
        return 'Yesterday';
      } else {
        return '${difference.inDays} days ago'; // عرض عدد الأيام التي مضت
      }
    }
  }
}
