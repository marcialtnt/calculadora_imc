class RecetaModel {
  double imc_max = 100;
  String diagnostico = 'Muy gordo';
  String receta = 'No comas';
  List<String> imagenes = [];
  RecetaModel(
      {required this.imc_max, required this.diagnostico, required this.receta});

  void agregarImagen(String imagen) => imagenes.add(imagen);
}

class RecetarioMovilSinWifi {
  List<RecetaModel> recetas = [];

  // https://www.minsalud.gov.co/salud/Paginas/Evalue-su-peso.aspx
  // https://www.ilahy.es/nutricion/tipos-obesidad.html
  // https://orbiumadicciones.com/bienestar/anorexia-nerviosa-existe-la-recuperacion-total/
  /*
~
15	  Anorexia extrema
16	  Anorexia grave
17	  Anorexia moderada
18.5	Bajo peso (Anorexia leve)
24.9	Normal
29.9	Sobrepeso
34.9	Obesidad de bajo riesgo
39.9	Obesidad de riesgo moderado
50	Obesidad de alto riesgo
~	Obesidad extrema

   */
  RecetarioMovilSinWifi() {
    recetas.add(RecetaModel(
        imc_max: 15.0,
        diagnostico: 'Anorexia extrema',
        receta: '¡Es puro hueso y pellejo!'));
    recetas.add(RecetaModel(
        imc_max: 16.0,
        diagnostico: 'Anorexia grave',
        receta: 'Se aconseja terapia sicológica y dietética'));
    recetas.add(RecetaModel(
        imc_max: 17.0,
        diagnostico: 'Anorexia moderada',
        receta: 'Se recomienda asistencia nutricional'));
    recetas.add(RecetaModel(
        imc_max: 18.5,
        diagnostico: 'Bajo peso (Anorexia leve)',
        receta: 'Échale más papa al caldo'));
    recetas.add(RecetaModel(
        imc_max: 24.9,
        diagnostico: 'Normal',
        receta: 'No sé cómo lo haces, pero,  ¡sigue así!'));
    recetas.add(RecetaModel(
        imc_max: 29.9,
        diagnostico: 'Sobrepeso',
        receta:
            'No está funcionando, ¡te recomiendo las dietas de Susy Díaz!'));
    recetas.add(RecetaModel(
        imc_max: 34.9,
        diagnostico: 'Obesidad de bajo riesgo',
        receta:
            'Se recomienda realizar actividades físicas recreativas con mayor frecuencia'));
    recetas.add(RecetaModel(
        imc_max: 39.9,
        diagnostico: 'Obesidad de riesgo moderado',
        receta:
            'Requiere de asistencia especializada en nutrición y actividad física deportiva'));
    recetas.add(RecetaModel(
        imc_max: 50.0,
        diagnostico: 'Obesidad de alto riesgo',
        receta: 'Considerar posibilidad de tratamiento farmacológico'));
    recetas.add(RecetaModel(
        imc_max: 0.0,
        diagnostico: 'Obesidad extrema',
        receta: 'No queda otra, ¡cirugía nomás! ¡Trae el cuchillo!'));
    // Agregamos las imágenes referenciales a mostrar:
    recetas[0].agregarImagen('undraw_doctor_kw-5-l.svg');
    recetas[0].agregarImagen('undraw_eco_conscious_re_r2bs.svg');
    recetas[0].agregarImagen('undraw_launch_day_4e04.svg');
    recetas[0].agregarImagen('undraw_refreshing_beverage_td3r.svg');
    recetas[0].agregarImagen('undraw_taken_re_yn20.svg');
    recetas[1].agregarImagen('undraw_accept_tasks_re_09mv.svg');
    recetas[1].agregarImagen('undraw_add_file_re_s4qf.svg');
    recetas[1].agregarImagen('undraw_analyze_re_9kco.svg');
    recetas[1].agregarImagen('undraw_annotation_re_h774.svg');
    recetas[1].agregarImagen('undraw_click_here_re_y6uq.svg');
    recetas[1].agregarImagen('undraw_complete_task_re_44tb.svg');
    recetas[1].agregarImagen('undraw_date_picker_re_r0p8.svg');
    recetas[1].agregarImagen('undraw_documents_re_isxv.svg');
    recetas[1].agregarImagen('undraw_dream_world_re_x2yl.svg');
    recetas[1].agregarImagen('undraw_fresh_notification_re_whq4.svg');
    recetas[1].agregarImagen('undraw_inbox_cleanup_re_jcbh.svg');
    recetas[1].agregarImagen('undraw_interview_re_e5jn.svg');
    recetas[1].agregarImagen('undraw_observations_re_ohja.svg');
    recetas[1].agregarImagen('undraw_pending_approval_xuu9.svg');
    recetas[1].agregarImagen('undraw_revenue_re_2bmg.svg');
    recetas[1].agregarImagen('undraw_schedule_meeting_52nu.svg');
    recetas[1].agregarImagen('undraw_schedule_re_2vro.svg');
    recetas[1].agregarImagen('undraw_teaching_re_g7e3.svg');
    recetas[1].agregarImagen('undraw_team_collaboration_re_ow29.svg');
    recetas[2].agregarImagen('undraw_about_me_re_82bv.svg');
    recetas[2].agregarImagen('undraw_add_content_re_vgqa.svg');
    recetas[2].agregarImagen('undraw_add_document_re_mbjx.svg');
    recetas[2].agregarImagen('undraw_adjustments_re_gvct.svg');
    recetas[2].agregarImagen('undraw_attached_file_re_0n9b.svg');
    recetas[2].agregarImagen('undraw_booked_re_vtod.svg');
    recetas[2].agregarImagen('undraw_book_lover_re_rwjy.svg');
    recetas[2].agregarImagen('undraw_calendar_re_ki49.svg');
    recetas[2].agregarImagen('undraw_collaborating_re_l43g.svg');
    recetas[2].agregarImagen('undraw_collaborators_re_hont.svg');
    recetas[2].agregarImagen('undraw_completed_steps_re_h9wc.svg');
    recetas[2].agregarImagen('undraw_data_extraction_re_0rd3.svg');
    recetas[2].agregarImagen('undraw_events_re_98ue.svg');
    recetas[2].agregarImagen('undraw_for_review_eqxk.svg');
    recetas[2].agregarImagen('undraw_growth_chart_r99m.svg');
    recetas[2].agregarImagen('undraw_growth_curve_re_t5s7.svg');
    recetas[2].agregarImagen('undraw_instant_support_re_s7un.svg');
    recetas[2].agregarImagen('undraw_job_hunt_re_q203.svg');
    recetas[2].agregarImagen('undraw_knowledge_re_5v9l.svg');
    recetas[2].agregarImagen('undraw_lightbulb_moment_re_ulyo.svg');
    recetas[2].agregarImagen('undraw_load_more_re_482p.svg');
    recetas[2].agregarImagen('undraw_new_entries_re_cffr.svg');
    recetas[2].agregarImagen('undraw_online_cv_re_gn0a.svg');
    recetas[2].agregarImagen('undraw_organized_content_re_831r.svg');
    recetas[2].agregarImagen('undraw_percentages_re_a1ao.svg');
    recetas[2].agregarImagen('undraw_performance_overview_re_mqrq.svg');
    recetas[2].agregarImagen('undraw_personal_data_re_ihde.svg');
    recetas[2].agregarImagen('undraw_pie_graph_re_fvol.svg');
    recetas[2].agregarImagen('undraw_pitching_re_fpgk.svg');
    recetas[2].agregarImagen('undraw_professor_re_mj1s.svg');
    recetas[2].agregarImagen('vundraw_receipt_re_fre3.svg');
    recetas[2].agregarImagen('undraw_result_re_uj08.svg');
    recetas[2].agregarImagen('undraw_save_to_bookmarks_re_8ajf.svg');
    recetas[2].agregarImagen('undraw_social_update_re_xhjr.svg');
    recetas[2].agregarImagen('undraw_stepping_up_g6oo.svg');
    recetas[2].agregarImagen('undraw_synchronize_re_4irq.svg');
    recetas[2].agregarImagen('undraw_team_goals_re_4a3t.svg');
    recetas[2].agregarImagen('undraw_to_do_list_re_9nt7.svg');
    recetas[2].agregarImagen('undraw_to_do_re_jaef.svg');
    recetas[2].agregarImagen('undraw_trends_re_2bd0.svg');
    recetas[2].agregarImagen('undraw_wishlist_re_m7tv.svg');
    recetas[3].agregarImagen('undraw_agreement_re_d4dv.svg');
    recetas[3].agregarImagen('undraw_approve_qwp7.svg');
    recetas[3].agregarImagen('undraw_barbecue_3x93.svg');
    recetas[3].agregarImagen('undraw_breakfast_psiw.svg');
    recetas[3].agregarImagen('undraw_career_progress_ivdb.svg');
    recetas[3].agregarImagen('undraw_chef_cu-0-r.svg');
    recetas[3].agregarImagen('undraw_cookie_love_re_lsjh.svg');
    recetas[3].agregarImagen('undraw_cooking_p7m1.svg');
    recetas[3].agregarImagen('undraw_data_report_re_p4so.svg');
    recetas[3].agregarImagen('undraw_diary_re_4jpc.svg');
    recetas[3].agregarImagen('undraw_diet_ghvw.svg');
    recetas[3].agregarImagen('undraw_duplicate_re_d39g.svg');
    recetas[3].agregarImagen('undraw_energizer_re_vhjv.svg');
    recetas[3].agregarImagen('undraw_going_up_re_86kg.svg');
    recetas[3].agregarImagen('undraw_hamburger_re_7sfy.svg');
    recetas[3].agregarImagen('undraw_healthy_options_re_lf9l.svg');
    recetas[4].agregarImagen('undraw_agree_re_hor9.svg');
    recetas[4].agregarImagen('undraw_a_moment_to_relax_re_v5gv.svg');
    recetas[4].agregarImagen('undraw_celebrating_rtuv.svg');
    recetas[4].agregarImagen('undraw_celebration_re_kc9k.svg');
    recetas[4].agregarImagen('undraw_certificate_re_yadi.svg');
    recetas[4].agregarImagen('undraw_certification_re_ifll.svg');
    recetas[4].agregarImagen('undraw_completing_re_i7ap.svg');
    recetas[4].agregarImagen('undraw_done_re_oak4.svg');
    recetas[4].agregarImagen('undraw_exciting_news_re_y1iw.svg');
    recetas[4].agregarImagen('undraw_fans_re_cri3.svg');
    recetas[4].agregarImagen('undraw_fireworks_re_2xi7.svg');
    recetas[4].agregarImagen('undraw_flagged_2uty.svg');
    recetas[4].agregarImagen('undraw_flutter_dev_wvqj.svg');
    recetas[4].agregarImagen('undraw_happy_feeling_re_e76r.svg');
    recetas[4].agregarImagen('undraw_happy_news_re_tsbd.svg');
    recetas[4].agregarImagen('undraw_party_re_nmwj.svg');
    recetas[4].agregarImagen('undraw_positive_attitude_re_wu7d.svg');
    recetas[4].agregarImagen('undraw_relaxation_re_ohkx.svg');
    recetas[4].agregarImagen('undraw_relaxing_at_home_re_mror.svg');
    recetas[4].agregarImagen('undraw_well_done_re_3hpo.svg');
    recetas[4].agregarImagen('undraw_winners_re_wr1l.svg');
    recetas[5].agregarImagen('undraw_adventure_map_hnin.svg');
    recetas[5].agregarImagen('undraw_air_support_re_nybl.svg');
    recetas[5].agregarImagen('undraw_among_nature_p1xb.svg');
    recetas[5].agregarImagen('undraw_ask_me_anything_re_x7pm.svg');
    recetas[5].agregarImagen('undraw_a_day_at_the_park_re_9kxj.svg');
    recetas[5].agregarImagen('undraw_a_day_off_re_hedl.svg');
    recetas[5].agregarImagen('undraw_dog_walking_re_l61p.svg');
    recetas[5].agregarImagen('undraw_everyday_life_re_1lfb.svg');
    recetas[5].agregarImagen('undraw_fun_moments_2vha.svg');
    recetas[5].agregarImagen('undraw_healthy_habit_kwe6.svg');
    recetas[5].agregarImagen('undraw_healthy_lifestyle_re_ifwg.svg');
    recetas[5].agregarImagen('undraw_high_five_re_jy71.svg');
    recetas[5].agregarImagen('undraw_jogging_re_k28i.svg');
    recetas[5].agregarImagen('undraw_millennial_girl_fxlt.svg');
    recetas[5].agregarImagen('undraw_modern_woman_re_d8bx.svg');
    recetas[5].agregarImagen('undraw_my_universe_803e.svg');
    recetas[5].agregarImagen('undraw_nature_benefits_re_kk70.svg');
    recetas[5].agregarImagen('undraw_noted_re_c5wv.svg');
    recetas[5].agregarImagen('undraw_passing_by_0un9.svg');
    recetas[5].agregarImagen('undraw_pilates_ltw9.svg');
    recetas[5].agregarImagen('undraw_playing_fetch_cm19.svg');
    recetas[5].agregarImagen('undraw_playing_golf_sdt3.svg');
    recetas[5].agregarImagen('undraw_ready_for_waves_vlke.svg');
    recetas[5].agregarImagen('undraw_relaxing_walk_re_7fko.svg');
    recetas[5].agregarImagen('undraw_ride_a_bicycle_re_6tjy.svg');
    recetas[5].agregarImagen('undraw_road_sign_re_3kc3.svg');
    recetas[5].agregarImagen('undraw_skateboarding_-929-d.svg');
    recetas[5].agregarImagen('undraw_stability_ball_b-4-ia.svg');
    recetas[5].agregarImagen('undraw_sunlight_re_0usx.svg');
    recetas[5].agregarImagen('undraw_surfer_re_hncq.svg');
    recetas[5].agregarImagen('undraw_sweet_home_dkhr.svg');
    recetas[5].agregarImagen('undraw_walking_around_-25-f5.svg');
    recetas[5].agregarImagen('undraw_walking_outside_re_56xo.svg');
    recetas[6].agregarImagen('undraw_bike_ride_7xit.svg');
    recetas[6].agregarImagen('undraw_biking_kc-4-f.svg');
    recetas[6].agregarImagen('undraw_golf_neir.svg');
    recetas[6].agregarImagen('undraw_hiking_re_k0bc.svg');
    recetas[6].agregarImagen('undraw_home_run_acyh.svg');
    recetas[6].agregarImagen('undraw_junior_soccer_6sop.svg');
    recetas[6].agregarImagen('undraw_personal_trainer_re_cnua.svg');
    recetas[6].agregarImagen('undraw_runner_start_x-0-uu.svg');
    recetas[6].agregarImagen('undraw_working_out_re_nhkg.svg');
    recetas[6].agregarImagen('undraw_workout_gcgu.svg');
    recetas[7].agregarImagen('undraw_basketball_re_7701.svg');
    recetas[7].agregarImagen('undraw_building_re_xfcm.svg');
    recetas[7].agregarImagen('undraw_fitness_stats_sht6.svg');
    recetas[7].agregarImagen('undraw_fitness_tracker_3033.svg');
    recetas[7].agregarImagen('undraw_grand_slam_84ep.svg');
    recetas[7].agregarImagen('undraw_indoor_bike_pwa4.svg');
    recetas[7].agregarImagen('undraw_running_wild_h6ao.svg');
    recetas[7].agregarImagen('undraw_track_and_field_-33-qn.svg');
    recetas[8].agregarImagen('undraw_alien_science_re_0f8q.svg');
    recetas[8].agregarImagen('undraw_medical_care_movn.svg');
    recetas[8].agregarImagen('undraw_science_re_mnnr.svg');
    recetas[8].agregarImagen('undraw_scientist_ft0o.svg');
    recetas[9].agregarImagen('undraw_doctors_p6aq.svg');
    recetas[9].agregarImagen('undraw_medical_research_qg4d.svg');
    recetas[9].agregarImagen('undraw_medicine_b-1-ol.svg');
    recetas[9].agregarImagen('undraw_page_not_found_re_e9o6.svg');
  }

  RecetaModel obtenerReceta(double imc) {
    int indice = 1;
    switch (imc) {
      case >= 50.0:
        indice = 9;
      case > 39.9:
        indice = 8;
      case > 34.9:
        indice = 7;
      case > 29.9:
        indice = 6;
      case > 24.9:
        indice = 5;
      case >= 18.5:
        indice = 4; // Normal
      case >= 17.0:
        indice = 3;
      case >= 16.0:
        indice = 2;
      case >= 15.0:
        indice = 1;
      case >= 0.0:
        indice = 0;
    }
    ;
    print('imc: $imc');
    print('indice: $indice');
    return (recetas[indice]);
  }
}
