import 'package:mobile_number_input/src/models/country_code.dart';

/// A provider for country-related operations, specifically dealing with
/// retrieving and setting default country codes and details.
///
/// This class holds a list of [CountryCode] objects that represent various
/// countries with their respective dial codes and flag URIs. It provides
/// utility methods to retrieve these countries or find a specific one based
/// on a given name.
class CountryProvider {
  /// Finds and returns a [CountryCode] based on a given country name.
  ///
  /// This method searches through the list of available [countries] for a
  /// match with the given [countryName]. If a match is found, it returns the
  /// corresponding [CountryCode]. If no match is found, it throws an exception.
  ///
  /// - Parameters:
  ///   - countryName: A `String` representing the name of the country to find.
  /// - Returns: The [CountryCode] of the found country.
  /// - Throws: An `Exception` if no matching country is found.
  ///
  /// Example:
  /// ```dart
  /// var countryCode = CountryProvider.findCountryByName('Canada');
  /// print(countryCode.dialCode); // Output: +1
  /// ```
  static CountryCode findCountryByName(String countryName) {
    var foundCountry = countries.firstWhere(
      (country) => country.name.toLowerCase() == countryName.toLowerCase(),
      orElse: () => throw Exception('No country found'),
    );
    return foundCountry;
  }

  /// A static list of [CountryCode] objects representing various countries.
  ///
  /// This list includes details such as the country's name, its dial code,
  /// and the URI to its flag image. It's used throughout the provider to
  /// perform various operations related to country codes.
  static final List<CountryCode> countries = [
    CountryCode(
      name: 'Andorra',
      dialCode: '+376',
      flagUri: 'assets/country/ad.png',
    ),
    CountryCode(
      name: 'United Arab Emirates',
      dialCode: '+971',
      flagUri: 'assets/country/ae.png',
    ),
    CountryCode(
      name: 'Afghanistan',
      dialCode: '+93',
      flagUri: 'assets/country/af.png',
    ),
    CountryCode(
      name: 'Antigua and Barbuda',
      dialCode: '+1-268',
      flagUri: 'assets/country/ag.png',
    ),
    CountryCode(
      name: 'Anguilla',
      dialCode: '+1-264',
      flagUri: 'assets/country/ai.png',
    ),
    CountryCode(
      name: 'Albania',
      dialCode: '+355',
      flagUri: 'assets/country/al.png',
    ),
    CountryCode(
      name: 'Armenia',
      dialCode: '+374',
      flagUri: 'assets/country/am.png',
    ),
    CountryCode(
      name: 'Angola',
      dialCode: '+244',
      flagUri: 'assets/country/ao.png',
    ),
    CountryCode(
      name: 'Antarctica',
      dialCode: '+672',
      flagUri: 'assets/country/aq.png',
    ),
    CountryCode(
      name: 'Argentina',
      dialCode: '+54',
      flagUri: 'assets/country/ar.png',
    ),
    CountryCode(
      name: 'American Samoa',
      dialCode: '+1-684',
      flagUri: 'assets/country/as.png',
    ),
    CountryCode(
      name: 'Austria',
      dialCode: '+43',
      flagUri: 'assets/country/at.png',
    ),
    CountryCode(
      name: 'Australia',
      dialCode: '+61',
      flagUri: 'assets/country/au.png',
    ),
    CountryCode(
      name: 'Aruba',
      dialCode: '+297',
      flagUri: 'assets/country/aw.png',
    ),
    CountryCode(
      name: 'Åland Islands',
      dialCode: '+358',
      flagUri: 'assets/country/ax.png',
    ),
    CountryCode(
      name: 'Azerbaijan',
      dialCode: '+994',
      flagUri: 'assets/country/az.png',
    ),
    CountryCode(
      name: 'Bosnia and Herzegovina',
      dialCode: '+387',
      flagUri: 'assets/country/ba.png',
    ),
    CountryCode(
      name: 'Barbados',
      dialCode: '+1-246',
      flagUri: 'assets/country/bb.png',
    ),
    CountryCode(
      name: 'Bangladesh',
      dialCode: '+880',
      flagUri: 'assets/country/bd.png',
    ),
    CountryCode(
      name: 'Belgium',
      dialCode: '+32',
      flagUri: 'assets/country/be.png',
    ),
    CountryCode(
      name: 'Burkina Faso',
      dialCode: '+226',
      flagUri: 'assets/country/bf.png',
    ),
    CountryCode(
      name: 'Bulgaria',
      dialCode: '+359',
      flagUri: 'assets/country/bg.png',
    ),
    CountryCode(
      name: 'Bahrain',
      dialCode: '+973',
      flagUri: 'assets/country/bh.png',
    ),
    CountryCode(
      name: 'Burundi',
      dialCode: '+257',
      flagUri: 'assets/country/bi.png',
    ),
    CountryCode(
      name: 'Benin',
      dialCode: '+229',
      flagUri: 'assets/country/bj.png',
    ),
    CountryCode(
      name: 'Saint Barthélemy',
      dialCode: '+590',
      flagUri: 'assets/country/bl.png',
    ),
    CountryCode(
      name: 'Bermuda',
      dialCode: '+1-441',
      flagUri: 'assets/country/bm.png',
    ),
    CountryCode(
      name: 'Brunei',
      dialCode: '+673',
      flagUri: 'assets/country/bn.png',
    ),
    CountryCode(
      name: 'Bolivia',
      dialCode: '+591',
      flagUri: 'assets/country/bo.png',
    ),
    CountryCode(
      name: 'Bonaire, Sint Eustatius and Saba',
      dialCode: '+599',
      flagUri: 'assets/country/bq.png',
    ),
    CountryCode(
      name: 'Brazil',
      dialCode: '+55',
      flagUri: 'assets/country/br.png',
    ),
    CountryCode(
      name: 'Bahamas',
      dialCode: '+1-242',
      flagUri: 'assets/country/bs.png',
    ),
    CountryCode(
      name: 'Bhutan',
      dialCode: '+975',
      flagUri: 'assets/country/bt.png',
    ),
    CountryCode(
      name: 'Bouvet Island',
      dialCode: '+47',
      flagUri: 'assets/country/bv.png',
    ),
    CountryCode(
      name: 'Botswana',
      dialCode: '+267',
      flagUri: 'assets/country/bw.png',
    ),
    CountryCode(
      name: 'Belarus',
      dialCode: '+375',
      flagUri: 'assets/country/by.png',
    ),
    CountryCode(
      name: 'Belize',
      dialCode: '+501',
      flagUri: 'assets/country/bz.png',
    ),
    CountryCode(
      name: 'Canada',
      dialCode: '+1',
      flagUri: 'assets/country/ca.png',
    ),
    CountryCode(
      name: 'Cocos (Keeling) Islands',
      dialCode: '+61',
      flagUri: 'assets/country/cc.png',
    ),
    CountryCode(
      name: 'Democratic Republic of the Congo',
      dialCode: '+243',
      flagUri: 'assets/country/cd.png',
    ),
    CountryCode(
      name: 'Central African Republic',
      dialCode: '+236',
      flagUri: 'assets/country/cf.png',
    ),
    CountryCode(
      name: 'Republic of the Congo',
      dialCode: '+242',
      flagUri: 'assets/country/cg.png',
    ),
    CountryCode(
      name: 'Switzerland',
      dialCode: '+41',
      flagUri: 'assets/country/ch.png',
    ),
    CountryCode(
      name: 'Côte d\'Ivoire',
      dialCode: '+225',
      flagUri: 'assets/country/ci.png',
    ),
    CountryCode(
      name: 'Cook Islands',
      dialCode: '+682',
      flagUri: 'assets/country/ck.png',
    ),
    CountryCode(
      name: 'Chile',
      dialCode: '+56',
      flagUri: 'assets/country/cl.png',
    ),
    CountryCode(
      name: 'Cameroon',
      dialCode: '+237',
      flagUri: 'assets/country/cm.png',
    ),
    CountryCode(
      name: 'China',
      dialCode: '+86',
      flagUri: 'assets/country/cn.png',
    ),
    CountryCode(
      name: 'Colombia',
      dialCode: '+57',
      flagUri: 'assets/country/co.png',
    ),
    CountryCode(
      name: 'Costa Rica',
      dialCode: '+506',
      flagUri: 'assets/country/cr.png',
    ),
    CountryCode(
      name: 'Cuba',
      dialCode: '+53',
      flagUri: 'assets/country/cu.png',
    ),
    CountryCode(
      name: 'Cape Verde',
      dialCode: '+238',
      flagUri: 'assets/country/cv.png',
    ),
    CountryCode(
      name: 'Curaçao',
      dialCode: '+599',
      flagUri: 'assets/country/cw.png',
    ),
    CountryCode(
      name: 'Christmas Island',
      dialCode: '+61',
      flagUri: 'assets/country/cx.png',
    ),
    CountryCode(
      name: 'Cyprus',
      dialCode: '+357',
      flagUri: 'assets/country/cy.png',
    ),
    CountryCode(
      name: 'Czech Republic',
      dialCode: '+420',
      flagUri: 'assets/country/cz.png',
    ),
    CountryCode(
      name: 'Germany',
      dialCode: '+49',
      flagUri: 'assets/country/de.png',
    ),
    CountryCode(
      name: 'Djibouti',
      dialCode: '+253',
      flagUri: 'assets/country/dj.png',
    ),
    CountryCode(
      name: 'Denmark',
      dialCode: '+45',
      flagUri: 'assets/country/dk.png',
    ),
    CountryCode(
      name: 'Dominica',
      dialCode: '+1-767',
      flagUri: 'assets/country/dm.png',
    ),
    CountryCode(
      name: 'Dominican Republic',
      dialCode: '+1-809',
      flagUri: 'assets/country/do.png',
    ),
    CountryCode(
      name: 'Algeria',
      dialCode: '+213',
      flagUri: 'assets/country/dz.png',
    ),
    CountryCode(
      name: 'Ecuador',
      dialCode: '+593',
      flagUri: 'assets/country/ec.png',
    ),
    CountryCode(
      name: 'Estonia',
      dialCode: '+372',
      flagUri: 'assets/country/ee.png',
    ),
    CountryCode(
      name: 'Egypt',
      dialCode: '+20',
      flagUri: 'assets/country/eg.png',
    ),
    CountryCode(
      name: 'Western Sahara',
      dialCode: '+212',
      flagUri: 'assets/country/eh.png',
    ),
    CountryCode(
      name: 'Eritrea',
      dialCode: '+291',
      flagUri: 'assets/country/er.png',
    ),
    CountryCode(
      name: 'Spain',
      dialCode: '+34',
      flagUri: 'assets/country/es.png',
    ),
    CountryCode(
      name: 'Ethiopia',
      dialCode: '+251',
      flagUri: 'assets/country/et.png',
    ),
    CountryCode(
      name: 'Finland',
      dialCode: '+358',
      flagUri: 'assets/country/fi.png',
    ),
    CountryCode(
      name: 'Fiji',
      dialCode: '+679',
      flagUri: 'assets/country/fj.png',
    ),
    CountryCode(
      name: 'Falkland Islands',
      dialCode: '+500',
      flagUri: 'assets/country/fk.png',
    ),
    CountryCode(
      name: 'Micronesia',
      dialCode: '+691',
      flagUri: 'assets/country/fm.png',
    ),
    CountryCode(
      name: 'Faroe Islands',
      dialCode: '+298',
      flagUri: 'assets/country/fo.png',
    ),
    CountryCode(
      name: 'France',
      dialCode: '+33',
      flagUri: 'assets/country/fr.png',
    ),
    CountryCode(
      name: 'Gabon',
      dialCode: '+241',
      flagUri: 'assets/country/ga.png',
    ),
    CountryCode(
      name: 'England',
      dialCode: '+44',
      flagUri: 'assets/country/gb-eng.png',
    ),
    CountryCode(
      name: 'Northern Ireland',
      dialCode: '+44',
      flagUri: 'assets/country/gb-nir.png',
    ),
    CountryCode(
      name: 'Scotland',
      dialCode: '+44',
      flagUri: 'assets/country/gb-sct.png',
    ),
    CountryCode(
      name: 'Wales',
      dialCode: '+44',
      flagUri: 'assets/country/gb-wls.png',
    ),
    CountryCode(
      name: 'United Kingdom',
      dialCode: '+44',
      flagUri: 'assets/country/gb.png',
    ),
    CountryCode(
      name: 'Grenada',
      dialCode: '+1-473',
      flagUri: 'assets/country/gd.png',
    ),
    CountryCode(
      name: 'Georgia',
      dialCode: '+995',
      flagUri: 'assets/country/ge.png',
    ),
    CountryCode(
      name: 'French Guiana',
      dialCode: '+594',
      flagUri: 'assets/country/gf.png',
    ),
    CountryCode(
      name: 'Guernsey',
      dialCode: '+44-1481',
      flagUri: 'assets/country/gg.png',
    ),
    CountryCode(
      name: 'Ghana',
      dialCode: '+233',
      flagUri: 'assets/country/gh.png',
    ),
    CountryCode(
      name: 'Gibraltar',
      dialCode: '+350',
      flagUri: 'assets/country/gi.png',
    ),
    CountryCode(
      name: 'Greenland',
      dialCode: '+299',
      flagUri: 'assets/country/gl.png',
    ),
    CountryCode(
      name: 'Gambia',
      dialCode: '+220',
      flagUri: 'assets/country/gm.png',
    ),
    CountryCode(
      name: 'Guinea',
      dialCode: '+224',
      flagUri: 'assets/country/gn.png',
    ),
    CountryCode(
      name: 'Guadeloupe',
      dialCode: '+590',
      flagUri: 'assets/country/gp.png',
    ),
    CountryCode(
      name: 'Equatorial Guinea',
      dialCode: '+240',
      flagUri: 'assets/country/gq.png',
    ),
    CountryCode(
      name: 'Greece',
      dialCode: '+30',
      flagUri: 'assets/country/gr.png',
    ),
    CountryCode(
      name: 'South Georgia and the South Sandwich Islands',
      dialCode: '+500',
      flagUri: 'assets/country/gs.png',
    ),
    CountryCode(
      name: 'Guatemala',
      dialCode: '+502',
      flagUri: 'assets/country/gt.png',
    ),
    CountryCode(
      name: 'Guam',
      dialCode: '+1-671',
      flagUri: 'assets/country/gu.png',
    ),
    CountryCode(
      name: 'Guinea-Bissau',
      dialCode: '+245',
      flagUri: 'assets/country/gw.png',
    ),
    CountryCode(
      name: 'Guyana',
      dialCode: '+592',
      flagUri: 'assets/country/gy.png',
    ),
    CountryCode(
      name: 'Hong Kong',
      dialCode: '+852',
      flagUri: 'assets/country/hk.png',
    ),
    CountryCode(
      name: 'Heard Island and McDonald Islands',
      dialCode: '',
      flagUri: 'assets/country/hm.png',
    ),
    CountryCode(
      name: 'Honduras',
      dialCode: '+504',
      flagUri: 'assets/country/hn.png',
    ),
    CountryCode(
      name: 'Croatia',
      dialCode: '+385',
      flagUri: 'assets/country/hr.png',
    ),
    CountryCode(
      name: 'Haiti',
      dialCode: '+509',
      flagUri: 'assets/country/ht.png',
    ),
    CountryCode(
      name: 'Hungary',
      dialCode: '+36',
      flagUri: 'assets/country/hu.png',
    ),
    CountryCode(
      name: 'Indonesia',
      dialCode: '+62',
      flagUri: 'assets/country/id.png',
    ),
    CountryCode(
      name: 'Ireland',
      dialCode: '+353',
      flagUri: 'assets/country/ie.png',
    ),
    CountryCode(
      name: 'Israel',
      dialCode: '+972',
      flagUri: 'assets/country/il.png',
    ),
    CountryCode(
      name: 'Isle of Man',
      dialCode: '+44-1624',
      flagUri: 'assets/country/im.png',
    ),
    CountryCode(
      name: 'India',
      dialCode: '+91',
      flagUri: 'assets/country/in.png',
    ),
    CountryCode(
      name: 'British Indian Ocean Territory',
      dialCode: '+246',
      flagUri: 'assets/country/io.png',
    ),
    CountryCode(
      name: 'Iraq',
      dialCode: '+964',
      flagUri: 'assets/country/iq.png',
    ),
    CountryCode(
      name: 'Iran',
      dialCode: '+98',
      flagUri: 'assets/country/ir.png',
    ),
    CountryCode(
      name: 'Iceland',
      dialCode: '+354',
      flagUri: 'assets/country/is.png',
    ),
    CountryCode(
      name: 'Italy',
      dialCode: '+39',
      flagUri: 'assets/country/it.png',
    ),
    CountryCode(
      name: 'Jersey',
      dialCode: '+44-1534',
      flagUri: 'assets/country/je.png',
    ),
    CountryCode(
      name: 'Jamaica',
      dialCode: '+1-876',
      flagUri: 'assets/country/jm.png',
    ),
    CountryCode(
      name: 'Jordan',
      dialCode: '+962',
      flagUri: 'assets/country/jo.png',
    ),
    CountryCode(
      name: 'Japan',
      dialCode: '+81',
      flagUri: 'assets/country/jp.png',
    ),
    CountryCode(
      name: 'Kenya',
      dialCode: '+254',
      flagUri: 'assets/country/ke.png',
    ),
    CountryCode(
      name: 'Kyrgyzstan',
      dialCode: '+996',
      flagUri: 'assets/country/kg.png',
    ),
    CountryCode(
      name: 'Cambodia',
      dialCode: '+855',
      flagUri: 'assets/country/kh.png',
    ),
    CountryCode(
      name: 'Kiribati',
      dialCode: '+686',
      flagUri: 'assets/country/ki.png',
    ),
    CountryCode(
      name: 'Comoros',
      dialCode: '+269',
      flagUri: 'assets/country/km.png',
    ),
    CountryCode(
      name: 'Saint Kitts and Nevis',
      dialCode: '+1-869',
      flagUri: 'assets/country/kn.png',
    ),
    CountryCode(
      name: 'North Korea',
      dialCode: '+850',
      flagUri: 'assets/country/kp.png',
    ),
    CountryCode(
      name: 'South Korea',
      dialCode: '+82',
      flagUri: 'assets/country/kr.png',
    ),
    CountryCode(
      name: 'Kuwait',
      dialCode: '+965',
      flagUri: 'assets/country/kw.png',
    ),
    CountryCode(
      name: 'Cayman Islands',
      dialCode: '+1-345',
      flagUri: 'assets/country/ky.png',
    ),
    CountryCode(
      name: 'Kazakhstan',
      dialCode: '+7',
      flagUri: 'assets/country/kz.png',
    ),
    CountryCode(
      name: 'Laos',
      dialCode: '+856',
      flagUri: 'assets/country/la.png',
    ),
    CountryCode(
      name: 'Lebanon',
      dialCode: '+961',
      flagUri: 'assets/country/lb.png',
    ),
    CountryCode(
      name: 'Saint Lucia',
      dialCode: '+1-758',
      flagUri: 'assets/country/lc.png',
    ),
    CountryCode(
      name: 'Liechtenstein',
      dialCode: '+423',
      flagUri: 'assets/country/li.png',
    ),
    CountryCode(
      name: 'Sri Lanka',
      dialCode: '+94',
      flagUri: 'assets/country/lk.png',
    ),
    CountryCode(
      name: 'Liberia',
      dialCode: '+231',
      flagUri: 'assets/country/lr.png',
    ),
    CountryCode(
      name: 'Lesotho',
      dialCode: '+266',
      flagUri: 'assets/country/ls.png',
    ),
    CountryCode(
      name: 'Lithuania',
      dialCode: '+370',
      flagUri: 'assets/country/lt.png',
    ),
    CountryCode(
      name: 'Luxembourg',
      dialCode: '+352',
      flagUri: 'assets/country/lu.png',
    ),
    CountryCode(
      name: 'Latvia',
      dialCode: '+371',
      flagUri: 'assets/country/lv.png',
    ),
    CountryCode(
      name: 'Libya',
      dialCode: '+218',
      flagUri: 'assets/country/ly.png',
    ),
    CountryCode(
      name: 'Morocco',
      dialCode: '+212',
      flagUri: 'assets/country/ma.png',
    ),
    CountryCode(
      name: 'Monaco',
      dialCode: '+377',
      flagUri: 'assets/country/mc.png',
    ),
    CountryCode(
      name: 'Moldova',
      dialCode: '+373',
      flagUri: 'assets/country/md.png',
    ),
    CountryCode(
      name: 'Montenegro',
      dialCode: '+382',
      flagUri: 'assets/country/me.png',
    ),
    CountryCode(
      name: 'Saint Martin (French part)',
      dialCode: '+590',
      flagUri: 'assets/country/mf.png',
    ),
    CountryCode(
      name: 'Madagascar',
      dialCode: '+261',
      flagUri: 'assets/country/mg.png',
    ),
    CountryCode(
      name: 'Marshall Islands',
      dialCode: '+692',
      flagUri: 'assets/country/mh.png',
    ),
    CountryCode(
      name: 'North Macedonia',
      dialCode: '+389',
      flagUri: 'assets/country/mk.png',
    ),
    CountryCode(
      name: 'Mali',
      dialCode: '+223',
      flagUri: 'assets/country/ml.png',
    ),
    CountryCode(
      name: 'Myanmar',
      dialCode: '+95',
      flagUri: 'assets/country/mm.png',
    ),
    CountryCode(
      name: 'Mongolia',
      dialCode: '+976',
      flagUri: 'assets/country/mn.png',
    ),
    CountryCode(
      name: 'Macau',
      dialCode: '+853',
      flagUri: 'assets/country/mo.png',
    ),
    CountryCode(
      name: 'Northern Mariana Islands',
      dialCode: '+1-670',
      flagUri: 'assets/country/mp.png',
    ),
    CountryCode(
      name: 'Martinique',
      dialCode: '+596',
      flagUri: 'assets/country/mq.png',
    ),
    CountryCode(
      name: 'Mauritania',
      dialCode: '+222',
      flagUri: 'assets/country/mr.png',
    ),
    CountryCode(
      name: 'Montserrat',
      dialCode: '+1-664',
      flagUri: 'assets/country/ms.png',
    ),
    CountryCode(
      name: 'Malta',
      dialCode: '+356',
      flagUri: 'assets/country/mt.png',
    ),
    CountryCode(
      name: 'Mauritius',
      dialCode: '+230',
      flagUri: 'assets/country/mu.png',
    ),
    CountryCode(
      name: 'Maldives',
      dialCode: '+960',
      flagUri: 'assets/country/mv.png',
    ),
    CountryCode(
      name: 'Malawi',
      dialCode: '+265',
      flagUri: 'assets/country/mw.png',
    ),
    CountryCode(
      name: 'Mexico',
      dialCode: '+52',
      flagUri: 'assets/country/mx.png',
    ),
    CountryCode(
      name: 'Malaysia',
      dialCode: '+60',
      flagUri: 'assets/country/my.png',
    ),
    CountryCode(
      name: 'Mozambique',
      dialCode: '+258',
      flagUri: 'assets/country/mz.png',
    ),
    CountryCode(
      name: 'Namibia',
      dialCode: '+264',
      flagUri: 'assets/country/na.png',
    ),
    CountryCode(
      name: 'New Caledonia',
      dialCode: '+687',
      flagUri: 'assets/country/nc.png',
    ),
    CountryCode(
      name: 'Niger',
      dialCode: '+227',
      flagUri: 'assets/country/ne.png',
    ),
    CountryCode(
      name: 'Norfolk Island',
      dialCode: '+672',
      flagUri: 'assets/country/nf.png',
    ),
    CountryCode(
      name: 'Nigeria',
      dialCode: '+234',
      flagUri: 'assets/country/ng.png',
    ),
    CountryCode(
      name: 'Nicaragua',
      dialCode: '+505',
      flagUri: 'assets/country/ni.png',
    ),
    CountryCode(
      name: 'Netherlands',
      dialCode: '+31',
      flagUri: 'assets/country/nl.png',
    ),
    CountryCode(
      name: 'Norway',
      dialCode: '+47',
      flagUri: 'assets/country/no.png',
    ),
    CountryCode(
      name: 'Nepal',
      dialCode: '+977',
      flagUri: 'assets/country/np.png',
    ),
    CountryCode(
      name: 'Nauru',
      dialCode: '+674',
      flagUri: 'assets/country/nr.png',
    ),
    CountryCode(
      name: 'Niue',
      dialCode: '+683',
      flagUri: 'assets/country/nu.png',
    ),
    CountryCode(
      name: 'New Zealand',
      dialCode: '+64',
      flagUri: 'assets/country/nz.png',
    ),
    CountryCode(
      name: 'Oman',
      dialCode: '+968',
      flagUri: 'assets/country/om.png',
    ),
    CountryCode(
      name: 'Panama',
      dialCode: '+507',
      flagUri: 'assets/country/pa.png',
    ),
    CountryCode(
      name: 'Peru',
      dialCode: '+51',
      flagUri: 'assets/country/pe.png',
    ),
    CountryCode(
      name: 'French Polynesia',
      dialCode: '+689',
      flagUri: 'assets/country/pf.png',
    ),
    CountryCode(
      name: 'Papua New Guinea',
      dialCode: '+675',
      flagUri: 'assets/country/pg.png',
    ),
    CountryCode(
      name: 'Philippines',
      dialCode: '+63',
      flagUri: 'assets/country/ph.png',
    ),
    CountryCode(
      name: 'Pakistan',
      dialCode: '+92',
      flagUri: 'assets/country/pk.png',
    ),
    CountryCode(
      name: 'Poland',
      dialCode: '+48',
      flagUri: 'assets/country/pl.png',
    ),
    CountryCode(
      name: 'Saint Pierre and Miquelon',
      dialCode: '+508',
      flagUri: 'assets/country/pm.png',
    ),
    CountryCode(
      name: 'Pitcairn',
      dialCode: '+64',
      flagUri: 'assets/country/pn.png',
    ),
    CountryCode(
      name: 'Puerto Rico',
      dialCode: '+1-787, +1-939',
      flagUri: 'assets/country/pr.png',
    ),
    CountryCode(
      name: 'Palestine',
      dialCode: '+970',
      flagUri: 'assets/country/ps.png',
    ),
    CountryCode(
      name: 'Portugal',
      dialCode: '+351',
      flagUri: 'assets/country/pt.png',
    ),
    CountryCode(
      name: 'Palau',
      dialCode: '+680',
      flagUri: 'assets/country/pw.png',
    ),
    CountryCode(
      name: 'Paraguay',
      dialCode: '+595',
      flagUri: 'assets/country/py.png',
    ),
    CountryCode(
      name: 'Qatar',
      dialCode: '+974',
      flagUri: 'assets/country/qa.png',
    ),
    CountryCode(
      name: 'Réunion',
      dialCode: '+262',
      flagUri: 'assets/country/re.png',
    ),
    CountryCode(
      name: 'Romania',
      dialCode: '+40',
      flagUri: 'assets/country/ro.png',
    ),
    CountryCode(
      name: 'Serbia',
      dialCode: '+381',
      flagUri: 'assets/country/rs.png',
    ),
    CountryCode(
      name: 'Russia',
      dialCode: '+7',
      flagUri: 'assets/country/ru.png',
    ),
    CountryCode(
      name: 'Rwanda',
      dialCode: '+250',
      flagUri: 'assets/country/rw.png',
    ),
    CountryCode(
      name: 'Saudi Arabia',
      dialCode: '+966',
      flagUri: 'assets/country/sa.png',
    ),
    CountryCode(
      name: 'Solomon Islands',
      dialCode: '+677',
      flagUri: 'assets/country/sb.png',
    ),
    CountryCode(
      name: 'Seychelles',
      dialCode: '+248',
      flagUri: 'assets/country/sc.png',
    ),
    CountryCode(
      name: 'Sudan',
      dialCode: '+249',
      flagUri: 'assets/country/sd.png',
    ),
    CountryCode(
      name: 'Sweden',
      dialCode: '+46',
      flagUri: 'assets/country/se.png',
    ),
    CountryCode(
      name: 'Singapore',
      dialCode: '+65',
      flagUri: 'assets/country/sg.png',
    ),
    CountryCode(
      name: 'Saint Helena',
      dialCode: '+290',
      flagUri: 'assets/country/sh.png',
    ),
    CountryCode(
      name: 'Slovenia',
      dialCode: '+386',
      flagUri: 'assets/country/si.png',
    ),
    CountryCode(
      name: 'Svalbard and Jan Mayen',
      dialCode: '+47',
      flagUri: 'assets/country/sj.png',
    ),
    CountryCode(
      name: 'Slovakia',
      dialCode: '+421',
      flagUri: 'assets/country/sk.png',
    ),
    CountryCode(
      name: 'Sierra Leone',
      dialCode: '+232',
      flagUri: 'assets/country/sl.png',
    ),
    CountryCode(
      name: 'San Marino',
      dialCode: '+378',
      flagUri: 'assets/country/sm.png',
    ),
    CountryCode(
      name: 'Senegal',
      dialCode: '+221',
      flagUri: 'assets/country/sn.png',
    ),
    CountryCode(
      name: 'Somalia',
      dialCode: '+252',
      flagUri: 'assets/country/so.png',
    ),
    CountryCode(
      name: 'Suriname',
      dialCode: '+597',
      flagUri: 'assets/country/sr.png',
    ),
    CountryCode(
      name: 'South Sudan',
      dialCode: '+211',
      flagUri: 'assets/country/ss.png',
    ),
    CountryCode(
      name: 'São Tomé and Príncipe',
      dialCode: '+239',
      flagUri: 'assets/country/st.png',
    ),
    CountryCode(
      name: 'El Salvador',
      dialCode: '+503',
      flagUri: 'assets/country/sv.png',
    ),
    CountryCode(
      name: 'Sint Maarten',
      dialCode: '+1-721',
      flagUri: 'assets/country/sx.png',
    ),
    CountryCode(
      name: 'Syria',
      dialCode: '+963',
      flagUri: 'assets/country/sy.png',
    ),
    CountryCode(
      name: 'Swaziland',
      dialCode: '+268',
      flagUri: 'assets/country/sz.png',
    ),
    CountryCode(
      name: 'Turks and Caicos Islands',
      dialCode: '+1-649',
      flagUri: 'assets/country/tc.png',
    ),
    CountryCode(
      name: 'Chad',
      dialCode: '+235',
      flagUri: 'assets/country/td.png',
    ),
    CountryCode(
      name: 'French Southern Territories',
      dialCode: '+262',
      flagUri: 'assets/country/tf.png',
    ),
    CountryCode(
      name: 'Togo',
      dialCode: '+228',
      flagUri: 'assets/country/tg.png',
    ),
    CountryCode(
      name: 'Thailand',
      dialCode: '+66',
      flagUri: 'assets/country/th.png',
    ),
    CountryCode(
      name: 'Tajikistan',
      dialCode: '+992',
      flagUri: 'assets/country/tj.png',
    ),
    CountryCode(
      name: 'Tokelau',
      dialCode: '+690',
      flagUri: 'assets/country/tk.png',
    ),
    CountryCode(
      name: 'Timor-Leste',
      dialCode: '+670',
      flagUri: 'assets/country/tl.png',
    ),
    CountryCode(
      name: 'Turkmenistan',
      dialCode: '+993',
      flagUri: 'assets/country/tm.png',
    ),
    CountryCode(
      name: 'Tunisia',
      dialCode: '+216',
      flagUri: 'assets/country/tn.png',
    ),
    CountryCode(
      name: 'Tonga',
      dialCode: '+676',
      flagUri: 'assets/country/to.png',
    ),
    CountryCode(
      name: 'Turkey',
      dialCode: '+90',
      flagUri: 'assets/country/tr.png',
    ),
    CountryCode(
      name: 'Trinidad and Tobago',
      dialCode: '+1-868',
      flagUri: 'assets/country/tt.png',
    ),
    CountryCode(
      name: 'Tuvalu',
      dialCode: '+688',
      flagUri: 'assets/country/tv.png',
    ),
    CountryCode(
      name: 'Taiwan',
      dialCode: '+886',
      flagUri: 'assets/country/tw.png',
    ),
    CountryCode(
      name: 'Tanzania',
      dialCode: '+255',
      flagUri: 'assets/country/tz.png',
    ),
    CountryCode(
      name: 'Ukraine',
      dialCode: '+380',
      flagUri: 'assets/country/ua.png',
    ),
    CountryCode(
      name: 'Uganda',
      dialCode: '+256',
      flagUri: 'assets/country/ug.png',
    ),
    CountryCode(
      name: 'United States Minor Outlying Islands',
      dialCode: '+1',
      flagUri: 'assets/country/um.png',
    ),
    CountryCode(
      name: 'United States of America',
      dialCode: '+1',
      flagUri: 'assets/country/us.png',
    ),
    CountryCode(
      name: 'Uruguay',
      dialCode: '+598',
      flagUri: 'assets/country/uy.png',
    ),
    CountryCode(
      name: 'Uzbekistan',
      dialCode: '+998',
      flagUri: 'assets/country/uz.png',
    ),
    CountryCode(
      name: 'Vatican City',
      dialCode: '+379',
      flagUri: 'assets/country/va.png',
    ),
    CountryCode(
      name: 'Saint Vincent and the Grenadines',
      dialCode: '+1-784',
      flagUri: 'assets/country/vc.png',
    ),
    CountryCode(
      name: 'Venezuela',
      dialCode: '+58',
      flagUri: 'assets/country/ve.png',
    ),
    CountryCode(
      name: 'British Virgin Islands',
      dialCode: '+1-284',
      flagUri: 'assets/country/vg.png',
    ),
    CountryCode(
      name: 'U.S. Virgin Islands',
      dialCode: '+1-340',
      flagUri: 'assets/country/vi.png',
    ),
    CountryCode(
      name: 'Vietnam',
      dialCode: '+84',
      flagUri: 'assets/country/vn.png',
    ),
    CountryCode(
      name: 'Vanuatu',
      dialCode: '+678',
      flagUri: 'assets/country/vu.png',
    ),
    CountryCode(
      name: 'Wallis and Futuna',
      dialCode: '+681',
      flagUri: 'assets/country/wf.png',
    ),
    CountryCode(
      name: 'Samoa',
      dialCode: '+685',
      flagUri: 'assets/country/ws.png',
    ),
    CountryCode(
      name: 'Kosovo',
      dialCode: '+383',
      flagUri: 'assets/country/xk.png',
    ),
    CountryCode(
      name: 'Yemen',
      dialCode: '+967',
      flagUri: 'assets/country/ye.png',
    ),
    CountryCode(
      name: 'Mayotte',
      dialCode: '+262',
      flagUri: 'assets/country/yt.png',
    ),
    CountryCode(
      name: 'South Africa',
      dialCode: '+27',
      flagUri: 'assets/country/za.png',
    ),
    CountryCode(
      name: 'Zambia',
      dialCode: '+260',
      flagUri: 'assets/country/zm.png',
    ),
    CountryCode(
      name: 'Zimbabwe',
      dialCode: '+263',
      flagUri: 'assets/country/zw.png',
    ),
  ];

  /// Retrieves the list of all available countries.
  ///
  /// This method returns a list of all [CountryCode] objects that represent
  /// the various countries available in this provider.
  ///
  /// - Returns: A list of [CountryCode] objects.
  ///
  /// Example:
  /// ```dart
  /// var allCountries = CountryProvider.getCountries();
  /// for (var country in allCountries) {
  ///   print('${country.name}: ${country.dialCode}');
  /// }
  /// ```
  static List<CountryCode> getCountries() {
    return countries;
  }
}
