USE [master]
GO
/****** Object:  Database [northwindsql]    Script Date: 06/26/2019 10:01:37 ******/
CREATE DATABASE [northwindsql] ON  PRIMARY 
( NAME = N'northwindsql', FILENAME = N'D:\SQL SERVER 2008 EXPRESS\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\northwindsql.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'northwindsql_log', FILENAME = N'D:\SQL SERVER 2008 EXPRESS\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\northwindsql_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [northwindsql] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [northwindsql].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [northwindsql] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [northwindsql] SET ANSI_NULLS OFF
GO
ALTER DATABASE [northwindsql] SET ANSI_PADDING OFF
GO
ALTER DATABASE [northwindsql] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [northwindsql] SET ARITHABORT OFF
GO
ALTER DATABASE [northwindsql] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [northwindsql] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [northwindsql] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [northwindsql] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [northwindsql] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [northwindsql] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [northwindsql] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [northwindsql] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [northwindsql] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [northwindsql] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [northwindsql] SET  DISABLE_BROKER
GO
ALTER DATABASE [northwindsql] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [northwindsql] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [northwindsql] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [northwindsql] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [northwindsql] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [northwindsql] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [northwindsql] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [northwindsql] SET  READ_WRITE
GO
ALTER DATABASE [northwindsql] SET RECOVERY SIMPLE
GO
ALTER DATABASE [northwindsql] SET  MULTI_USER
GO
ALTER DATABASE [northwindsql] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [northwindsql] SET DB_CHAINING OFF
GO
USE [northwindsql]
GO
/****** Object:  Table [dbo].[lyxw]    Script Date: 06/26/2019 10:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lyxw](
	[fileid] [int] IDENTITY(1,1) NOT NULL,
	[biaoti] [nvarchar](50) NOT NULL,
	[reqi] [datetime2](7) NOT NULL,
	[neiron] [varchar](max) NOT NULL,
	[zuozhe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_lyxw] PRIMARY KEY CLUSTERED 
(
	[fileid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[lyxw] ON
INSERT [dbo].[lyxw] ([fileid], [biaoti], [reqi], [neiron], [zuozhe]) VALUES (1, N'奔跑吧，上虞！马拉松给的不仅奖牌', CAST(0x070000000000633F0B AS DateTime2), N' 3月31日上午，伴随着发令枪响，越马系列赛-天阳│云栖龙山2019中国·绍兴（上虞）曹娥江国际半程马拉松赛正式开跑。来自世界各地的15086名马拉松爱好者在“品质之城”上虞，穿越田园旖旎风光，穿过两岸城建之美，在享受运动魅力的同时，领略曹娥江文化旅游资源和上虞城市的多彩靓丽。 绍兴市人民政府副市长顾涛，中共绍兴市上虞区委书记陶关锋，中共绍兴市上虞区委副书记、区长张壮雄，虞籍乡贤、著名表演艺术家、六小龄童章金莱，浙江省体育局竞赛处处长毛鹏飞，绍兴市体育局局长吴海明，绍兴市上虞区人大常委会主任陈坚，绍兴市上虞区政协主席顾世明，中共绍兴市上虞区委副书记王奇洲，中国田径协会技术代表迟天舒，中共绍兴市上虞区委常委、宣传部长潘立峰，中共绍兴市上虞区委常委、杭州湾上虞经济技术开发区党工委书记金山中，绍兴市上虞区人民政府副区长章颖芳，绍兴市上虞区人民政府副区长、绍兴市公安局上虞区分局局长谢晋，总冠名赞助商天阳地产绍兴公司总经理廖建海，赛事运营商广州博润体育科技有限公司副总裁徐仁乾等出席了起跑仪式并鸣枪发令，绍兴市人民政府副市长顾涛、中共绍兴市上虞区委副书记、区长张壮雄发表热情洋溢的致辞。作为唯一以“孝德文化”为旋律的马拉松赛事，自2015年首办以来，“曹马”实现从无到有，从有到优，在2017年中国马拉松年度盛典上晋级为国字号的铜牌赛事，2018年又晋级为“2018中国田径协会银牌赛事”，并荣获“2018中国田径协会特色赛事”称号。在中国马拉松史上为上虞留下了浓墨重彩的一笔。“中国田径协会银牌赛事”、“中国田径协会特色赛事”、“中国田径协会A1类认证赛事”、“中国马拉松博览会推介赛事”、“浙江省马拉松优秀赛事”这些荣誉，让上虞这座建城2000多年的历史古城，再一次因体育而闻名。', N'gukiukuik')
INSERT [dbo].[lyxw] ([fileid], [biaoti], [reqi], [neiron], [zuozhe]) VALUES (2, N'野村谷景区开园 助力黄陂全域旅游', CAST(0x070000000000433F0B AS DateTime2), N' 3月30日上午，2019中国武汉第十六届木兰文化旅游节开幕暨野村谷景区开园仪式在武汉黄陂野村谷景区举行。武汉旅游新星野村谷景区正式开园迎宾。开园当天，野村谷吸引近万名游客休闲赏花。 野村谷位于黄陂区王家河街道唐刘甲村，地处国家5A级木兰文化生态旅游核心区内，占地13000亩，距武汉城区50公里。这里山岚成峰、溪流成潭，古居成村，梯田农耕，草原赏花是养在木兰文化生态旅游区最后的处女地。  阳春三月天，赏花正当时。春天是野村谷最美的季节，漫步在野村谷，遍地金黄的油菜花随风轻舞，芬芳满溢，桃、李、梨、杏、樱竞相盛放，美不胜收。 据野村谷景区董事长方大桥介绍，野村谷由湖北楚江房地产有限公司斥资，历时三年匠心打造。景区以康养度假为业态，以山林溪谷酒店和森林主题别墅为核心。在田野和山野之间分别营造出轻奢、低奢和野奢三种格调的乡村郊野观光体验型景区，是私人社交圈子、企业商务接待、家庭旅居生活、宾客休闲度假、长者养生、养老的梦幻之地。', N'小白菜')
INSERT [dbo].[lyxw] ([fileid], [biaoti], [reqi], [neiron], [zuozhe]) VALUES (3, N' 小猪短租陈驰：共享经济与监管', CAST(0x070000000000423F0B AS DateTime2), N' 2018年是中国共享经济高速发展的一年，根据国家信息中心的数据显示，2018年共享经济市场交易额为29420亿元，比上年增长41.6%，我国参与共享经济活动的人数亦达到7.6亿。2018年同样也是中国共享经济合规化的一年。作为近年博鳌亚洲论坛的保留环节，本届共享经济分论坛聚焦合规化进程之后，我国共享经济未来的发展趋势。 在陈驰看来，在我国经济进入“新常态”的大背景之下，未来的共享经济行业也将面临包括模式创新、技术智能化、服务标准化等多方面的考验，纯平台的模式将不再具备产生颠覆性变革的能力，以小猪为代表的共享住宿企业亦亟需突破平台业务本身，向“平台+”模式进化，借助产业协同的力量，以新模式、新技术带动存量房产的进一步互联网化。 “共享住宿企业的视野必须超越平台业务本身，”陈驰指出，“随着资本趋于理性，企业家应该有更长远的目光，要深入产业的肌理、真正解决产业所面临的问题。”小猪现有超过50万套优质房源，覆盖全球650个城市及目的地。自平台上线以来，小猪同步搭建了包括摄影、保洁、商城、智能硬件等业务在内的共享住宿服务生态体系，通过补全产业服务链中的缺失环节，赋能于用户，降低共享的门槛。 陈驰表示，随着5G、物联网等新技术的完善成熟，未来，各地的保洁管家、智能家居、软装设计、托管物业等配套服务提供方，将进一步形成开放的社会化协同网络，释放空间，让更多的人成为共享经济的参与者和受益者,“这也是小猪的核心壁垒所在。”', N'方便')
INSERT [dbo].[lyxw] ([fileid], [biaoti], [reqi], [neiron], [zuozhe]) VALUES (6, N'2019海峡两岸（昆山）马拉松打卡', CAST(0x070000000000473F0B AS DateTime2), N'在这个注定不平凡的2019，海峡两岸(昆山)马拉松又来搞事情啦！就在3月24日一早，2019海峡两岸(昆山)马拉松正式开跑，10000名马拉松爱好者在江南水乡的秀美风景之中激情奔跑，挥洒热汗。在风景最in的城市，吃最in的台湾美食，跑最in的赛事！在开赛前夕，选手们蓄势待发，享受着赛道两旁美景的同时互相加油打气，有条不紊的做着赛前的最后准备。在此感谢所有昆山马拉松的参赛者、沿途加油民众以及对比赛大力支持的金主爸爸们：YYsports胜道体育、龙腾光电、松扬电子、纬创资通、今世缘酒业、滨江壹玖捌、北区房、六丰机械、赢动传媒、南亚、富士康科际集团、广气丰田、多威、克丽缇娜、怡宝、魔力、PICC人保财险、飞鸟酒吧、虹荣袜、古尊表、旺旺集团、九如城集团、统一开小灶、好时巧克力、捷安特、大唐足道、北固燕、昆山建国隆旗饭店。', N'随时写')
INSERT [dbo].[lyxw] ([fileid], [biaoti], [reqi], [neiron], [zuozhe]) VALUES (7, N'温汤明月山 古井泉街花朝节顺利举办', CAST(0x070000000000483F0B AS DateTime2), N'三月阳春，风染绿枝。3月23日温汤古井泉街花朝节如期而至，该活动由宜春子裳汉服社主办、温汤古井泉街承办，上百名汉服成员、市民、游客慕名而来共庆花朝。众花神着春装、沐春风、赏春花、敬花神、提花灯，一场春日盛宴正在古井泉街上演，绵绵细雨亦给节日增添了些许浪漫色彩，此景只应天上有，人间能得几回闻。birthday of all flowers上午虽然天公不作美，时而大雨滂沱，丝毫不影响花神们的兴致，弹琴、对弈、手工、射箭，花事正好，不亦乐乎。温汤古井泉街商业街坐落于江西省宜春市温汤镇，是由江西中明投资有限公司开发打造而出的温汤首家民宿风情商业街。　温汤古井泉街商业街地址为泉都北路23号。风景独佳，交通优越，同时还具有丰富业态全方位满足出行旅游的各类需求。2013年，江西中明投资有限公司依托宜春丰厚的文化底蕴，和谐质朴的民风，丰富的文化旅游资源，在温汤镇斥资15亿元投资开发，古井泉街商业街的出现，预计将进一步推动宜春的旅游产业升级，并为当地经济和社会发展作出应有的贡献。', N'vfv')
INSERT [dbo].[lyxw] ([fileid], [biaoti], [reqi], [neiron], [zuozhe]) VALUES (8, N' 丰盛控股：搭建“大健康生态圈”', CAST(0x0700000000005E3F0B AS DateTime2), N'“健康养生”正成为酒店行业的发展趋势，瑞士、泰国等地已经出现了专门的养生酒店。记者昨天了解到，南京首家健康养生酒店将于今年下半年开业。这家位于雨花台区安德门大街与软件大道交汇处的五季金陵酒店，按五星级酒店的标准建造和运营，将以浓厚的中国传统文化和养生理念为底蕴，倡导全新的健康生活方式，全方位为客人提供无微不至的健康养生体验。五季金陵酒店采用国家绿建三星标准建设，以中国传统健康养生文化所倡导的“人与自然和谐相处”理念作为营造整个建筑空间体验的基础，将绿色景观引入到酒店的每一处角落，实现景观与人文的融合与共生，使得整体建筑呈现出震撼的漂浮感，开业后将成为城市主干道上一道亮丽风景线。在五季金陵酒店，顾客不但可以享受到健康舒适的休息空间，更能品尝到基于“不时不食”理念精心打造的养生菜肴、各类绿色无污染的健康食品，体验个性的健康睡眠解决方案、以传统功法为主打的健康运动、以中医为特色的女子养颜美容…… 五季金陵酒店作为港股上市丰盛控股（00607.HK）旗下的高端商务酒店，是企业落地“全球健康生活方式引领者”定位的载体。以绿色建筑、商业地产等产业起家的丰盛控股，近年来将健康和旅游产业作为公司的重要发展方向，通过搭建“饮食+运动”、“健康+旅游”、“旅游+金融”、“旅游+互联网”等“大健康生活场景”，实现健康食品、健康酒店、教育医疗、健康运动等健康产业和旅游金融、旅游地产、旅游供应链等旅游产业的融合，带来不一样的健康场景体验。', N'返回法国')
INSERT [dbo].[lyxw] ([fileid], [biaoti], [reqi], [neiron], [zuozhe]) VALUES (9, N' 丨听！来自奥希耶庄园的声音丨', CAST(0x070000000000843F0B AS DateTime2), N' 五季金陵酒店作为港股上市丰盛控股（00607.HK）旗下的高端商务酒店，是企业落地“全球健康生活方式引领者”定位的载体。以绿色建筑、商业地产等产业起家的丰盛控股，近年来将健康和旅游产业作为公司的重要发展方向，通过搭建“饮食+运动”、“健康+旅游”、“旅游+金融”、“旅游+互联网”等“大健康生活场景”，实现健康食品、健康酒店、教育医疗、健康运动等健康产业和旅游金融、旅游地产、旅游供应链等旅游产业的融合，带来不一样的健康场景体验。你听到“乐章”里的鸟鸣、鹰啸、熊吼的声音了吗？这是来自奥希耶庄园万物生灵的本真和弦。奥希耶庄园被群山环绕，崔嵬峭壁下是便是皇家鹰的栖居之所。除了鸟鸣林间、鹰啸长空，这里还以“熊”为名（1500年时，奥希耶名为Oursières，即法语“熊”之意）。奥希耶庄园曾是真正的“熊出没”之地。虽然这片土地如今已没有熊的踪影，但曾是熊类栖息地的这段历史，正代表了奥希耶庄园拥有的优良生态系统。你听到“乐章”里的旋塞、开瓶、倒酒、碰杯的声音了吗？这是来自奥希耶庄园的葡萄佳酿开启的迷人交响。邀约挚友，举杯欢笑，酒中芬芳扑面而来，它像一位精灵，轻盈、自然。忘记城市喧嚣，酒体滑入喉间，宛如置身奥希耶庄园，此刻，果香和木质香气等酒中芬芳让人们回归自我。无论是拉菲罗斯柴尔德奥希耶古堡，还是来自奥希耶庄园的其他佳酿，背后都是一段由周围环境、长远决策、和谐自然与酿造专长、殷切期盼和不懈坚持共同描述的经典佳话。', N'的说法是')
INSERT [dbo].[lyxw] ([fileid], [biaoti], [reqi], [neiron], [zuozhe]) VALUES (10, N'长影世纪城粉红狂欢节惊艳来袭', CAST(0x070000000000613F0B AS DateTime2), N'粉红猪乐园、粉红火烈鸟、粉红大风车，粉红桃花源，还有能歌善舞粉嫩嫩的小姐姐，各种心机小元素，所及之处，举手抬足间，满园尽是心机粉。这一次，不论谁都要招架不住了……撩少女心，圆公主梦，打卡网红美拍圣地，长影世纪城让你粉爱不停的粉红狂欢节来啦！4月5日到7日，来长影世纪城约会粉红世界，给你一个美轮美奂的奇幻之旅。 这场粉红狂欢节，主要还是拍拍拍，而且让控制不住的就想拍拍拍。进入长影世纪城园区，粉色格调的气息扑面而来。摇摇小木马、粉粉的相框、满满少女心的购物车、还有为游客准备的天使的翅膀都带着梦幻，撩动女心的场景怎么让你控制住打卡拍照的冲动。还有被万树桃花包围簇拥的卡通乐园，到处都是趣味新奇的粉红世界。被火烈鸟、大风车包围的粉红广场也是网红美拍的打卡地。所以，记得手机和相机内存要足，电量要够，妆容要美，衣服要够衬！ 为了让游客在粉红狂欢节中有更多奇趣体验，长影世纪城还特别“邀请”了外型传神又不失可爱的网红第一粉——粉红猪乐园入驻这里，是今年粉红狂欢节的全新园主。粉萌猪猪乐园不仅有庞大可爱的外表，还有满肚子的趣味活动，海洋球、蹦蹦床、跷跷板，充气滑梯、滚滚筒简直是可以装下一整个童年。无论是大朋友、小朋友一定会被它粉萌的样子和乐趣多多的“内在”吸引，并且爱的不行，想跟这个逗趣的宠然大物合影晒照。 好看的皮囊总会让人心情舒畅，这么好看的粉色世界，怎么能少了粉嫩嫩的小姐姐。清明假期，长影世纪城特别邀请了国际知名的外籍表演团队助阵粉红狂欢节。粉控巡游，互动狂欢，梦幻表演，带动游客一起加入到粉红狂欢派对中，将粉红狂欢节推向高潮。', N'发表过')
INSERT [dbo].[lyxw] ([fileid], [biaoti], [reqi], [neiron], [zuozhe]) VALUES (11, N'普惠民生 旅游惠民季200万人参与', CAST(0x070000000000803F0B AS DateTime2), N' 为了让舟山市民共享旅游红利，见证舟山海洋旅游发展成果，舟山市利用旅游淡季回馈广大市民，自2014年至2018年以来，连续举办了五届旅游惠民季活动，普惠民生累计超过200万人次,成为一场惠民效果显著、全民热情关注、省内特色凸显的全民旅游消费盛宴，推动了多领域、多业态、多元化深度融合。旅游惠民季已举办了五届，市文化和广电旅游体育局坚持把旅游惠民季作为为民服务的一件大实事。每年12月至次年2月旅游淡季期间，联动全市景区和涉旅企业开展惠民季活动，市民参与热情高涨，各大旅游景区淡季不淡，甚至呈现火爆态势，仅2018年12月-2019年度2月，共计53.7万人次参与，其中本地市民达47.9万人次，占总人次的89.1%。通过惠民季，广大市民充分领略了舟山新风貌，我市取得了经济效益和社会效益双丰收。我局旅游系统大力创新实施旅游惠民季政策，历年来惠民范围及内容也不断扩大，活动诚意满满。如在往年和友好城市宁波互动的基础上，增加推出舟山-温州、舟山-宁波互惠政策；2019年新增联合四川达州及吉林松原等支持合作城市，让广大市民在饱览群岛美景的同时，走出舟山迈向松原冰雪世界，体验水墨达州风情；直至2019年惠民季期间，活动已扩展至台州、温州、宁波、松原、达州五市联动举办，涵盖到普陀山等近50个核心景区面向舟山市民免收门票，覆盖了近百家宾馆、饭店、民宿、渔农家乐、运动休闲等涉旅企业推出的200余个惠民产品，真正实现了全域旅游，全域惠民，将普惠民生落到实处。为了让市民游客充分享受淡季惠民政策，历年惠民季期间均有多项具有舟山特色的精彩活动同步推出，广受市民喜爱。如首发 “美丽田园”乡村直通车；开通宁波一日游99元，温州二日游368元等多条惠民旅游线路；举办“福在舟山”千人迎新徒步活动；组织“惠民启新舟山味道游园会”等形式多样的活动。通过丰富的活动，有效调动了市内游客参与活动的热情和积极性，让惠民季不仅是惠民季，更成为全市人民的欢乐季。', N'德国')
INSERT [dbo].[lyxw] ([fileid], [biaoti], [reqi], [neiron], [zuozhe]) VALUES (12, N'“互联网+旅游”低洼股前景可期', CAST(0x070000000000453F0B AS DateTime2), N' 受益于国内旅游行业的政策性发展机遇，美股上市的途牛(TOUR)、携程网(CTRP)双双公布了靓丽的2018年财报，两家公司股价也顺势实现大涨。不过，同样受益于国内旅游市场政策利好，在港股上市的互联网旅游板块的丰盛控股(0607.HK)、复星旅游文化(1992.HK)等公司股价尚未启动，目前已有多家研究机构给与了“买入”评级。2月28日，美股上市的途牛公布了2018财政年年度业绩报告显示，2018年非美国会计准则净利润为1090万元人民币(合160万美元)，2017年非美国会计准则净亏损为5.311亿元人民币。财报还显示，途牛源于跟团游收入的增长，2018年打包旅游产品收入为18亿元人民币(合2.663亿美元)，同比增长15.2%。同时途牛成本也继续缩减，2018年营业费用为15亿元人民币(合2.217亿美元)，同比下降25.7%。二级市场上，途牛自今年2月以来，美股股价涨幅已达9%。 紧接着，携程于3月4日也发布了2018年财务业绩，公司2018年全年净营业收入为310亿元人民币。其中，2018年第四季度净营业收入为76亿元，同比增长22%。在收入方面，若不计股权报酬费用、权益类可供出售金融资产的公允价值变动损益，归属携程股东的净利润为55亿元人民币，同比增长近四成。受益于财报的增长，携程今年3月以来股价已经大幅增长超过20%。 在政策方面，3月5日，我国政府工作报告强调减税增收，加快优质产品服务供给，发展壮大旅游产业。根据旅游和文化部统计，2018年国内旅游人数达到55.39亿人次，同比增长10.8%。国内旅游收入5.13万亿元，同比增长12.3%。整体来看，2018年国内旅游人数增速仍然维持了较高的增速。2019年春节假期旅游数据显示，全国共接待游客4.15亿人次，同比增长7.6%;实现旅游收入5139亿元，同比增长8.2%，依旧实现了正增长。对于这份政策性红利，华泰证券研究报告提出：“增值税下降有利终端零售价格下降，也有助提振居民消费意愿，旅游板块有望受益，建议关注免税购物、周边休闲游、近程出境游。”', N'发v发')
INSERT [dbo].[lyxw] ([fileid], [biaoti], [reqi], [neiron], [zuozhe]) VALUES (13, N'桔子水晶酒店-南锣鼓巷的艺术展馆', CAST(0x0700000000009F3F0B AS DateTime2), N' 桔子水晶酒店是华住旗下高端品牌酒店，12年里一直秉承“一店一设计”的设计理念，拥有庞大的国际化酒店设计师队伍，努力将每一间酒店都当成是艺术品来打造，设计灵感来源于生活、时装、艺术领域中一切美好的东西，因地制宜的设计原则让每一家酒店的每个建筑都讲述她自己的故事，展现她独特的魅力。位于北兵马司胡同的桔子水晶酒店，连接着南锣鼓巷与交道口南大街，闹中取静，近享繁华，提供给客人一种完美的生活方式。酒店紧邻南锣鼓巷胡同、后海、故宫等景点，地铁6号线、8号线均可到达。酒店的前身是中央戏剧学院大礼堂，设计师将外立面雕花图案从中国传统剪纸纹样中提取元素，进行了现代化演绎，时尚而又不失中国风情。酒店入口处是以黑白为基调的艺术展览空间，两侧墙面都陈列抽象的画作及艺术品，右手边还特意保留了一段原建筑的墙面，斑驳岁月的印记，向每一位住客诉说着这栋老建筑数之不尽的往事。前台处原来是礼堂的传达室，金属和木作巧妙结合的服务台，身后的背景是设计师对北京形态的理解，对靠窗家具的摆布搭配看似随意但都是对现代北京的时尚演绎，办理入住的同时在这里小憩片刻。午后阳光洒进酒店，一壶热茶，一股暖意。电梯厅延续大堂艺术长廊的概念，将大堂简洁的的黑白色调延续进电梯厅，墙面通过不同方式来展示艺术品，顶面悬挂玻璃艺术品装置，通过射灯照射后的光影效果，带动整体空间的艺术氛围。', N'非官方')
INSERT [dbo].[lyxw] ([fileid], [biaoti], [reqi], [neiron], [zuozhe]) VALUES (16, N'打卡世界杯举办地 卡塔尔一展天地', CAST(0x070000000000463F0B AS DateTime2), N'三年后的卡塔尔定会盛况空前，吸引世界无数人的眼光！现在，先跟我们一起来走进这个可以直飞又免签的阿拉伯湾畔神秘国度吧，来看看有哪些是旅游专家们公认的卡塔尔必去之地！作为卡塔尔最古老的阿拉伯集市，瓦其夫传统集市既是选购中东特色商品的购物天堂，也是从细节处了解阿拉伯传统文化的最佳选择。瓦其夫传统市场的街道保留了它建立之初的模样，琳琅满目的商品、往来不绝的独轮送货小车和热情的店主，为到此的人们带来一种仿若穿越了时光的恍惚感。瓦其夫传统市场适合安排时长半天的游览行程，同时也是不错的晚餐选择地哦！伊斯兰艺术博物馆位于卡塔尔首都多哈海岸线之外的人工岛上，占地4.5万平方米，是迄今为止最全面的以伊斯兰艺术为主题的博物馆。这里还是著名华裔建筑大师贝聿铭的封山之作。以几何堆叠的方式构成的伊斯兰风格建筑，远看仿佛“浮”在蔚蓝的海面上，视觉效果十分震撼。哈马德国际机场是2015 年度 Skytrax评出的“中东最佳机场”，除了快捷、高效的乘客服务与琳琅满目的免税店商品，这里还是许多人拍照“打卡”卡塔尔的第一站——毕竟机场内的网红灯罩熊，实在是太可爱了！香蕉岛距离多哈半岛东岸11公里，全岛为安纳塔拉度假村所有，是目前卡塔尔唯一拥有水上别墅的度假村，并配有中文服务员工。香蕉岛只面向住店或用餐乘客开放，从多哈东岸的香蕉岛码头乘坐豪华轮渡，20分钟即可抵达。游客可提前预约安纳塔拉Q Lounge的BBQ午餐，内含往返香蕉岛轮渡的船票。', N'过货')
INSERT [dbo].[lyxw] ([fileid], [biaoti], [reqi], [neiron], [zuozhe]) VALUES (17, N'旅游行业下半场，“品质游”成关键', CAST(0x070000000000323F0B AS DateTime2), N' 当国民旅游需求从美丽风景向美好生活转变，观光游比重下降已经成为趋势。“既要美丽风景，也要美好生活”的新动能，推动旅游高端化、个性化、休闲化消费稳步攀升，旅游从业企业也在积极适应市场变化，不断调整商业模式，探索跨界融合，实现多元化供给，以“品质游”打造核心竞争力，探索可持续发展之道。文化和旅游部部长雒树刚近期在两会期间答记者问时说：“一年人均要出游4次，可以说我们已经进入了大众旅游时代。”中国旅游研究院发布的《2018中国品质旅游发展报告》显示，旅游已经成为国民大众的日常生活选项，消费意愿连续四年排名第一位;70%左右的游客出行选择的是非景区以及非核心城区;个性化、体验性、定制旅游则更加受到年轻人的青睐。由此可见，一方面，旅游市场容量不断增加，参与旅游的人数逐年增多;另一方面，传统的标准化旅游产品，已经难以满足各类游客个性化需求。从多家券商的分析和旅行社的业绩表现来看，受同质化、价格战等因素的影响，传统旅游业务利润不断被压缩，而利润相对较高的康旅、文旅、农旅、研学游和出境游成为各个旅游机构竞争的焦点。为了满足新时代下游客更个性化、品质化的需求，供给侧结构性改革已经成为各个旅游机构的共识。如途牛通过产业链纵深挖掘和多行业资源整合，在巴黎、东京等地建立了海外目的地服务中心，提供更全面的酒店、门票、用车等产品和服务，差异化的发展也推动途牛首次实现上市以来全年Non-GAAP盈利1090万元。而另一家近年来发力旅游业务的港股上市公司丰盛控股。纯玩无购物、高端酒店、专属导游、精致小团、定制游等高端游成为2018年国内旅游升级发展的关键词。以澳大利亚为例，截至2018年9月，该国接待了130万中国游客，同期内带来了约81亿美元的旅游消费，占国际游客消费的四分之一以上。2018—2019年旅游季，全球每5个赴南极游客中，就有一个是中国人，中国已经成为南极旅游“超级大国”。旅游的品质化消费诉求，带动企业产品研发、业态创新。去年12月，驴妈妈和银行、科研院所、景区等领域代表，共同组成“先游后付诚信联盟”，发布“先游后付”新品牌，提供“先出游、后付款”的旅游体验。丰盛控股则利用自己在中医中药、健康管理、健康运动等产业资源，推出了松赞、文昌、武当山等地的特色文化旅游、健康旅游线路，以文化、健康、养生等，构建竞争壁垒，打造核心竞争力。', N'城市')
INSERT [dbo].[lyxw] ([fileid], [biaoti], [reqi], [neiron], [zuozhe]) VALUES (19, N'健美赛落地马龙 呈钢跨界融合大健康', CAST(0x070000000000813F0B AS DateTime2), N'3月18日下午，“呈钢杯”2019年CBBA中国健美健身公开赛（云南马龙站）暨全国城市“健康大使”选拔赛（云南马龙站）新闻发布会在昆明市召开，中国健美协会常务副主席兼秘书长古桥，曲靖市教育体育局副局长朱伟，曲靖市马龙区区委常委、宣传部长刘宾虎，曲靖市马龙区人民政府副区长李正等领导，云南省健美协会会长贺保民，山乐体育董事长暨全国城市“健康大使”项目发起人李亚飞，云南省各地市健美协会及运动员代表，40余家媒体出席了发布会。 3月18日下午，“呈钢杯”2019年CBBA中国健美健身公开赛（云南马龙站）暨全国城市“健康大使”中国健美协会CBBA全国健美健身公开赛是国内最高规格、最权威的顶级健美健身大赛，为国家队以及世锦赛培养了多位世界冠军。该项赛事今年首次落地马龙，相信本次大赛能够为马龙带来新的城市活力与发展机遇。全民健身已上升为国家战略，全民健康更是实现全面小康的基础。在这样的时代背景之下，“健康大使”应运而生。全国城市“健康大使”（马龙站）的选拔赛也将与大赛同期开展。根据城市健康大使主创山乐体育对赛事的规划，全国城市“健康大使”选拔赛将为马龙选拔培育出百名向光而行、热爱运动、高颜值+完美身型、智慧而大爱的青春身影，传递四美：“智慧美”、“公益美”、“运动美”、“健康美”，修炼自律、节制、坚韧等优秀品格，成为助力全民科学健身事业、实现健康中国和美丽中国伟大复兴路上的公益使者，为健康马龙代言。本次大赛将以赛事为撬点，整合政府+企业+社会+媒体等资源，打造产融圈，实现体育+文旅+农旅+互联网+大健康的跨界融合，实现新经济样本的打造。形成体育产业集群，带动多产业协同发展，合力提升城市综合实力。例如，本次大赛的总管名方是曲靖呈钢集团，这是品牌植入跃升至品牌交互的重要一步。本次大赛由曲靖呈钢集团独家冠名赞助。呈钢集团作为云南省内知名企业，马龙区优秀企业代表对本次赛事，对全民健身事业做了贡献，也为“健康企业”做出了表率。', N'东方')
INSERT [dbo].[lyxw] ([fileid], [biaoti], [reqi], [neiron], [zuozhe]) VALUES (20, N' 1百乐达斯城“幻乐堡”将于3月末开业', CAST(0x0700000000009F3F0B AS DateTime2), N'艺尚彩乐度假村韩国百乐达斯城(PARADISE CITY)的大型室内家庭主题乐园幻乐堡将于3月31日开业。 幻乐堡以"夜游乐园"为主题, 在这里可以享受到碰碰车、旋转木马、魔力单车、巨型滑梯等动感十足的娱乐设施，还可以亲眼观赏到梦幻的现场表演。 不仅如此,还有多样的参与型活动、媒体立面秀等娱乐感十足的庆典内容,不愧为家庭聚会的首选好去处,男女老少都可以尽情享受的欢乐空间。 此外, 幻乐堡内还有亚洲顶级甜点师为顾客们准备精致甜点。 韩国百乐达斯城拥有酒店、会展中心、娱乐设施、水疗、俱乐部、购物中心、艺术展览空间等,全方位展现了综合度假村的多样面貌。预计在本月末开幕的幻乐堡,将成为综合度假村的画龙点睛之处。 特别值得一提的是,与"Moment Factory"合作进行的媒体项目为幻乐堡更添梦幻的氛围。 Moment Factory是世界顶级多媒体娱乐工作室,通过美国超级碗中场秀的艺术家现场表演，和日本著名歌手安室奈美惠的演出,并以Lumina Night Walk系列与西班牙的萨格拉达-法米利亚（Sagrada Familia） 投影映射而备受瞩目。 此次与百乐达斯城幻乐堡的合作令人备受期待，想必定会为大家带来一个融合艺术与科技的精彩主题乐园。 韩国百乐达斯城通过媒体立面秀和互动型媒体,让幻乐堡的空间栩栩如生,展现充满活力的魅力演出与活动。在大型媒体墙上,将会融合主题"夜游乐园"和其他5个主题的世界观,通过一系列生动有趣的故事,为观众们提供别具特色的精彩表演。 另外，在互动体验站，还有根据人的动作，由画面、声音与照明而做出反应的&#8220;魔镜&#8221; 、&#8220;命运魔力&#8221; 、 &#8220;魔术拍照区&#8221;等精彩项目  ', N'的v给')
INSERT [dbo].[lyxw] ([fileid], [biaoti], [reqi], [neiron], [zuozhe]) VALUES (30, N'555', CAST(0x0700C955F34CBF3F0B AS DateTime2), N'的体验经济1', N'结果')
SET IDENTITY_INSERT [dbo].[lyxw] OFF
/****** Object:  Table [dbo].[admin]    Script Date: 06/26/2019 10:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[adminname] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[admin] ([adminname], [password]) VALUES (N'1730101', N'1730101')
INSERT [dbo].[admin] ([adminname], [password]) VALUES (N'admin', N'admin')
/****** Object:  Table [dbo].[users]    Script Date: 06/26/2019 10:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[useid] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[sex] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[users] ON
INSERT [dbo].[users] ([useid], [username], [password], [sex], [email], [phone]) VALUES (3, N'2017', N'2017', N'45', N'NULL45', N'15')
INSERT [dbo].[users] ([useid], [username], [password], [sex], [email], [phone]) VALUES (4, N'1564', N'13346', N'男', N'414141', N'414141')
INSERT [dbo].[users] ([useid], [username], [password], [sex], [email], [phone]) VALUES (5, N'15644', N'13346', N'男', N'', N'')
INSERT [dbo].[users] ([useid], [username], [password], [sex], [email], [phone]) VALUES (6, N'6666', N'1346', N'男', N'的说法是', N'但是v')
INSERT [dbo].[users] ([useid], [username], [password], [sex], [email], [phone]) VALUES (7, N'5656', N'53463', N'女', N'', N'')
INSERT [dbo].[users] ([useid], [username], [password], [sex], [email], [phone]) VALUES (8, N'5566', N'5566', N'女', N'', N'')
INSERT [dbo].[users] ([useid], [username], [password], [sex], [email], [phone]) VALUES (9, N'15788', N'15788', N'女', N'', N'')
INSERT [dbo].[users] ([useid], [username], [password], [sex], [email], [phone]) VALUES (10, N'1730101', N'1730101', N'男', N'', N'')
INSERT [dbo].[users] ([useid], [username], [password], [sex], [email], [phone]) VALUES (11, N'蛋糕', N'1730101', N'男', N'', N'')
SET IDENTITY_INSERT [dbo].[users] OFF
/****** Object:  Table [dbo].[pinglun]    Script Date: 06/26/2019 10:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pinglun](
	[pinglunud] [int] IDENTITY(1,1) NOT NULL,
	[fileid] [int] NOT NULL,
	[comment] [nvarchar](140) NULL,
	[createdate] [datetime] NULL,
	[username] [nchar](10) NULL,
 CONSTRAINT [PK_pinglun] PRIMARY KEY CLUSTERED 
(
	[pinglunud] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[pinglun] ON
INSERT [dbo].[pinglun] ([pinglunud], [fileid], [comment], [createdate], [username]) VALUES (2, 9, N'很好', CAST(0x0000AA7700D0DF7C AS DateTime), N'1730101   ')
INSERT [dbo].[pinglun] ([pinglunud], [fileid], [comment], [createdate], [username]) VALUES (3, 9, N'不错不错', CAST(0x0000AA7700D126F8 AS DateTime), N'1730101   ')
INSERT [dbo].[pinglun] ([pinglunud], [fileid], [comment], [createdate], [username]) VALUES (4, 7, N'这个真好看!', CAST(0x0000AA7700D3D5B0 AS DateTime), N'1730101   ')
INSERT [dbo].[pinglun] ([pinglunud], [fileid], [comment], [createdate], [username]) VALUES (7, 13, N'我喜欢', CAST(0x0000AA78008B7C34 AS DateTime), N'蛋糕        ')
INSERT [dbo].[pinglun] ([pinglunud], [fileid], [comment], [createdate], [username]) VALUES (8, 13, N'真不错', CAST(0x0000AA78008B86C0 AS DateTime), N'蛋糕        ')
INSERT [dbo].[pinglun] ([pinglunud], [fileid], [comment], [createdate], [username]) VALUES (9, 20, N'沙发', CAST(0x0000AA78008BAC40 AS DateTime), N'蛋糕        ')
SET IDENTITY_INSERT [dbo].[pinglun] OFF
/****** Object:  ForeignKey [FK_pinglun_lyxw]    Script Date: 06/26/2019 10:01:38 ******/
ALTER TABLE [dbo].[pinglun]  WITH CHECK ADD  CONSTRAINT [FK_pinglun_lyxw] FOREIGN KEY([fileid])
REFERENCES [dbo].[lyxw] ([fileid])
GO
ALTER TABLE [dbo].[pinglun] CHECK CONSTRAINT [FK_pinglun_lyxw]
GO
