import '../datasource/datasource.dart';
import '../../domain/usecases/usecases.dart';

class SplashRemote implements SplashGet {
  final SessionDataSource _sessionDataSource;

  SplashRemote(this._sessionDataSource);

  @override
  bool isLoginReadSession() => _sessionDataSource.isLoginRead();
}

