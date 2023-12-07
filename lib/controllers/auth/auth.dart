import 'package:task_l5/controllers/services/validation/validation.dart';
import 'package:task_l5/models/user_model.dart';

class Auth {
  Future<bool> login({required String email, required String password}) async {
    email = _loginSanatizing(email);
    bool login = false;
    await UserModel()
        .selectWhere('email = "$email" AND password= "$password"')
        .then((queryResult) => {
              if (queryResult.isNotEmpty)
                {
                  if (queryResult[0].email == email &&
                      queryResult[0].password == password)
                    {
                      login = true,
                    }
                }
            });
    return login;
  }

  Future<List<String>> signUpAttemp(
      {required String name,
      required String email,
      required String password}) async {
    List<String> attempError = [];
    _signUpSanatizing(name, email);
    await _signUpValidation(name, email, password)
        .then((errors)=>attempError = errors); 
    return attempError;
  }

  Future<void> createNewUser(
      {required String name, required email, required password}) async {
    await UserModel().insert({
      'name': name,
      'email': email,
      'password': password,
    });
  }

  String _loginSanatizing(String text) {
    return text.trim().toLowerCase();
  }

  Map<String, String> _signUpSanatizing(String name, String email) {
    return {
      'name': name.trim(),
      'email': email.trim().toLowerCase(),
    };
  }

  Future<List<String>> _signUpValidation(
      String name, String email, String password) async {
    Validation nameValid ;
    Validation passwordValid ;
    Validation? emailValid;

    List<List<String>> errors = []; 
   
    //better to be on same order as UI field order
    nameValid =  Validation(name ,fieldName: 'Name').required().length(minLength: 3).validate();
    await Validation(email, fieldName: 'Email').required().email().unique('users', 'email').then((result) => emailValid = result.validate());
    passwordValid =  Validation(password, fieldName: 'Password').required().length(minLength: 8).validate();

    nameValid.isValid ? null : errors.add(nameValid.errors);
    emailValid!.isValid ? null : errors.add(emailValid!.errors) ;
    passwordValid.isValid ? null : errors.add(passwordValid.errors) ;

    return errors.expand((element) => element).toList(); 
  }
}
