# Contrato con vulnerabilidad 

+ VulnerableContract - Contrato con una vulnerabilidad en una función public.

+ ExploitContract - Contrato que realiza el exploit de dicha vulnerabilidad.

+ SecureContract - Se corrige el contrato vulnerable a una forma segura.

En este caso, updateSensitiveData ahora es internal, y se proporciona una función pública segura (updateData) que verifica que solo el propietario puede actualizar los datos sensibles.