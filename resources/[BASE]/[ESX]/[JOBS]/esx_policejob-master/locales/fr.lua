Locales['fr'] = {
  -- Cloakroom
  ['cloakroom'] = 'Vestiaire',
  ['citizen_wear'] = 'Tenue Civil',
  ['police_wear'] = 'Tenue Policier',
  ['bullet_wear'] = 'Gilet pare-balles',
  ['no_outfit'] = 'il n\'y a pas d\'uniforme à votre taille...',
  ['open_cloackroom'] = 'Appuyez sur ~INPUT_CONTEXT~ pour vous changer',
  -- Armory
  ['remove_object'] = 'Prendre objets',
  ['deposit_object'] = 'Déposer objets',
  ['get_weapon'] = 'Prendre Armes',
  ['put_weapon'] = 'Déposer Armes',
  ['armory'] = 'Saisies',
  ['open_armory'] = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder aux Saisies',
  ['armory_item'] = '$%s',
  ['armory_componenttitle'] = 'Saisies - Accessoires d\'armes',
  ['get_weapon_menu'] = 'Saisies - Retirer armes',
  ['put_weapon_menu'] = 'Saisies - Stocker armes',
  ['bought']                   = 'Vous avez acheté ~b~1x ',
  ['not_enough_money']         = 'Vous n\'avez ~r~pas assez~s~ d\'argent.',
  ['max_item']                 = 'Vous en portez déjà assez sur vous.',
  ['not_enough']               = 'Pas assez ~r~d\'argent~s~ dans l\'entreprise',
  -- Vehicles
  ['vehicle_menu'] = 'Véhicules',
  ['vehicle_blocked'] = 'Tous les points de spawn sont bloqués!',
  ['garage_prompt'] = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder aux ~y~Actions Véhicules~s~.',
  ['garage_title'] = 'Actions Véhicules',
  ['garage_stored'] = 'Rangé',
  ['garage_notstored'] = 'Sorti(e)',
  ['garage_storing'] = 'Tentative de suppression du véhicule, assurez-vous que personne ne soit autour.',
  ['garage_has_stored'] = 'Le véhicule a bien été rangé dans le garage',
  ['garage_has_notstored'] = 'Aucun véhicule dans le garage',
  ['garage_notavailable'] = 'Votre véhicule n\'est pas rangé dans le garage.',
  ['garage_blocked'] = 'La sortie du garage est obstruée!',
  ['garage_empty'] = 'Vous n\'avez aucun véhicule dans le garage.',
  ['garage_released'] = 'Votre véhicule a été sorti.',
  ['garage_store_nearby'] = 'Aucun véhicule a proximité.',
  ['garage_storeditem'] = 'Ouvrir le garage',
  ['garage_storeitem'] = 'Ranger le véhicule',
  ['garage_buyitem'] = 'Magasin de véhicule',
  ['garage_notauthorized'] = 'Vous n\'êtes pas autorisé à acheter ce type de véhicules.',
  ['helicopter_prompt'] = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder aux ~y~Actions de l\'hélicoptère~s~.',
  ['shop_item'] = '$%s',
  ['vehicleshop_title'] = 'Magasin de véhicule',
  ['vehicleshop_confirm'] = 'Voulez-vous acheter ce véhicule?',
  ['vehicleshop_bought'] = 'Vous avez acheté ~y~%s~s~ pour ~r~$%s~s~',
  ['vehicleshop_money'] = 'Vous ne pouvez pas acheter ce véhicule',
  ['vehicleshop_awaiting_model'] = 'Le véhicule est actuellement en ~g~PRÉPARATION~s~ veuillez patienter',
  ['confirm_no'] = 'Non',
  ['confirm_yes'] = 'Oui',
  -- Service
  ['service_max'] = 'Vous ne pouvez pas entrer en service, officiers en service: %s/%s',
  ['service_not'] = 'Vous n\'êtes pas en service! Vous devez d\'abord enfiler votre tenue.',
  ['service_anonunce'] = 'Prise de service',
  ['service_in'] = 'Vous êtes en service, bon courage!',
  ['service_in_announce'] = 'L\'officier ~y~%s~s~ est entré en service!',
  ['service_out'] = 'Vous avez terminé votre service.',
  ['service_out_announce'] = 'L\'officier ~y~%s~s~ a quitté son service.',
  -- Action Menu
  ['citizen_interaction'] = 'Interaction citoyen',
  ['vehicle_interaction'] = 'Interaction véhicule',
  ['object_spawner'] = 'Placer objets',

  ['id_card'] = 'Carte d\'identité',
  ['search'] = 'Fouiller',
  ['handcuff'] = 'Menotter / Démenotter',
  ['drag'] = 'Escorter',
  ['put_in_vehicle'] = 'Mettre dans véhicule',
  ['out_the_vehicle'] = 'Sortir du véhicule',
  ['fine_personalised'] = 'Amande personnaliser',
  ['invoice_amount'] = 'Montant de la facture',
  ['fine'] = 'Amende pret inscrite',
  ['unpaid_bills'] = 'Gérer les amendes impayées',
  ['license_check'] = 'Gérer les licences',
  ['licence_you_ppa'] = 'Vous venez de donner le PPA a un citoyen.',
  ['license_revoke'] = 'Révoquer la licence',
  ['license_revoked'] = 'Votre ~b~%s~s~ a été ~y~révoqué~s~!',
  ['licence_you_revoked'] = 'Vous avez révoqué un ~b~%s~s~ qui appartenait à ~y~%s~s~',
  ['no_players_nearby'] = 'Aucun joueur à proximité',
  ['being_searched'] = 'Vous êtes ~y~recherché(e)~s~ par la ~b~Police~s~',
  -- Vehicle interaction
  ['vehicle_info'] = 'infos véhicule',
  ['pick_lock'] = 'crocheter véhicule',
  ['vehicle_unlocked'] = 'véhicule ~g~déverouillé~s~',
  ['no_vehicles_nearby'] = 'aucun véhicule à proximité',
  ['impound'] = 'véhicule en fourrière',
  ['impound_prompt'] = 'appuyez sur ~INPUT_CONTEXT~ pour annuler la ~y~saisie du véhicule~s~',
  ['impound_canceled'] = 'vous avez annulé la saisie',
  ['impound_canceled_moved'] = 'la saisie a été annulée parce que le véhicule a déménagé',
  ['impound_successful'] = 'vous avez saisi le véhicule',
  ['search_database'] = 'vehicle information',
  ['search_database_title'] = 'informations sur le véhicule - recherche avec numéro d\'enregistrement',
  ['search_database_error_invalid'] = 'Ce n\'est ~r~pas~s~ un ~y~numéro d\'enregistrement valide~s~',
  -- Traffic interaction
  ['traffic_interaction'] = 'interaction routière',
  ['cone'] = 'plot',
  ['barrier'] = 'barrière',
  ['spikestrips'] = 'herse',
  ['box'] = 'caisse',
  ['cash'] = 'caisse',
  -- ID Card Menu
  ['name'] = 'nom: %s',
  ['job'] = 'métier: %s',
  ['sex'] = 'sexe: %s',
  ['dob'] = 'DDN: %s',
  ['height'] = 'taille: %s',
  ['bac'] = 'BAC: %s',
  ['unknown'] = 'inconnu',
  ['male'] = 'homme',
  ['female'] = 'femme',
  -- Body Search Menu
  ['guns_label'] = '--- Armes ---',
  ['inventory_label'] = '--- Inventaire ---',
  ['license_label'] = ' --- Licenses ---',
  ['confiscate'] = 'confisquer %s',
  ['confiscate_weapon'] = 'confisqué %s avec %s balles',
  ['confiscate_inv'] = 'confisquer %sx %s',
  ['confiscate_dirty'] = 'confisquer argent sale: <span style="color:red;">€%s</span>',
  ['you_confiscated'] = 'vous avez confisqué ~y~%sx~s~ ~b~%s~s~ à ~b~%s~s~',
  ['got_confiscated'] = '~y~%sx~s~ ~b~%s~s~ ont été confisqués par ~y~%s~s~',
  ['you_confiscated_account'] = 'vous avez confisqué ~g~$%s~s~ (%s) à ~b~%s~s~',
  ['got_confiscated_account'] = '~g~$%s~s~ (%s) ont été confisqués par ~y~%s~s~',
  ['you_confiscated_weapon'] = 'vous avez confisqué ~b~%s~s~ à ~b~%s~s~ avec ~o~%s~s~ balles',
  ['got_confiscated_weapon'] = 'votre ~b~%s~s~ avec ~o~%s~s~ balles a été confisqué par ~y~%s~s~',
  ['traffic_offense'] = 'code de la route',
  ['minor_offense'] = 'délit mineur',
  ['average_offense'] = 'délit moyen',
  ['major_offense'] = 'délit grave',
  ['fine_total'] = 'amende: %s',
  -- Vehicle Info Menu
  ['plate'] = 'n°: %s',
  ['owner_unknown'] = 'propriétaire: Inconnu',
  ['owner'] = 'propriétaire: %s',
  -- Boss Menu
  ['open_bossmenu'] = 'appuyez sur ~INPUT_CONTEXT~ pour ouvrir le menu',
  ['quantity_invalid'] = 'quantité invalide',
  ['have_withdrawn'] = 'vous avez retiré ~y~%sx~s~ ~b~%s~s~',
  ['have_deposited'] = 'vous avez déposé ~y~%sx~s~ ~b~%s~s~',
  ['quantity'] = 'quantité',
  ['inventory'] = 'inventaire',
  ['police_stock'] = 'coffre de la police',
  -- Misc
  ['remove_prop'] = 'appuyez sur ~INPUT_CONTEXT~ pour enlever l\'objet',
  ['map_blip'] = 'Commissariat',
  ['unrestrained_timer'] = 'vous sentez que vos menottes deviennent fragiles.',
  -- Notifications
  ['alert_police'] = 'alerte police',
  ['phone_police'] = 'police',
}
