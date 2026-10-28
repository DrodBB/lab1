-- Номера ведущих трамваев из сцепок >60м за последний месяц
SELECT s.tramvai_number
FROM public.sostavscepok s
JOIN public.scepki c ON s.number_scepki = c.number_scepki
WHERE c.dlina_scepki > 60
  AND s.main_tramvai = true
  AND c.data_sostavleniya >= '2026-09-01'
  AND c.data_sostavleniya <  '2026-10-01';