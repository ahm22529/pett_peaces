import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  final bool isEditing;
  final void Function(String) onNameChanged;
  final void Function(String) onTypeChanged;
  final void Function(String) onGenderChanged;
  final void Function(int) onAgeChanged;
  final void Function(String) onDescriptionChanged;
  final void Function(String) onTypeDescriptionChanged;

  const FormWidget({
    Key? key,
    required this.isEditing,
    required this.onNameChanged,
    required this.onTypeChanged,
    required this.onGenderChanged,
    required this.onAgeChanged,
    required this.onDescriptionChanged,
    required this.onTypeDescriptionChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24),
          _buildTextField("الاسم", onNameChanged),
          _buildTextField("النوع", onTypeChanged),
          _buildDropdownField(
            "الجنس",
            ["انثي", "ذكر"],
            onGenderChanged,
          ),
          _buildTextField(
              "السنوات", (value) => onAgeChanged(int.tryParse(value) ?? 0)),
          _buildTextField("الوصف", onDescriptionChanged),
          _buildTextField(
            "وصف النوع",
            onTypeDescriptionChanged,
            maxLines: 3,
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(
    String label,
    void Function(String) onChanged, {
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 16),
        TextFormField(
          maxLines: maxLines,
          initialValue: '',
          enabled: isEditing,
          onChanged: onChanged,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildDropdownField(
    String label,
    List<String> items,
    void Function(String) onChanged,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 16),
        DropdownButtonFormField<String>(
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) {
            if (value != null) {
              onChanged(value);
            }
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
