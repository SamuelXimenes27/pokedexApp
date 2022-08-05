import 'dart:convert';

List<PokeModel> pokeApiFromJson(String str) =>
    List<PokeModel>.from(json.decode(str).map((x) => PokeModel.fromJson(x)));

String pokeApiToJson(List<PokeModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PokeModel {
  PokeModel({
    this.ability,
    this.berry,
    this.berryFirmness,
    this.berryFlavor,
    this.characteristic,
    this.contestEffect,
    this.contestType,
    this.eggGroup,
    this.encounterCondition,
    this.encounterConditionValue,
    this.encounterMethod,
    this.evolutionChain,
    this.evolutionTrigger,
    this.gender,
    this.generation,
    this.growthRate,
    this.item,
    this.itemAttribute,
    this.itemCategory,
    this.itemFlingEffect,
    this.itemPocket,
    this.language,
    this.location,
    this.locationArea,
    this.machine,
    this.move,
    this.moveAilment,
    this.moveBattleStyle,
    this.moveCategory,
    this.moveDamageClass,
    this.moveLearnMethod,
    this.moveTarget,
    this.nature,
    this.palParkArea,
    this.pokeathlonStat,
    this.pokedex,
    this.pokemon,
    this.pokemonColor,
    this.pokemonForm,
    this.pokemonHabitat,
    this.pokemonShape,
    this.pokemonSpecies,
    this.region,
    this.stat,
    this.superContestEffect,
    this.type,
    this.version,
    this.versionGroup,
  });

  String? ability;
  String? berry;
  String? berryFirmness;
  String? berryFlavor;
  String? characteristic;
  String? contestEffect;
  String? contestType;
  String? eggGroup;
  String? encounterCondition;
  String? encounterConditionValue;
  String? encounterMethod;
  String? evolutionChain;
  String? evolutionTrigger;
  String? gender;
  String? generation;
  String? growthRate;
  String? item;
  String? itemAttribute;
  String? itemCategory;
  String? itemFlingEffect;
  String? itemPocket;
  String? language;
  String? location;
  String? locationArea;
  String? machine;
  String? move;
  String? moveAilment;
  String? moveBattleStyle;
  String? moveCategory;
  String? moveDamageClass;
  String? moveLearnMethod;
  String? moveTarget;
  String? nature;
  String? palParkArea;
  String? pokeathlonStat;
  String? pokedex;
  String? pokemon;
  String? pokemonColor;
  String? pokemonForm;
  String? pokemonHabitat;
  String? pokemonShape;
  String? pokemonSpecies;
  String? region;
  String? stat;
  String? superContestEffect;
  String? type;
  String? version;
  String? versionGroup;

  factory PokeModel.fromJson(Map<String?, dynamic> json) => PokeModel(
        ability: json["ability"],
        berry: json["berry"],
        berryFirmness: json["berry-firmness"],
        berryFlavor: json["berry-flavor"],
        characteristic: json["characteristic"],
        contestEffect: json["contest-effect"],
        contestType: json["contest-type"],
        eggGroup: json["egg-group"],
        encounterCondition: json["encounter-condition"],
        encounterConditionValue: json["encounter-condition-value"],
        encounterMethod: json["encounter-method"],
        evolutionChain: json["evolution-chain"],
        evolutionTrigger: json["evolution-trigger"],
        gender: json["gender"],
        generation: json["generation"],
        growthRate: json["growth-rate"],
        item: json["item"],
        itemAttribute: json["item-attribute"],
        itemCategory: json["item-category"],
        itemFlingEffect: json["item-fling-effect"],
        itemPocket: json["item-pocket"],
        language: json["language"],
        location: json["location"],
        locationArea: json["location-area"],
        machine: json["machine"],
        move: json["move"],
        moveAilment: json["move-ailment"],
        moveBattleStyle: json["move-battle-style"],
        moveCategory: json["move-category"],
        moveDamageClass: json["move-damage-class"],
        moveLearnMethod: json["move-learn-method"],
        moveTarget: json["move-target"],
        nature: json["nature"],
        palParkArea: json["pal-park-area"],
        pokeathlonStat: json["pokeathlon-stat"],
        pokedex: json["pokedex"],
        pokemon: json["pokemon"],
        pokemonColor: json["pokemon-color"],
        pokemonForm: json["pokemon-form"],
        pokemonHabitat: json["pokemon-habitat"],
        pokemonShape: json["pokemon-shape"],
        pokemonSpecies: json["pokemon-species"],
        region: json["region"],
        stat: json["stat"],
        superContestEffect: json["super-contest-effect"],
        type: json["type"],
        version: json["version"],
        versionGroup: json["version-group"],
      );

  Map<String?, dynamic> toJson() => {
        "ability": ability,
        "berry": berry,
        "berry-firmness": berryFirmness,
        "berry-flavor": berryFlavor,
        "characteristic": characteristic,
        "contest-effect": contestEffect,
        "contest-type": contestType,
        "egg-group": eggGroup,
        "encounter-condition": encounterCondition,
        "encounter-condition-value": encounterConditionValue,
        "encounter-method": encounterMethod,
        "evolution-chain": evolutionChain,
        "evolution-trigger": evolutionTrigger,
        "gender": gender,
        "generation": generation,
        "growth-rate": growthRate,
        "item": item,
        "item-attribute": itemAttribute,
        "item-category": itemCategory,
        "item-fling-effect": itemFlingEffect,
        "item-pocket": itemPocket,
        "language": language,
        "location": location,
        "location-area": locationArea,
        "machine": machine,
        "move": move,
        "move-ailment": moveAilment,
        "move-battle-style": moveBattleStyle,
        "move-category": moveCategory,
        "move-damage-class": moveDamageClass,
        "move-learn-method": moveLearnMethod,
        "move-target": moveTarget,
        "nature": nature,
        "pal-park-area": palParkArea,
        "pokeathlon-stat": pokeathlonStat,
        "pokedex": pokedex,
        "pokemon": pokemon,
        "pokemon-color": pokemonColor,
        "pokemon-form": pokemonForm,
        "pokemon-habitat": pokemonHabitat,
        "pokemon-shape": pokemonShape,
        "pokemon-species": pokemonSpecies,
        "region": region,
        "stat": stat,
        "super-contest-effect": superContestEffect,
        "type": type,
        "version": version,
        "version-group": versionGroup,
      };
}
