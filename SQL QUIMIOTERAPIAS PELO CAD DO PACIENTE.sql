SELECT distinct
    p.cd_paciente,
    s.nr_matricula_same,
    p.nm_paciente,
    p.nr_fone,
    ac.dt_agenda,
    se.cd_setor,
    se.nm_setor
    
FROM
    paciente          p,
    same              s,
    agenda_central    ac,
    it_agenda_central iac,
    setor             se,
    item_agendamento  ia
WHERE   p.cd_paciente = s.cd_paciente(+)
    AND p.cd_paciente = iac.cd_paciente
    AND ac.cd_setor   = se.cd_setor
    AND se.cd_setor LIKE '49'
    AND p.cd_paciente = ' ' -- INSERIR O CAD DO PACIENTE
    AND ac.cd_agenda_central = iac.cd_agenda_central(+)
    AND TRUNC(ac.dt_agenda) BETWEEN '01/01/2023' AND '31/08/2023'
ORDER BY
    ac.dt_agenda
