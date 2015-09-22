//
//  userAgreementViewController.m
//  dotaer
//
//  Created by Eric Cao on 8/10/15.
//  Copyright (c) 2015 sheepcao. All rights reserved.
//

#import "userAgreementViewController.h"

@interface userAgreementViewController ()

@end

@implementation userAgreementViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSString * language = [[NSLocale preferredLanguages] objectAtIndex:0];

    
    NSLog(@"lang:%@",language);
    
    if (![self myContainsStringFrom:language ForSting:@"zh"])
    {
        [self.testView setText:@"Your privacy is very important to us. That's why we do not collect personal information (like name, gender and email) from our users.\n\nSometimes we can collect a small amount of anonymous usage data, which helps us to improve apps. This statistical data does not identify any personal details whatsoever.\n\nWe show advertisements inside Lite versions of our games or apps to help cover our development costs. The ads come from Google's AdMob and Apple's iAds advertisement networks and exclude any content that may be unsuitable for kids. These ads comply to Google's/Apple's policies.\n\nOur games and apps do NOT use in-app purchases (in-app billing). Instead, we provide a paid full version and a free \"lite\" version. The goal of the Lite version is to give you more information about the game's or app's contents and let you make a more informed decision about purchasing the full the version.\n\nPrivacy Policy may change from time to time without notice to you. You should read this Privacy Policy each time you plan to submit personally identifiable information so that you understand how the information you are submitting will be used."];
    
    }else
    {
        [self.testView setText:@"欢迎使用历历在目提供的各种服务（以下简称“服务”），您同意并认可并有义务遵守本《用户协议》（以下简称“协议”）。\n\n\n1. 用户身份保证\n\n1.1 用户承诺并保证自己是具有完全民事行为能力和完全民事权利能力的自然人、法人、实体和组织。用户在此保证所填写的用户信息是真实、准确、完整、及时的，并且没有任何引人误解或者虚假的陈述，且保证开发者可以通过用户所填写的联系方式与用户取得联系。\n\n1.2 用户应根据开发者对于相关服务的要求及时提供相应的身份证明等资料，否则开发者有权拒绝向该用户提供相关服务。\n\n1.3 用户承诺将及时更新其用户信息以维持该等信息的有效性，并且不侵犯他人权益。\n\n1.4 如果用户提供的资料或信息包含有不正确、不真实的信息，或者对其他用户的正常行为产生干扰，开发者保留取消用户会员资格并随时结束为该用户提供服务的权利。\n\n1.5 用户在历历在目中或通过历历在目相关服务所传送的任何内容并不反映开发者的观点或政策，开发者对此不承担任何责任。\n\n2. 用户的权利和义务\n\n2.1 用户有权利拥有自己在软件的用户名和密码并有权利使用自己的用户名和密码随时登录开发者的各种服务产品。\n\n2.2 用户有权利享受开发者提供的移动互联网技术和信息服务，并有权利在接受开发者提供的服务时获得开发者的技术支持、咨询等服务，服务内容详见开发者相关产品介绍。\n\n2.3 用户保证不会利用技术或其他手段破坏及扰乱开发者服务产品以及开发者其他客户的网站，不得对软件进行反向工程、反向汇编、反向编译、数据包截获等。\n\n2.4 用户应尊重开发者及其他第三方的知识产权和其他合法权利，并保证在发生上述事件时尽力保护开发者及其股东、雇员、合作伙伴等免于因该等事件受到影响或损失；开发者保留用户侵犯开发者知识产权时终止向该用户提供服务并不退还任何款项的权利。\n\n2.5 对由于用户向开发者提供的联络方式有误以及用户用于接受开发者邮件的电子邮箱安全性、稳定性不佳而导致的一切后果，用户应自行承担责任，包括但不限于因用户未能及时收到开发者的相关通知而导致的后果和损失。\n\n2.6 用户保证其使用开发者服务时将遵从国家、地方法律法规、行业惯例和社会公共道德，不会利用开发者提供的服务进行存储、发布、传播如下信息和内容：违反国家法律法规政策的任何内容（信息）；违反国家规定的政治宣传和/或新闻信息；涉及国家秘密和/或安全的信息；封建迷信和/或淫秽、色情、下流的信息或教唆犯罪的信息；博彩有奖、赌博游戏；违反国家民族和宗教政策的信息；防碍互联网运行安全的信息；侵害他人合法权益的信息和/或其他有损于社会秩序、社会治安、公共道德的信息或内容。用户同时承诺不得为他人发布上述不符合国家规定和/或本服务条款约定的信息内容提供任何便利，包括但不限于设置URL、BANNER链接等。用户承诺其创作行为，评论均属个人行为，不代表开发者立场。用户承认开发者有权在用户违反上述时有权终止向用户提供服务并不予退还任何款项，因用户上述行为给开发者造成损失的，用户应予赔偿。\n\n2.7 用户不应将其帐号、密码转让或出借予他人使用。如因用户提供虚假资料或被他人获悉自己的注册资料而其帐号遭他人非法使用，应立即通知历历在目。因黑客行为或用户的保管疏忽导致帐号、密码遭他人非法使用，历历在目不承担任何责任。\n\n2.8 历历在目帐号使用权仅属于初始申请注册人，禁止赠予、借用、租用、转让或售卖。如果历历在目发现使用者并非帐号初始注册人，历历在目有权在未经通知的情况下回收该帐号而无需向该帐号使用人承担法律责任，由此带来的包括并不限于用户通讯中断、用户资料清空等损失由用户自行承担。历历在目禁止用户私下有偿或无偿转让帐号，以免因帐号问题产生纠纷，用户应当自行承担因违反此要求而遭致的任何损失，同时历历在目保留追究上述行为人法律责任的权利。\n\n3. 知识产权（商标和版权）\n\n开发者的logo和开发者的设计上均有开发者的商标或商业外观，未经开发者书面允许不可用于商业用途。所有出现在网页上而不属于开发者的商标其所有权均归各自所有人所有，其所有人不一定与开发者有关联。\n\n开发者的原创性内容，如文本、图案、logo、软件及网页上的所有编排所有权都归开发者和其许可方所有，并受中国、美国和国际版权法保护。未经开发者书面许可不许复制任何开发者的原创内容，“协议”中列出的内容除外。\n\n4. 不可抗力\n\n4.1 因不可抗力或者其他意外事件，使得本协议履行不可能、不必要或者无意义的，遭受不可抗力、意外事件的一方不承担责任。\n\n4.2 不可抗力、意外事件是指不能预见、不能克服并不能避免且对一方或双方当事人造成重大影响的客观事件，包括但不限于自然灾害如洪水、地震、瘟疫流行和风暴等以及社会事件如战争、动乱、政府行为等。\n\n4.3 用户同意鉴于互联网的特殊性，黑客攻击、互联网连通中断或者系统故障等属于不可抗力，由此给用户或者第三方造成的损失不应由开发者承担。\n\n \n\n本条款的最终解释权归开发者所有。"];

    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backTap:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (BOOL)shouldAutorotate {
    return NO;
}
- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}
-(UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent; // your own style
}

- (BOOL)prefersStatusBarHidden {
    return NO; // your own visibility code
}

- (BOOL)myContainsStringFrom:(NSString*)str ForSting:(NSString*)other {
    NSRange range = [str rangeOfString:other];
    return range.length != 0;
}
@end
