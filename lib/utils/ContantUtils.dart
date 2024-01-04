
class ConstantUtils {
  static const passwordRegex = r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=-])(?!.*[!&*()]).{6,10}$';
}

// (?=.*\\d): Deve conter pelo menos um dígito.
// (?=.*[a-z]): Deve conter pelo menos uma letra minúscula.
// (?=.*[A-Z]): Deve conter pelo menos uma letra maiúscula.
// (?=.*[@#$%^&+=-]): Deve conter pelo menos um caractere especial dentre os especificados (@, #, $, %, ^, &, +=, -).
// (?!.*[!&*()]): Não deve conter os caracteres !, &, *, (, ).
// .{6,10}: Deve ter entre 6 e 10 caracteres no total.