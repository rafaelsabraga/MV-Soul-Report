SELECT distinct
    p.cd_paciente,
    s.nr_matricula_same,
    p.nm_paciente,
    p.nr_fone,
    ac.dt_agenda,
    ia.ds_item_agendamento,
    tp.ds_tip_mar
   
FROM
    paciente          p,
    same              s,
    agenda_central    ac,
    it_agenda_central iac,
    setor             se,
    item_agendamento  ia,
    tip_mar           tp
WHERE   p.cd_paciente = s.cd_paciente(+)
    AND p.cd_paciente = iac.cd_paciente
    AND ac.cd_setor   = se.cd_setor
    AND tp.cd_tip_mar like '2'
    AND iac.cd_tip_mar = tp.cd_tip_mar
    --AND se.cd_setor LIKE '185'
    AND iac.cd_item_agendamento = ia.cd_item_agendamento
    AND iac.cd_item_agendamento like '10'
   -- AND p.cd_paciente = ' ' -- INSERIR O CAD DO PACIENTE
    AND ac.cd_agenda_central = iac.cd_agenda_central(+)
    AND TRUNC(ac.dt_agenda) BETWEEN '01/11/2023' AND '31/12/2023'
ORDER BY
    ac.dt_agenda
