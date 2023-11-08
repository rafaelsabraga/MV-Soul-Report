SELECT
    pw_documento_clinico.cd_documento_clinico,
    pw_documento_clinico.cd_tipo_documento,
    pw_documento_clinico.cd_documento_digital,
    pw_documento_clinico.cd_paciente,
    pw_documento_clinico.cd_atendimento,
    pw_documento_clinico.cd_usuario,
    pw_documento_clinico.cd_prestador,
    pw_documento_clinico.dh_criacao,
    pw_tipo_documento.ds_tipo_documento
FROM
    pw_documento_clinico,
    pw_tipo_documento
WHERE
    pw_documento_clinico.cd_paciente = '399312'
    AND pw_tipo_documento.cd_tipo_documento LIKE '33'
    AND pw_documento_clinico.cd_tipo_documento = pw_tipo_documento.cd_tipo_documento
    AND pw_documento_clinico.dh_criacao BETWEEN ( '20/10/2023' ) AND ( '30/10/2023' )
    ORDER BY pw_documento_clinico.dh_criacao
