import 'package:flutter/material.dart';

class NewPOBWidget extends StatelessWidget {
  final VoidCallback onCancel;
  final VoidCallback onProceed;

  const NewPOBWidget(
      {super.key, required this.onCancel, required this.onProceed});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0xFFFCF5DF),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "New POB",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Select a doctor to proceed",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Doctor*",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              hint: const Text("Select doctor"),
              items: const [
                DropdownMenuItem(value: "doctor1", child: Text("Dr. Smith")),
                DropdownMenuItem(value: "doctor2", child: Text("Dr. Johnson")),
              ],
              onChanged: (value) {},
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: onCancel,
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    shape: const StadiumBorder(),
                    side: const BorderSide(
                        color: const Color(0xFFAA3F00),
                        width: 1), // Set border color to orange
                  ),
                  child: const Text("Cancel"),
                ),
                ElevatedButton(
                  onPressed: onProceed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFAA3F00),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                   shape: const StadiumBorder(),
                  ),
                  child: const Text("Proceed",
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
