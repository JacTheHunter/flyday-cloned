import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/services/api_serice.dart';
import 'package:flyday_broker/features/file_manager/data_sources/file_manager_api_client.dart';

import '../blocs/file_manager_bloc/file_manager_bloc.dart';
import '../models/document.dart';
import '../repositories/file_manager_repository.dart';
import '../repositories/i_file_manager_repository.dart';
import '../widgets/my_documents_view_mobile.dart';

class MyDocumentsPage extends StatelessWidget implements AutoRouteWrapper {
  final void Function(List<Document>) onDocumentsSelected;
  final bool isSelectionModeAvailable;
  const MyDocumentsPage({
    super.key,
    required this.isSelectionModeAvailable,
    required this.onDocumentsSelected,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => FileManagerApiClient(context.read<ApiService>().dio),
        ),
        RepositoryProvider<IFileManagerRepository>(
          create: (context) => FileManagerRepository(
            apiClient: context.read(),
          ),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => FileManagerBloc(
                repository: context.read(),
                isSelectionModeAvailable: isSelectionModeAvailable,
              )..add(const FileManagerEvent.fetchSections()),
            ),
          ],
          child: this,
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyDocumentsViewMobile(onDocumentsSelected: onDocumentsSelected);
  }
}
