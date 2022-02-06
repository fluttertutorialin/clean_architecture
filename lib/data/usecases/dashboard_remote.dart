import '../datasource/datasource.dart';
import '../../domain/usecases/usecases.dart';

class DashboardRemote implements DashboardGet {
  final RemoteDataSource _remoteDataSource;
  final SessionDataSource _sessionDataSource;

  DashboardRemote(this._remoteDataSource, this._sessionDataSource);

  @override
  String userNameReadSession() => _sessionDataSource.userNameRead();
}

