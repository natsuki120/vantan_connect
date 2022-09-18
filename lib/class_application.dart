import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/confirm_class_application.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';
import 'package:vantan_connect/view_model/class_state/class_state_to_profile_view_model.dart';

class ClassApplication extends ConsumerStatefulWidget {
  ClassApplication({super.key});

  @override
  ConsumerState<ClassApplication> createState() => _ClassApplicationState();
}

class _ClassApplicationState extends ConsumerState<ClassApplication> {
  @override
  void initState() {
    super.initState();
    ref.read(classStateViewModel.notifier).fetchClassInfoToRegister();
  }

  var selectedTags = <ClassState>[];

  @override
  Widget build(BuildContext context) {
    print(selectedTags);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme!.primaryContainer,
      ),
      body: Consumer(
        builder: (context, ref, child) {
          ref.watch(classStateViewModel);
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount:
                      ref.watch(classStateViewModel.notifier).state.length,
                  itemBuilder: (context, index) {
                    final classInfo =
                        ref.watch(classStateViewModel.notifier).state[index];
                    return Wrap(
                      runSpacing: 16,
                      spacing: 16,
                      children: [
                        // selectedTags の中に自分がいるかを確かめる
                        Builder(
                          builder: (context) {
                            final isSelected = selectedTags.contains(classInfo);
                            return InkWell(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(32)),
                              onTap: () {
                                if (isSelected) {
                                  // すでに選択されていれば取り除く
                                  selectedTags.remove(classInfo);
                                } else {
                                  // 選択されていなければ追加する
                                  selectedTags.add(classInfo);
                                }
                                setState(() {});
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(32)),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.pink,
                                  ),
                                  color: isSelected ? Colors.pink : null,
                                ),
                                child: Text(
                                  classInfo.className,
                                  style: TextStyle(
                                    color:
                                        isSelected ? Colors.white : Colors.pink,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    );
                  },
                ),
              ),
              Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<Container>(
                              builder: (_) => ConfirmClassApplication(
                                classList: selectedTags,
                              ),
                            ),
                          );
                        },
                        child: const Text('次へ'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          selectedTags.clear();
                          setState(() {});
                        },
                        child: const Text('クリア'),
                      ),
                      const SizedBox(width: 16),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
