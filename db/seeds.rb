Kit.destroy_all
Sample.destroy_all

Kit.create(name: "Andromeda Strain",
  kick: "K_Star 808 Kepler KIC",
  snare: "SN_Plasmasphere Polar",
  hh_closed: "HH1_Radar Echoes Titan Huygens",
  hh_open: "HH2_Saturn Sounds Cassini",
  melody: "M_Plasma 9 Voyager 1",
  texture: "OS_Whistler Waves EMFISIS",
  one_shot_1: "OS_Deep Space Hubble",
  one_shot_2: "G_Passing Tempel 1 Stardust",
  groove_file: "groove_stardust_passing_comet_temple_1.mp3",
  sequence: "[
    ['C3', 'F#3'],
    ['D#3', 'E3'],
    ['D3'],
    ['D#3'],
    ['C#3', 'F#3'],
    ['D3', 'E3', 'F#3'],
    ['D#3'],
    ['D3'],
    ['C3'],
    ['D#3', 'F3'],
    ['D3', 'F3'],
    ['F3'],
    ['C#3', 'G3'],
    ['D#3', 'F#3'],
    ['D#3', 'F#3'],
    ['C3', 'D3']
  ]",
  bpm: 180
)

Kit.create(name: "Magnetosphere",
  kick: "K_Magnetic Drum THEMIS",
  snare: "SN_Jupiter Magnetosphere Juno",
  hh_closed: "HH1_Saturn Sounds Cassini",
  hh_open: "HH2_Saturn Sounds Cassini",
  melody: "M_Cold Helium",
  texture: "OS_Langmuir Waves Parker",
  one_shot_1: "OS_Whistler Mode 1 Parker",
  one_shot_2: "G_Shields Up Cassini",
  groove_file: "groove_cassini_shields_up.mp3",
  sequence: '[
    ["C3", "F#3"],
    ["D3"],
    ["D#3"],
    ["E3"],
    ["C#3"],
    null,
    ["D3"],
    null,
    ["C3", "F#3"],
    null,
    ["D3"],
    null,
    ["C#3", "F3"],
    ["D3"],
    ["D#3", "G3"],
    ["C3"]
    ]',
  bpm: 260
)

Kit.create(name: "Apollo 11",
  kick: "K_Eagle Has Landed",
  snare: "SN_One Small Step",
  hh_closed: "HH1_Eagle Has Landed",
  hh_open: "HH2_Eagle Has Landed",
  melody: "OS_Eagle Has Landed",
  texture: "OS_One Small Step",
  one_shot_1: "OS_One Giant Leap",
  one_shot_2: "G_We Choose The Moon",
  groove_file: "groove_jfk_wechoosethemoonspeech.mp3",
  sequence: '[
    ["C3", "D3"],
    ["D3"],
    ["D#3"],
    ["D3"],
    ["C3", "C#3", "D3"],
    ["D3"],
    ["D3"],
    ["C3", "D3"],
    ["C3", "D3"],
    ["D3"],
    ["D#3"],
    ["D3"],
    ["C#3", "C3", "D3"],
    ["D3"],
    ["D3"],
    ["D3"],
    ]',
    bpm: 350
)

# Kicks

Sample.create(name: "K_Magnetic Drum THEMIS",
  filename: "kick_earth_magnetic_drum.mp3",
  source_name: "THEMIS_earth",
  thumbnail_file: "THEMIS_earth.jpeg",
  description: "Using data from NASA's THEMIS mission, scientists have discovered that when the magnetopause -- the outer boundary of Earth's protective magnetic field -- is struck by a jet of plasma from the Sun, it vibrates like a drum. Waves echo back and forth along its surface, much like they do on top of a drumhead.",
  info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
  )

Sample.create(name: "K_Star 808 Kepler KIC",
  filename: "kick_kepler_star_808.mp3",
  source_name: "kepler",
  thumbnail_file: "kepler.jpeg",
  description: "Kepler: Star KIC7671081B Light Curve Waves to Sound",
  info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
  )

Sample.create(name: "K_Eagle Has Landed",
  filename: "kick_eagle_has_landed.mp3",
  source_name: "apollo_11",
  thumbnail_file: "apollo_astronaut.jpeg",
  description: "“The Eagle has landed,” Armstrong said at 4:18 p.m. The Eagle was the name of the lunar lander. Armstrong became the first person to walk on the moon, followed 20 minutes later by Aldrin.",
  info_url: "https://www.nasa.gov/mission_pages/apollo/missions/apollo11.html"
  )

# Snares

Sample.create(name: "SN_Jupiter Magnetosphere Juno",
  filename: "snare_juno_entering_jupiter_magnetosphere.mp3",
  source_name: "juno",
  thumbnail_file: "juno.jpeg",
  description: "Juno will improve our understanding of the solar system's beginnings by revealing the origin and evolution of Jupiter.",
  info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
  )

Sample.create(name: "SN_Plasmasphere Polar",
  filename: "snare_plasmaspheric_hiss.mp3",
  source_name: "nasa_polar",
  thumbnail_file: "nasa_polar.jpeg",
  description: "Plasmaspheric hiss waves as heard by NASA’s Polar mission as it passed around Earth.",
  info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
  )

Sample.create(name: "SN_One Small Step",
  filename: "snare_small_step.mp3",
  source_name: "apollo_11_armstrong",
  thumbnail_file: "one_small_step.jpeg",
  description: "The Eagle lunar lander, carrying Armstrong and Aldrin, landed on the Sea of Tranquility on July 20, 1969. Armstrong was the first one out, proclaiming for the ages: “That's one small step for man, one giant leap for mankind.”",
  info_url: "https://www.nasa.gov/mission_pages/apollo/apollo11.html"
  )

# Hats Closed

Sample.create(name: "HH1_Saturn Sounds Cassini",
  filename: "hat_closed_cassini_saturn_radio_emmisions.mp3",
  source_name: "cassini",
  thumbnail_file: "cassini.jpeg",
  description: "Hear intriguing radio waves that our Cassini spacecraft collected near Jupiter in January 2001.",
  info_url: "https://directory.eoportal.org/web/eoportal/satellite-missions/t/themis"
  )

  Sample.create(name: "HH1_Radar Echoes Titan Huygens",
  filename: "hat_radar_echoes_titan_surface.mp3",
  source_name: "titan",
  thumbnail_file: "titan.jpeg",
  description: "This recording was produced by converting into audible sounds some of the radar echoes received by Huygens during the last few kilometers of its descent onto Saturn's moon Titan. As the probe approaches the ground, both the pitch and intensity increase. Scientists will use intensity of the echoes to speculate about the nature of the surface.",
  info_url: "https://solarsystem.nasa.gov/missions/huygens/in-depth/"
  )

Sample.create(name: "HH1_Eagle Has Landed",
  filename: "hh_closed_eagle_has_landed.mp3",
  source_name: "apollo_11",
  thumbnail_file: "apollo_astronaut.jpeg",
  description: "“The Eagle has landed,” Armstrong said at 4:18 p.m. The Eagle was the name of the lunar lander. Armstrong became the first person to walk on the moon, followed 20 minutes later by Aldrin.",
  info_url: "https://www.nasa.gov/mission_pages/apollo/missions/apollo11.html"
  )

# Hats Open

Sample.create(name: "HH2_Saturn Sounds Cassini",
  filename: "hat_open_cassini_saturn_radio_emmisions_1.mp3",
  source_name: "cassini_saturn_radio_emmisions",
  thumbnail_file: "saturn_radio_emmissions.jpeg",
  description: "New research from the up-close Grand Finale orbits of NASA’s Cassini mission shows a surprisingly powerful interaction of plasma waves moving from Saturn to its moon Enceladus. Researchers converted the recording of plasma waves into a “whooshing” audio file that we can hear -- in the same way a radio translates electromagnetic waves into music. Much like air or water, plasma (the fourth state of matter) generates waves to carry energy. The recording was captured by the Radio Plasma Wave Science (RPWS) instrument Sept. 2, 2017, two weeks before Cassini was deliberately plunged into the atmosphere of Saturn.",
  info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
  )

Sample.create(name: "HH2_Eagle Has Landed",
  filename: "hh_open_eagle_has_landed.mp3",
  source_name: "apollo_11",
  thumbnail_file: "apollo_astronaut.jpeg",
  description: "“The Eagle has landed,” Armstrong said at 4:18 p.m. The Eagle was the name of the lunar lander. Armstrong became the first person to walk on the moon, followed 20 minutes later by Aldrin.",
  info_url: "https://www.nasa.gov/mission_pages/apollo/apollo11.html"
  )

# Melodies

Sample.create(name: "M_Cold Helium",
  filename: "melody_ultra_cold_helium.mp3",
  source_name: "earth",
  thumbnail_file: "ultra_cold_helium_3.jpeg",
  description: "If you're squeamish, you may not want to listen to the strange whistle of ultra-cold liquid helium-3 that changes volume relative to the North Pole and Earth's rotation. When ultra-cold liquid helium-4 was squashed through an array of tiny apertures, a phenomenon occurred in which the helium-4 repeatedly sped up, slowed down and vibrated. This produced a 'quantum whistle' -- a whistling sound that went from high to low.",
  info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
  )

Sample.create(name: "M_Plasma 9 Voyager 1",
  filename: "melody_voyage_plasma_9.mp3",
  source_name: "voyager_1",
  thumbnail_file: "voyager_1.jpeg",
  description: "Voyager 1's plasma wave instrument detected the vibrations of dense interstellar plasma, or ionized gas, from October to November 2012 and April to May 2013. This sound reproduces the amplitude and frequency of the plasma waves as 'heard' by Voyager 1.",
  info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
  )

# One-Shots

Sample.create(name: "OS_Whistler Mode 1 Parker",
  filename: "one_shot_psp_whistler_mode_waves.mp3",
  source_name: "parker_solar_probe",
  thumbnail_file: "parker_solar_probe.jpeg",
  description: "One year and three trips around the Sun later, NASA's Parker Solar Probe heard some weird, sci-fi sounds from plasma within the solar wind -- and those sounds may answer unanswered questions about how the wind forms.",
  info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
  )

Sample.create(name: "OS_Whistler Waves EMFISIS",
  filename: "one_shot_whistler_waves.mp3",
  source_name: "earth",
  thumbnail_file: "EMFISIS_earth.jpeg",
  description: "Whistler waves as heard by the EMFISIS instrument aboard NASA’s Van Allen Probes as it passed around Earth.",
  info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
  )

Sample.create(name: "OS_Langmuir Waves Parker",
  filename: "one_shot_psp_langmuir_waves.mp3",
  source_name: "parker_solar_probe",
  thumbnail_file: "parker_solar_probe.jpeg",
  description: "One year and three trips around the Sun later, NASA's Parker Solar Probe heard some weird, sci-fi sounds from plasma within the solar wind -- and those sounds may answer unanswered questions about how the wind forms.",
  info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
  )

Sample.create(name: "OS_Deep Space Hubble",
  filename: "one_shot_sonification_of_hubble_deep_space.mp3",
  source_name: "hubble_deep_space",
  thumbnail_file: "sonification_of_hubble_deep_space.jpeg",
  description: "Space becomes 'sonified' in this visualization of a cluster of galaxies imaged by NASA's Hubble Space Telescope. Time flows left to right, and the frequency of sound changes from bottom to top, ranging from 30 to 1,000 hertz. Objects near the bottom of the image produce lower notes, while those near the top produce higher ones. Most of the visible specks are galaxies housing countless stars. A few individual stars shine brightly in the foreground. Stars and compact galaxies create short, clear tones, while sprawling spiral galaxies emit longer notes that change pitch. The higher density of galaxies near the center of the image — the heart of this galaxy cluster, known as RXC J0142.9+4438 — results in a swell of mid-range tones halfway through the video. Hubble's Advanced Camera for Surveys and Wide Field Camera 3 acquired this image on Aug. 13, 2018.",
  info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
  )

Sample.create(name: "OS_Eagle Has Landed",
  filename: "one_shot_eagle_has_landed.mp3",
  source_name: "apollo_11",
  thumbnail_file: "apollo_astronaut.jpeg",
  description: "“The Eagle has landed,” Armstrong said at 4:18 p.m. The Eagle was the name of the lunar lander. Armstrong became the first person to walk on the moon, followed 20 minutes later by Aldrin.",
  info_url: "https://www.nasa.gov/mission_pages/apollo/missions/apollo11.html"
  )

Sample.create(name: "OS_One Small Step",
  filename: "one_shot_one_small_step.mp3",
  source_name: "apollo_11_armstrong",
  thumbnail_file: "one_small_step.jpeg",
  description: "The Eagle lunar lander, carrying Armstrong and Aldrin, landed on the Sea of Tranquility on July 20, 1969. Armstrong was the first one out, proclaiming for the ages: “That's one small step for man, one giant leap for mankind.”",
  info_url: "https://www.nasa.gov/mission_pages/apollo/apollo11.html"
  )

Sample.create(name: "OS_One Giant Leap",
  filename: "one_shot_one_giant_leap.mp3",
  source_name: "apollo_11_armstrong",
  thumbnail_file: "one_small_step.jpeg",
  description: "The Eagle lunar lander, carrying Armstrong and Aldrin, landed on the Sea of Tranquility on July 20, 1969. Armstrong was the first one out, proclaiming for the ages: “That's one small step for man, one giant leap for mankind.”",
  info_url: "https://www.nasa.gov/mission_pages/apollo/apollo11.html"
  )

# Grooves(really One-shots)

Sample.create(name: "G_Shields Up Cassini",
  filename: "groove_cassini_shields_up.mp3",
  source_name: "cassini",
  thumbnail_file: "cassini.jpeg",
  description: "Before settling into orbit around Saturn, Cassini faced a white-knuckle ride through the plane of the planet’s rings. When converted into an audio file, the interstellar cacophony is reminiscent of a hellstorm on Earth.",
  info_url: "https://solarsystem.nasa.gov/missions/cassini/overview/"
  )

Sample.create(name: "G_Passing Tempel 1 Stardust",
  filename: "groove_stardust_passing_comet_temple_1.mp3",
  source_name: "tempel_1",
  thumbnail_file: "tempel_1.jpeg",
  description: "Stardust: Passing Comet Tempel 1",
  info_url: "https://solarsystem.nasa.gov/resources/331/stardust-swoops-by-tempel-1/"
  )

Sample.create(name: "G_We Choose The Moon",
  filename: "groove_jfk_wechoosethemoonspeech.mp3",
  source_name: "kennedy_apollo_11",
  thumbnail_file: "president_kennedy.jpeg",
  description: "“We choose to go to the Moon”, officially titled the Address at Rice University on the Nation's Space Effort, is a September 12, 1962, speech by United States President John F. Kennedy to further inform the public about his plan to land a man on the Moon before 1970.",
  info_url: "https://airandspace.si.edu/stories/editorial/we-choose-go-moon-and-other-apollo-speeches"
  )


# Unused samples:

# Sample.create(name: "Saturn Radio Cassini",
#   filename: "groove_cassini_radio_emmisions_2.mp3",
#   source_name: "cassini",
#   thumbnail_file: "cassini.jpeg",
#   description: "Saturn is a source of intense radio emissions, which were monitored by our Cassini spacecraft. The radio waves are closely related to the auroras near the poles of the planet. These auroras are similar to Earth's northern and southern lights. This is an audio file of radio emissions from Saturn.",
#   info_url: ""
#   )
# Sample.create(name: "Plasma Groove Voyager 2",
#   filename: "groove_voyager_interstellar_plasma.mp3",
#   source_name: "voyager_2",
#   thumbnail_file: "voyager_2.jpeg",
#   description: "These melodious tones are created at a special frequency in a plasma with a magnetic field. The frequency is set by the number of electrons in a given volume (the electron density) and the strength of the magnetic field. Hence, the frequency of these waves, called upper hybrid waves, can provide a very accurate measure of the density of the plasma; a fundamental property of the Jovian environment of interest to scientists. These emissions were acquired by Voyager 2 as it passed through the outer magnetosphere in 1979.",
#   info_url: ""
#   )
# Sample.create(name: "Mars Quake Insight",
#   filename: "texture_insight_first_marsquake.mp3",
#   source_name: "insight_mars",
#   thumbnail_file: "insight.jpeg",
#   description: "This audio illustrates a seismic event detected by NASA's InSight spacecraft on April 6, 2019, the 128th Martian day, or sol, of the mission. Three distinct kinds of sounds can be heard, all of them detected as ground vibrations by the spacecraft's seismometer, called the Seismic Experiment for Interior Structure (SEIS): There's noise from Martian wind; the seismic event itself; and the spacecraft's robotic arm as it moves to take pictures. News release: go.nasa.gov/2VmCkdS This event is the first likely marsquake recorded by the InSight team. Several other seismic events have been recorded but are much more ambiguous than this signal. The audio underscores just how seismically noisy the Martian surface can be and was produced from two sets of sensors included with SEIS. You can hear sounds from the Very Broad Band sensors from your left speakers and sounds from the Short Period sensors from your right speakers. Audio from both sets of sensors have been sped up by a factor of 60; the actual vibrations on Mars would not have been audible to the human ear. Playback on headphones or speaker system recommended for best experience.",
#   info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
#   )
# Sample.create(name: "Radio Waves EMFISIS",
#   filename: "texture_chorus_radio_waves_within_earth_atmosphere.mp3",
#   source_name: "EMFISIS_earth",
#   thumbnail_file: "EMFISIS_earth.jpeg",
#   description: "Courtesty of Electric and Magnetic Field Instrument Suite and Integrated Science (EMFISIS) aboard NASA’s Van Allen Probes team at the University of Iowa",
#   info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
#   )
# Sample.create(name: "Plasma Waves Voyager 1",
#   filename: "texture_plasmawaves_chorus.mp3",
#   source_name: "voyager_1",
#   thumbnail_file: "voyager_1.jpeg",
#   description: "Voyager 1's plasma wave instrument detected the vibrations of dense interstellar plasma, or ionized gas, from October to November 2012 and April to May 2013. This sound reproduces the amplitude and frequency of the plasma waves as 'heard' by Voyager 1.",
#   info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
#   )
# Sample.create(name: "Ganymede Galileo",
#   filename: "texture_beware_of_ganymede.mp3",
#   source_name: "galileo_ganymede_radio",
#   thumbnail_file: "galileo_ganymede_radio.jpeg",
#   description: "Beware the weird radio emissions Galileo gathered from Jupiter's largest moon, Ganymede.",
#   info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
#   )
# Sample.create(name: "Enceladus Cassini",
#   filename: "texture_cassini_enceladus.mp3",
#   source_name: "cassini_enceladus",
#   thumbnail_file: "cassini_enceladus.jpeg",
#   description: "Saturn’s ocean-bearing moon also bears some spooky sounds! Here’s one captured by NASA's Cassini spacecraft.",
#   info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
#   )
# Sample.create(name: "Bow Shock Juno",
#   filename: "hat_juno_corssing_jupiter_bow_shock.mp3",
#   source_name: "jupiter",
#   thumbnail_file: "juno.jpeg",
#   description: "Juno will improve our understanding of the solar system's beginnings by revealing the origin and evolution of Jupiter.",
#   info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
#   )
# Sample.create(name: "Saturn Rotation Cassini",
#   filename: "snare_saturn_rotation_puzzle.mp3",
#   source_name: "cassini",
#   thumbnail_file: "cassini.jpeg",
#   description: "On approach to Saturn, data obtained by the Cassini spacecraft are already posing a puzzling question: How long is the day on Saturn? Credit: NASA, the European Space Agency and the Italian Space Agency",
#   info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
#   )
# Sample.create(name: "Star KIC Kepler",
#   filename: "hat_kepler_star.mp3",
#   source_name: "kepler",
#   thumbnail_file: "kepler.jpeg",
#   description: "Kepler: Star KIC12268220C Light Curve Waves to Sound.",
#   info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
#   )
# Sample.create(name: "Jupiter Lightning Voyager",
#   filename: "one_shot_voyager_lightning_on_jupiter.mp3",
#   source_name: "jupiter",
#   thumbnail_file: "voyager_1.jpeg",
#   description: "Voyager: Lightning on Jupiter",
#   info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
#   )
# Sample.create(name: "Sun 808 SOHO",
#   filename: "kick_sun_sonification_808.mp3",
#   source_name: "SOHO_sun_sonification",
#   thumbnail_file: "sun_sonification.jpeg",
#   description: "The Stanford Experimental Physics Lab sonified data from the European Space Agency and NASA's Solar and Heliospheric Observatory (SOHO). This humming sound captures the Sun’s natural vibrations and provides scientists with a concrete representation of its dynamic movements.",
#   info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
#   )
# Sample.create(name: "Whistler Mode 2 Parker",
#   filename: "one_shot_psp_whistler_mode_waves_2.mp3",
#   source_name: "parker_solar_probe",
#   thumbnail_file: "parker_solar_probe.jpeg",
#   description: "One year and three trips around the Sun later, NASA's Parker Solar Probe heard some weird, sci-fi sounds from plasma within the solar wind -- and those sounds may answer unanswered questions about how the wind forms.",
#   info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
#   )

# Sample.create(name: "Titan Haze Huygen",
#   filename: "snare_speeding_through_titan_haze.mp3",
#   source_name: "titan",
#   thumbnail_file: "titan.jpeg",
#   description: "This recording is a laboratory reconstruction of the sounds heard by Huygens' microphones - the probe that entered the atmosphere of Saturn's moon Titan. Several sound samples, taken at different times during the descent, are here combined together and give a realistic reproduction of what a traveller on board Huygens would have heard during one minute of the descent through Titan's atmosphere. Credit: ESA/NASA/JPL/University of Arizona",
#   info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
#   )
