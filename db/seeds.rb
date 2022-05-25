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
  info_url: "https://en.wikipedia.org/wiki/THEMIS"
  )

Sample.create(name: "K_Star 808 Kepler KIC",
  filename: "kick_kepler_star_808.mp3",
  source_name: "kepler",
  thumbnail_file: "kepler.jpeg",
  description: "Kepler: Star KIC7671081B Light Curve Waves to Sound",
  info_url: "https://www.nasa.gov/mission_pages/kepler/overview/index.html"
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
  info_url: "https://www.jpl.nasa.gov/missions/juno"
  )

Sample.create(name: "SN_Plasmasphere Polar",
  filename: "snare_plasmaspheric_hiss.mp3",
  source_name: "nasa_polar",
  thumbnail_file: "nasa_polar.jpeg",
  description: "Plasmaspheric hiss waves as heard by NASA’s Polar mission as it passed around Earth.",
  info_url: "https://agupubs.onlinelibrary.wiley.com/doi/abs/10.1029/2021JA029644"
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
  info_url: "https://www.nasa.gov/mission_pages/cassini/main/index.html"
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
  info_url: "https://www.youtube.com/watch?v=2Z6UJbwxBZI"
  )

Sample.create(name: "M_Plasma 9 Voyager 1",
  filename: "melody_voyage_plasma_9.mp3",
  source_name: "voyager_1",
  thumbnail_file: "voyager_1.jpeg",
  description: "Voyager 1's plasma wave instrument detected the vibrations of dense interstellar plasma, or ionized gas, from October to November 2012 and April to May 2013. This sound reproduces the amplitude and frequency of the plasma waves as 'heard' by Voyager 1.",
  info_url: "https://www.youtube.com/watch?v=rutBta_MdmU"
  )

# One-Shots

Sample.create(name: "OS_Whistler Mode 1 Parker",
  filename: "one_shot_psp_whistler_mode_waves.mp3",
  source_name: "parker_solar_probe",
  thumbnail_file: "parker_solar_probe.jpeg",
  description: "One year and three trips around the Sun later, NASA's Parker Solar Probe heard some weird, sci-fi sounds from plasma within the solar wind -- and those sounds may answer unanswered questions about how the wind forms.",
  info_url: "https://www.nasa.gov/content/goddard/parker-solar-probe"
  )

Sample.create(name: "OS_Whistler Waves EMFISIS",
  filename: "one_shot_whistler_waves.mp3",
  source_name: "earth",
  thumbnail_file: "EMFISIS_earth.jpeg",
  description: "Whistler waves as heard by the EMFISIS instrument aboard NASA’s Van Allen Probes as it passed around Earth.",
  info_url: "https://vlfstanford.ku.edu.tr/research_topic_inlin/introduction-whistler-waves-magnetosphere/"
  )

Sample.create(name: "OS_Langmuir Waves Parker",
  filename: "one_shot_psp_langmuir_waves.mp3",
  source_name: "parker_solar_probe",
  thumbnail_file: "parker_solar_probe.jpeg",
  description: "One year and three trips around the Sun later, NASA's Parker Solar Probe heard some weird, sci-fi sounds from plasma within the solar wind -- and those sounds may answer unanswered questions about how the wind forms.",
  info_url: "https://en.wikipedia.org/wiki/Plasma_oscillation"
  )

Sample.create(name: "OS_Deep Space Hubble",
  filename: "one_shot_sonification_of_hubble_deep_space.mp3",
  source_name: "hubble_deep_space",
  thumbnail_file: "sonification_of_hubble_deep_space.jpeg",
  description: "Space becomes 'sonified' in this visualization of a cluster of galaxies imaged by NASA's Hubble Space Telescope. Time flows left to right, and the frequency of sound changes from bottom to top, ranging from 30 to 1,000 hertz. Objects near the bottom of the image produce lower notes, while those near the top produce higher ones. Most of the visible specks are galaxies housing countless stars. A few individual stars shine brightly in the foreground. Stars and compact galaxies create short, clear tones, while sprawling spiral galaxies emit longer notes that change pitch. The higher density of galaxies near the center of the image — the heart of this galaxy cluster, known as RXC J0142.9+4438 — results in a swell of mid-range tones halfway through the video. Hubble's Advanced Camera for Surveys and Wide Field Camera 3 acquired this image on Aug. 13, 2018.",
  info_url: "https://hubblesite.org/contents/articles/hubble-deep-fields"
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
