require 'rspec'
require 'day01'

test_input = '31813174349235972159811869755166343882958376474278437681632495222499211488649543755655138842553867246131245462881756862736922925752647341673342756514856663979496747158241792857625471323535183222497949751644488277317173496124473893452425118133645984488759128897146498831373795721661696492622276282881218371273973538163779782435211491196616375135472517935481964439956844536136823757764494967297251545389464472794474447941564778733926532741752757865243946976266426548341889873514383464142659425122786667399143335772174973128383869893325977319651839516694295534146668728822393452626321892357192574444856264721585365164945647254645264693957898373214897848424966266582991272496771159583715456714645585576641458358326521858518319315233857473695712238323787254556597566461188452279853766184333696344395818615215846348586541164194624371353556812548945447432787795489443312941687221314432694115847863129826532628228386894683392352799514942665396273726821936346663485499159141368443782475714679953213388375939519711591262489869326145476958378464652451441434846382474578535468433514121336844727988128998543975147649823215332929623574231738442281161294838499441799996857746549441142859199799125595761724782225452394593514388571187279266291364278184761833324476838939898258225748562345853633364314923186685534864178665214135631494876474186833392929124337161222959459117554238429216916532175247326391321525832362274683763488347654497889261543959591212539851835354335598844669618391876623638137926893582131945361264841733341247646125278489995838369127582438419889922365596554237153412394494932582424222479798382932335239274297663365164912953364777876187522324991837775492621675953397843833247525599771974555545348388871578347332456586949283657613841414576976542343934911424716613479249893113961925713317644349946444271959375981158445151659431844142242547191181944395897963146947935463718145169266129118413523541222444997678726644615185324461293228124456118853885552279849917342474792984425629248492847827653133583215539325866881662159421987315186914769478947389188382383546881622246793781846254253759714573354544997853153798862436887889318646643359555663135476261863'

describe 'day01_a' do
  it 'does example 1 (1122 -> 3)' do
    expect(day01_a('1122')).to eq 3
  end
  it 'does example 2 (1111 -> 4)' do
    expect(day01_a('1111')).to eq 4
  end
  it 'does example 3 (1234 -> 0)' do
    expect(day01_a('1234')).to eq 0
  end
  it 'does example 4 (91212129 -> 9)' do
    expect(day01_a('91212129')).to eq 9
  end
  it 'does the real deal' do
    expect(day01_a(test_input)).to eq 1203
  end
end

# For example:
#
#         1212 produces 6: the list contains 4 items, and all four digits match the digit 2 items ahead.
#     1221 produces 0, because every comparison is between a 1 and a 2.
#     123425 produces 4, because both 2s match each other, but no other digit has a match.
#     123123 produces 12.
#     12131415 produces 4.

describe 'day01_b' do
  it '1212 produces 6' do
    expect(day01_b('1212')).to eq 6
  end
  it '1221 produces 0' do
    expect(day01_b('1221')).to eq 0
  end
  it '123425 produces 4' do
    expect(day01_b('123425')).to eq 4
  end
  it '123123 produces 12' do
    expect(day01_b('123123')).to eq 12
  end
  it '12131415 produces 4' do
    expect(day01_b('12131415')).to eq 4
  end
end