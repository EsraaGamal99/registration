import 'package:flutter/material.dart';

class SubjectsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      children: [
        SubjectCard(subject: 'اللغة العربية', icon: Icons.language),
        SubjectCard(subject: 'الرياضيات', icon: Icons.calculate),
        SubjectCard(subject: 'اللغة الإنجليزية', icon: Icons.language),
        SubjectCard(subject: 'اللغة الفرنسية', icon: Icons.language),
      ],
    );
  }
}

class SubjectCard extends StatelessWidget {
  final String subject;
  final IconData icon;

  SubjectCard({required this.subject, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          // handle tap
        },
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 40),
              SizedBox(height: 10),
              Text(subject, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
