import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({super.key});

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stepper(steps: [
          Step(
              title: Text("Step 1"),
              content: Text(""),
              subtitle: Text("subtile"),
              isActive: true,
              state: StepState.complete),
          Step(
              title: Text("Step 1"),
              content: Text(""),
              subtitle: Text("subtile"),
              isActive: true,
              state: StepState.complete),
          Step(
              title: Text("Step 1"),
              content: Text(""),
              subtitle: Text("subtile"),
              isActive: true,
              state: StepState.complete),
          Step(
              title: Text("Step 1"),
              content: Text(""),
              subtitle: Text("subtile"),
              isActive: true,
              state: StepState.complete),
          Step(
            title: Text("Step 1"),
            content: Text(""),
            subtitle: Text("subtile"),
            isActive: true,
            state: StepState.complete,
          )
        ])
      ]),
    );
  }
}
