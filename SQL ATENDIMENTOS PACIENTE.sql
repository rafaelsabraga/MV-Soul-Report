SELECT
 p.cd_paciente,
 p.nm_paciente,
 a.cd_atendimento,
 a.dt_atendimento
 
FROM
 paciente p, atendime a
 
WHERE p.cd_paciente = a.cd_paciente
and a.cd_paciente = '' -- INSERIR O CAD DO PACIENTE ENTRE AS ASPAS
order by a.dt_atendimento

Atenciosamente,
Rafael Pires.
