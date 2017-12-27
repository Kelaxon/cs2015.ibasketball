

				// load new edition settings
				var espn = espn || {};
				espn.i18n = espn.i18n || {};
				espn.i18n.lang = "en";
				espn.i18n.siteId = "1";
				espn.i18n.site = "espn";
				espn.i18n.editionKey = "espn-en";
				espn.i18n.personalization = true;
				espn.i18n.country = "us";
				espn.i18n.countryName = "null";
				espn.i18n.domain = "www.espn.com";
				espn.i18n.searchUrl = "http://search.espn.com/";
				espn.i18n.hasSearch = true;
				espn.i18n.defaultSearchParams = {};
				espn.i18n.nowFeed = true;
				espn.i18n.temperature = {scale: "fahrenheit", symbol: "&deg; F" };
				espn.i18n.facebook = {appId: "116656161708917", locale: "en_US" };
				espn.i18n.twitter = {language: "en"};
				espn.i18n.outbrain = {"mobile":{"compliantId":"MB_4","nonCompliantId":"MB_5"},"desktop":{"compliantId":"AR_15","nonCompliantId":"AR_12"},"video":{"mobile":{"compliantId":"MB_6"},"desktop":{"compliantId":"AR_16"}},"recap":{"mobile":{"compliantId":"MB_9"},"desktop":{"compliantId":"AR_30"}}}

				espn.i18n.betting = {affiliateCodes: "null", show: true, provider: "", bettingLinks: "null", bet365blacklist: ["ww", "us", "pk", "in", "eg", "ir", "sa", "sy", "ae", "il", "jo", "ps", "lb", "om", "kw", "qa", "bh", "ye", "lk", "fr", "fx", "au", "nz"]};
				espn.i18n.tickets = {"enabled":true,"provider":"VividSeats","baseUrl":"https://www.vividseats.com","callToAction":"Buy on Vivid Seats","trackSection":"vivid"};
				espn.i18n.translations = {};
				espn.i18n.environment = "prod";
				espn.i18n.sportBranding = {"soccer":"logos/logo-uk-fc.png","wnba":"logos/ESPNcom-powerby-espnw.png","womenbb":"logos/ESPNcom-powerby-espnw.png","ncw":"logos/ESPNcom-powerby-espnw.png","cricket":"logos/logo-uk-cricinfo.png","rugby":"logos/logo-uk-scrum.png","ncaaw":"logos/ESPNcom-powerby-espnw.png"};
				espn.i18n.sportToUrl = {"soccer":"http://www.espnfc.us","wnba":"http://espnw.com","womenbb":"http://espnw.com","ncw":"http://espnw.com","cricket":"http://www.espncricinfo.com","ncaaw":"http://espnw.com"};
				espn.i18n.showWatch = true;
				
				espn.i18n.showFCContent = true;
				espn.i18n.showCricInfoContent = false;
				espn.i18n.showInsider = true;
				espn.i18n.indexAutoStart = false;
				espn.i18n.videoAutoStart = {index: false, scoreboard: false };
				espn.i18n.customPrimaryNav = false;
				espn.i18n.isSingleSport = false;
				espn.i18n.sportReplacements = "null";
				espn.i18n.app = {"espn":{"enabled":true}};
				espn.i18n.fantasy = {"enabled":true};
				espn.i18n.localePrependedPath = false;

				espn.i18n.uriRewrites = {"paramValues":{"toEnglish":{},"toEdition":{}},"urls":{"toEdition":{},"toEnglish":{}},"paramKeys":{"toEnglish":{},"toEdition":{}},"roots":{"toEdition":{"/horse/":"/horse-racing/","/nascar/":"/racing/nascar/","/ncaa/":"/college-sports/","/ncb/":"/mens-college-basketball/","/ncf/":"/college-football/","/oly/":"/olympics/","/rpm/":"/racing/","/womenbb/":"/womens-basketball/","/flb/":"/fantasy/baseball/","/fba/":"/fantasy/basketball/","/ffl/":"/fantasy/football/","/fhl/":"/fantasy/hockey/","/recruitingfb/":"/college-sports/football/recruiting/","/recruitingbb/":"/college-sports/basketball/recruiting/","/espys/":"/espys/","/nba/summerleague/":"/nba-summer-league/"},"toEnglish":{"/oly/summer/gymnastics/":"/oly/summer/gymnastics/","/oly/summer/cycling/":"/oly/summer/cycling/","/racing/nascar/":"/nascar/","/racing/":"/rpm/","/college-football/":"/ncf/","/college-football/rumors":"/college-football/rumors","/mens-college-basketball/":"/ncb/","/mens-college-basketball/rumors":"/mens-college-basketball/rumors","/womens-college-basketball/":"/ncw/","/womens-basketball/":"/womenbb/","/olympics/":"/oly/","/cycling/":"/oly/","/figure-skating/":"/oly/","/college-sports/":"/ncaa/","/gymnastics/":"/oly/","/skiing/":"/oly/","/horse-racing/":"/horse/","/sports/womenbb/":"/womenbb/","/sports/horse/":"/horse/","/sports/endurance/":"/endurance/","/losangeles/":"/los-angeles/","/newyork/":"/new-york/","/espn/onenacion/":"/onenacion/","/fantasy/baseball/":"/flb/","/fantasy/basketball/":"/fba/","/fantasy/football/":"/ffl/","/fantasy/hockey/":"/fhl/","/college-sports/football/recruiting/":"/recruitingfb/","/college-sports/basketball/recruiting/":"/recruitingbb/","/nba-summer-league/":"/nba/summerleague/"}},"pathSegments":{"toEnglish":{},"toEdition":{}}};

				try {
					var translations = {"cancel":"Cancel","manageSettingInPersonalSettings":"You can manage this setting in the future under your <a href=\"#\">Personal Settings<\/a>","video.next.text":"Up Next","favoritesmgmt.manualSortSelected":"You have chosen to manually order how your favorites will appear across ESPN products. At any time, you may return to having ESPN order your favorites by selecting the \"Auto\" option.","preferences.sport_labels.8367":"Esports","preferences.sport_labels.2020":"NASCAR","draftcast.onTheClock":"On The Clock","preferences.sport_labels.800":"Field Hockey","message.leaguemanager":"Message LM","draftcast.teamNews_%{teamName}":"Full ${teamName} Draft Coverage","favoritesmgmt.suggestedHeader":"Suggestions for your location","score":"Score","favorites.carousel.espnapp.link":"http://www.espn.com/espn/mobile/products/products/_/id/6857590","preferences.sport_labels.3918":"English FA Cup","driveChart.winper":"Win %","enter":"Enter","favoritesmgmt.confirmHideFavorite":"Hide this from my favorites?","links.event.game.desktop.href.cricket":"http://www.espncricinfo.com/${matchName}/engine/match/${competitionId}.html","draftcast.endOfDraft":"End of Draft","nflBye":"Bye","linescore.errors.short":"E","preferences.sport_labels.3520":"Poker","preferences.sport_labels.2030":"Formula 1","redesignWelcomeText":"We've redesigned the site with some new and exciting features. You have been selected as part of a limited set of fans who get to experience our new site and give it feedback before it launches!","videoSettings":"Video Settings","edit":"Edit","draftcast.previousPick":"Previous Pick","reactivate":"Reactivate","to_be_determined.abbrev":"TBD","favoriteadded":"Favorite Added","preferences.sport_labels.8374":"Kabaddi","signOut":"Log Out","preferences.sport_labels.8098":"X Games","preferences.sport_labels.8373":"Badminton","createAccount":"Sign Up","draftcast.bestAvailable":"Best Available","preferences.sport_labels.8372":"Chess","draftcast.emptyPositionTable":"No selections have been made for this position.","favoritesmgmt.favoriteEntity":"${entity} - Favorite","connectedfacebook":"Connected to Facebook","favorites.followMiniCards.description":"Tell us your favorite teams and we'll deliver the latest stories, highlights and scores to your feed.","draftcast.roundNotStartedYet_%{round}":"Rd ${round} not started","favorites.followMiniCards.heading.test":"Suggested For You","preferences.sport_labels.1106":"Golf","draftcast.emptyTeamsTable_%{season}_%{league}_%{fullTeamName}":"The ${fullTeamName} have no picks for the ${season} ${league} draft.","favorites.followMiniCards.subheading":"Suggested For You","linescore.runs.short":"R","onefeed.scheduleDraft":"Schedule Draft","insider.pickcenter.login_message":"To get exclusive PickCenter analysis, you must be an ESPN Insider","preferences.sport_labels.3920":"English Capital One Cup","favorites.streakLabel":"Streak:","favoritesmgmt.confirmRemoveFavorite":"Remove Favorite?","onefeed.draftNow":"Draft Now","preferences.sport_labels.781":"European Championship","preferences.sport_labels.2000":"Racing","preferences.sport_labels.300":"Rugby","facebook.conversation.account_policy":"Use a <a href=\"https://www.facebook.com/r.php\" rel=\"nofollow\">Facebook account<\/a> to add a comment, subject to Facebook's <a href=\"https://www.facebook.com/policies/\" rel=\"nofollow\">Terms of Service<\/a> and <a href=\"https://www.facebook.com/about/privacy/\" rel=\"nofollow\">Privacy Policy<\/a>. Your Facebook name, photo & other personal information you make public on Facebook will appear with your comment, and may be used on ESPN's media platforms. <a href=\"http://espn.com/espn/story/_/id/8756098/espn-facebook-comments-faq\">Learn more<\/a>.","preferences.sport_labels.3170":"College Sports","favorites.followMiniCards.heading":"Customize ESPN","preferences.sport_labels.700":"English Premier League","draftcast.shareText_%{pick}_%{round}_%{team}_%{player}_%{href}":"With the ${pick} Pick of the ${round} Round, the ${team} select ${player}. Follow via Draftcast. ${href}","linescore.hits.short":"H","search":"Search","insiderSubscription":"Insider Subscription","draftcast.postdraftAnalysisHeadline":"How He Fits","favorites.tooManySportsToAdd":"Maximum favorite sports limit reached. Please remove at least one sport prior to adding additional sports.","welcometext":"Welcome","connectfacebook":"Connect with Facebook","video.nowPlaying.text":"Now Playing","close":"Close","email":"Email","preferences.sport_labels.770":"MLS","thereAreNoEventsByDisplayNameByDate":"There are no ${displayName} events for ${readableDate}","draftcast.emptyNews":"No recent team news found.","preferences.sport_labels.1200":"Horse Racing","preferences.sport_labels.775":"UEFA Champions League","preferences.sport_labels.776":"UEFA Europa League","viewAllResultsBySearchTerm":"View all results for '${search_term}'","draftcast.rank":"RK","tc.play.text":"Bracket","confirm":"Confirm","thingsHaveChanged":"As you may notice, things have definitely changed","earnings":"Earnings","hide":"Hide","preferences.sport_labels.10":"MLB","favorites.tooManyTeamsToAdd":"Maximum favorite teams limit reached. Please remove at least one team prior to adding additional teams.","draftcast.emptyTable":"No players are available for this position.","addSomeForQuickAccess":"Add some for quick access","draftcast.pickIsIn":"The Pick is In...","preferences.sport_labels.90":"NHL","purse":"Purse","removedFromYourFavorites":"<p>You've removed<\/p><h1>${title}<\/h1>${subTitle}<p>as a suggested favorite<\/p>","register":"Register","position.abbrev":"POS","submit.mobile.filters":"submit","favorites.followMiniCards.description.test":"Tell us your favorite teams and we'll deliver the latest stories, highlights and scores to your feed.","preferences.sport_labels.1650":"Wrestling","draftcast.nextPick":"Next Pick","cricinfo.footerText":"ESPN Sports Media Ltd. <a href=\"http://disneytermsofuse.com/\" rel=\"nofollow\">Terms of Use<\/a>, <a href=\"http://disneytermsofuse.com/\" rel=\"nofollow\">Privacy Policy<\/a>, <a href=\"https://disneyprivacycenter.com/notice-to-california-residents/\" rel=\"nofollw\">Your California Privacy Rights<\/a>, <a href=\"https://disneyprivacycenter.com/kids-privacy-policy/english/\" rel=\"nofollow\">Children's Online Privacy Policy<\/a> and <a href=\"http://preferences-mgr.truste.com/?type=espn&affiliateId=148\" rel=\"nofollow\">Interest-Based Ads<\/a> are applicable to you. All rights reserved.","addMoreFavorites":"Try adding more teams for the latest scores and highlights!","preferences.sport_labels.200":"Cricket","addfavorite":"Add Favorite","video.messages.geoRestricted":"Video is not available in your country.","inprogress":"In Progress","preferences.sport_labels.28":"NFL","preferences.sport_labels.600":"Soccer","preferences.sport_labels.606":"Football","videoDockingDisabled":"Video docking disabled","preferences.sport_labels.23":"NCAAF","newsletters":"Newsletters","preferences.sport_labels.1652":"WWE","draftcast.needs":"Needs","draftcast.predraftAnalysisHeadline":"What He Brings","activateInsider":"Subscribe","add":"Add","filter.mobile.filters":"filter","preferences.sport_labels.5501":"FIFA Club World Cup","draftcast.selectionMade":"Selection Made","favorites.followMiniCards.follow":"Follow","pageTitle.Scores_%{leagueOrSport}":"${leagueOrSport} Scores","manageMy":"Manage my","favorites.followMiniCards.subheading.test":"Customize ESPN","onefeed.draft":"Draft","onefeed.insider.manage":"Manage","preferences.sport_labels.33":"CFL","pop-out":"Pop-out","favoritesmgmt.sportTeam":"${sportLabel} Team","favoritesmgmt.suggestedHeaderReset":"Suggestions","preferences.sport_labels.1700":"Track and Field","favoritesmgmt.alertType":"Alert Type","tc.view.text":"VIEW","preferences.sport_labels.1300":"Cycling","favoritesmgmt.noSuggestedFavorites":"Additional Suggested Favorites are not available at this time","favorites":"Favorites","favoritesmgmt.noFavorites":"You have not chosen any favorites yet","no":"No","reset.mobile.filters":"reset","espn.anonymous_favorites":"true","footerText":"ESPN Internet Ventures. <a href=\"http://disneytermsofuse.com/\" rel=\"nofollow\">Terms of Use<\/a>, <a href=\"http://disneyprivacycenter.com/\" rel=\"nofollow\">Privacy Policy<\/a>, <a href=\"https://disneyprivacycenter.com/notice-to-california-residents/\" rel=\"nofollow\">Your California Privacy Rights<\/a>, <a href=\"https://disneyprivacycenter.com/kids-privacy-policy/english/\">Children's Online Privacy Policy<\/a> and <a href=\"http://preferences-mgr.truste.com/?type=espn&affiliateId=148\">Interest-Based Ads<\/a> are applicable to you. All rights reserved.<\/span><span class=\"link-text-short\">Footer<\/span>","favorites.followMiniCards.addMoreFavorites":"Add More Favorites","preferences.sport_labels.2040":"IndyCar","scores":"Scores","preferences.sport_labels.8300":"College Sports","favorites.followMiniCards.following":"Following","show":"Show","manageFavoritesSignIn":"To manage favorites please sign-in or create an ESPN account","noTeamsInFavorites":"No teams in your favorites yet","preferences.sport_labels.46":"NBA","remove":"Remove","viewall":"View All","video.messages.deviceRestricted":"Video is not available for this device.","undo":"Undo","accountInformation":"Account Information","alert":"Alert","preferences.sport_labels.41":"NCAAM","today":"Today","onefeed.suggested":"Suggested Favorites","preferences.sport_labels.1000":"Boxing","soccer":"Soccer","move":"Move","preferences.sport_labels.3301":"MMA","season.mobile.filters":"season","comments":"Comments","sports":"Sports","year.mobile.filters":"year","subscribe":"Subscribe","preferences.sport_labels.850":"Tennis","yes":"Yes","addFavorites":"Add favorites","app.error.suppFeed.noBoxScore":"No Box Score Available","tweet":"Tweet","preferences.sport_labels.59":"WNBA","heliumdown":"Login Temporarily Unavailable","pts":"Pts","home":"Home","favoritesmgmt.reorderSports":"Reorder Sports","links.team.clubhouse.desktop.href.cricket":"http://www.espncricinfo.com/${_slug(team.name)}/content/team/${team.id}.html","suggested":"Suggested","preferences.sport_labels.54":"NCAAW","favorites.draftingNow":"Drafting Now","signIn":"Log In","draftcast.bestFit":"Best Fit","opponent.abbrev":"OPP","resize":"Resize","disableVideoDockingPermanently":"Disable video docking permanently","over/under.abbrev":"O/U","welcomeToESPN":"Welcome to the new ESPN.com","preferences.sport_labels.8319":"Snooker","preferences.sport_labels.3700":"Olympic Sports","preferences.sport_labels.8318":"Darts"};
					if(Object.keys(translations).length > 0) {
						espn.i18n.translations = translations;
					}
				} catch (err) {
					window.console.log('Error in espn.i18n loading translations', err);
				}

				espn.i18n.dateTime = {
					dateFormats: {
						time1: "h:mm A",
						date1: "MMM D, YYYY",
						date2: "M/D/YYYY",
						date3: "MM/DD/YYYY",
						date4: "MMDDYYYY",
						date5: "MMMM Do YYYY",
						date6: "dddd, MMMM Do YYYY",
						date7: "ddd, MMM D YYYY",
						date8: "M/D",
						date9: "ddd",
						date10: "dddd, MMMM Do",
						date11: "ddd, MMMM D",
						date12: "MMMM D, YYYY",
						date13: "dddd, M/D",
						date14: "MMM D",
						date15: "ddd, M/D"

					},

					
					firstDayOfWeek: "Sunday",
					timeZoneBucket: "America/New_York",
					dayNamesShort: ["Su","Mo","Tu","We","Th","Fr","Sa"],dayNamesMedium: ["Sun","Mon","Tues","Wed","Thu","Fri","Sat"],

dayNamesLong: ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],

monthNamesShort: ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],

monthNamesLong: ["January","February","March","April","May","June","July","August","September","October","November","December"]
				};
				