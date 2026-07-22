#!/usr/bin/env bash
# Downloads all invited-speaker + organizer headshots into this folder,
# using the filenames the website expects.
#
# Run once from the site root:
#     bash photos/download_photos.sh
#
# Then reload the site — the photos load locally (self-hosted).

cd "$(dirname "$0")" || exit 1

dl() {
  printf '→ %s\n' "$2"
  if curl -fsSL --retry 2 -A "Mozilla/5.0 (headshot-fetch)" "$1" -o "$2"; then
    printf '   saved\n'
  else
    printf '   FAILED — download manually from: %s\n' "$1"
  fi
}

echo "Invited speakers"
dl "https://ymy4323460.github.io/assets/img/IMG_1201.JPG"          "mengyue_yang.jpg"
dl "https://www.cs.cmu.edu/~katef/images/KaterinaFragkiadaki.png"  "katerina_fragkiadaki.jpg"
dl "https://janericlenssen.github.io/figures/photo4.jpg"           "jan_eric_lenssen.jpg"
dl "http://maxjiang.ml/assets/img/max_profile_pic_sq.JPG"          "max_jiang.jpg"
dl "https://danijar.com/asset/face.jpg"                            "danijar_hafner.jpg"

echo ""
echo "Organizers"
dl "https://www.vis.uni-stuttgart.de/img/staff/schmalfuss_Jenny.png"          "jenny_schmalfuss.jpg"
dl "https://germanros.net/images/profile.jpg"                                 "german_ros.jpg"
dl "https://paschalidoud.github.io/figures/me-small.jpg"                      "despoina_paschalidou.jpg"
dl "https://robertomartinmartin.com/wp-content/uploads/2023/04/light_rmm.jpg" "roberto_martin_martin.jpg"
dl "https://static.sinfo.org/deck2/sinfo-33/speakers/public/69161ee37fef9d13bee61991" "jose_alvarez.jpg"

echo ""
echo "Done. Reload the site — photos now load locally."
