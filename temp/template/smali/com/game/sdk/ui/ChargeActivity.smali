.class public Lcom/game/sdk/ui/ChargeActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "ChargeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;,
        Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;,
        Lcom/game/sdk/ui/ChargeActivity$PayInitTask;
    }
.end annotation


# static fields
.field public static isnowpay:Ljava/lang/String;

.field public static nowpayCode:Ljava/lang/String;

.field public static nowpayMsg:Ljava/lang/String;

.field private static preSignStr:Ljava/lang/String;

.field private static progressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private alipayLayout:Landroid/widget/RelativeLayout;

.field private alipaySelectedIcon:Landroid/widget/ImageView;

.field private attach:Ljava/lang/String;

.field private backIv:Landroid/widget/ImageView;

.field private callServiceTv:Landroid/widget/TextView;

.field private charge100Layout:Landroid/widget/LinearLayout;

.field private charge100Tv:Landroid/widget/TextView;

.field private charge10Layout:Landroid/widget/LinearLayout;

.field private charge10Tv:Landroid/widget/TextView;

.field private charge200Layout:Landroid/widget/LinearLayout;

.field private charge200Tv:Landroid/widget/TextView;

.field private charge500Layout:Landroid/widget/LinearLayout;

.field private charge500Tv:Landroid/widget/TextView;

.field private charge50Layout:Landroid/widget/LinearLayout;

.field private charge50Tv:Landroid/widget/TextView;

.field private chargeBtn:Landroid/widget/Button;

.field private chargeEngin:Lcom/game/sdk/engin/ChargeEngin;

.field private chargeInfoLayout:Landroid/widget/LinearLayout;

.field public chargeLayouts:[Landroid/widget/LinearLayout;

.field private chargeMoney:F

.field private chargeMoneyEngin:Lcom/game/sdk/engin/ChargeMoneyEngin;

.field public chargeMoneys:[I

.field private customMoneyEv:Landroid/widget/EditText;

.field private explainLayout:Landroid/widget/LinearLayout;

.field private explainTv:Landroid/widget/TextView;

.field private giveGameMoneyLayout:Landroid/widget/LinearLayout;

.field private giveGameMoneyTv:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field inputManager:Landroid/view/inputmethod/InputMethodManager;

.field private isCustomMoney:Z

.field private isPayInitOk:Z

.field private isReturnMoney:Z

.field public ischarge:Z

.field private mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

.field private mixMoney:Ljava/lang/String;

.field private netErrorLayout:Landroid/widget/LinearLayout;

.field private orderid:Ljava/lang/String;

.field private payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

.field payDialog:Lcom/game/sdk/view/CustomDialog;

.field private payWay:Ljava/lang/String;

.field private platformMoneyTv:Landroid/widget/TextView;

.field private preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

.field private productdesc:Ljava/lang/String;

.field private productname:Ljava/lang/String;

.field private rateHigh:Ljava/lang/String;

.field private rateLow:Ljava/lang/String;

.field private realMoney100Tv:Landroid/widget/TextView;

.field private realMoney10Tv:Landroid/widget/TextView;

.field private realMoney200Tv:Landroid/widget/TextView;

.field private realMoney500Tv:Landroid/widget/TextView;

.field private realMoney50Tv:Landroid/widget/TextView;

.field private realMoneyHintTv:Landroid/widget/TextView;

.field public realMoneyTvs:[Landroid/widget/TextView;

.field public realMoneys:[F

.field private realPayAmountTv:Landroid/widget/TextView;

.field private refreshBtn:Landroid/widget/Button;

.field reloadPayInfoDialog:Lcom/game/sdk/view/CustomDialog;

.field private returnRangeMoney:Ljava/lang/String;

.field private rightBtn:Landroid/widget/Button;

.field private serviceDialog:Lcom/game/sdk/view/ServiceDialog;

.field private serviceLayout:Landroid/widget/LinearLayout;

.field public tvs:[Landroid/widget/TextView;

.field private wxpayLayout:Landroid/widget/RelativeLayout;

.field private wxpaySelectedIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const-string v0, "0"

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->isnowpay:Ljava/lang/String;

    .line 913
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->preSignStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    .line 129
    const-string v0, "alipay"

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    .line 149
    iput-boolean v1, p0, Lcom/game/sdk/ui/ChargeActivity;->ischarge:Z

    .line 161
    iput-boolean v1, p0, Lcom/game/sdk/ui/ChargeActivity;->isReturnMoney:Z

    .line 186
    iput-boolean v1, p0, Lcom/game/sdk/ui/ChargeActivity;->isCustomMoney:Z

    .line 200
    iput-boolean v1, p0, Lcom/game/sdk/ui/ChargeActivity;->isPayInitOk:Z

    .line 202
    new-instance v0, Lcom/game/sdk/ui/ChargeActivity$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/ChargeActivity$1;-><init>(Lcom/game/sdk/ui/ChargeActivity;)V

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->handler:Landroid/os/Handler;

    .line 911
    new-instance v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-direct {v0}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    .line 58
    return-void
.end method

.method static synthetic access$10(Lcom/game/sdk/ui/ChargeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity;->returnRangeMoney:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->explainTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/game/sdk/ui/ChargeActivity;Lcom/game/sdk/engin/ChargeMoneyEngin;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoneyEngin:Lcom/game/sdk/engin/ChargeMoneyEngin;

    return-void
.end method

.method static synthetic access$13(Lcom/game/sdk/ui/ChargeActivity;)Lcom/game/sdk/engin/ChargeMoneyEngin;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoneyEngin:Lcom/game/sdk/engin/ChargeMoneyEngin;

    return-object v0
.end method

.method static synthetic access$14(Lcom/game/sdk/ui/ChargeActivity;Z)V
    .locals 0

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/game/sdk/ui/ChargeActivity;->isReturnMoney:Z

    return-void
.end method

.method static synthetic access$15(Lcom/game/sdk/ui/ChargeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity;->mixMoney:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/game/sdk/ui/ChargeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity;->rateLow:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$17(Lcom/game/sdk/ui/ChargeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity;->rateHigh:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18(Lcom/game/sdk/ui/ChargeActivity;Z)V
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/game/sdk/ui/ChargeActivity;->isPayInitOk:Z

    return-void
.end method

.method static synthetic access$19(Lcom/game/sdk/ui/ChargeActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/ChargeActivity;)Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/game/sdk/ui/ChargeActivity;->isPayInitOk:Z

    return v0
.end method

.method static synthetic access$20(Lcom/game/sdk/ui/ChargeActivity;Lcom/game/sdk/engin/ChargeEngin;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeEngin:Lcom/game/sdk/engin/ChargeEngin;

    return-void
.end method

.method static synthetic access$21(Lcom/game/sdk/ui/ChargeActivity;)Lcom/game/sdk/engin/ChargeEngin;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeEngin:Lcom/game/sdk/engin/ChargeEngin;

    return-object v0
.end method

.method static synthetic access$22(Lcom/game/sdk/ui/ChargeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity;->orderid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$23(Lcom/game/sdk/ui/ChargeActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    return-object v0
.end method

.method static synthetic access$24(Lcom/game/sdk/ui/ChargeActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->orderid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$25(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 913
    sput-object p0, Lcom/game/sdk/ui/ChargeActivity;->preSignStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$26()Ljava/lang/String;
    .locals 1

    .prologue
    .line 913
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->preSignStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$27(Lcom/game/sdk/ui/ChargeActivity;)Lcom/ipaynow/plugin/api/IpaynowPlugin;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    return-object v0
.end method

.method static synthetic access$28(Lcom/game/sdk/ui/ChargeActivity;Lcom/game/sdk/engin/PayCoinEngin;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    return-void
.end method

.method static synthetic access$29(Lcom/game/sdk/ui/ChargeActivity;)Lcom/game/sdk/engin/PayCoinEngin;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeInfoLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$30(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$31(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoneyHintTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$32(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realPayAmountTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$33(Lcom/game/sdk/ui/ChargeActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->mixMoney:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$34(Lcom/game/sdk/ui/ChargeActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->rateLow:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$35(Lcom/game/sdk/ui/ChargeActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->rateHigh:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$36(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->giveGameMoneyTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$37(Lcom/game/sdk/ui/ChargeActivity;)Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/game/sdk/ui/ChargeActivity;->isCustomMoney:Z

    return v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->netErrorLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/ChargeActivity;)Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/game/sdk/ui/ChargeActivity;->isReturnMoney:Z

    return v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->giveGameMoneyLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->serviceLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->explainLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9(Lcom/game/sdk/ui/ChargeActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->returnRangeMoney:Ljava/lang/String;

    return-object v0
.end method

.method private getNewOrderInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "partnerId"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 878
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "partner=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    const-string v2, "\"&out_trade_no=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->orderid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    const-string v2, "\"&subject=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->productname:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    const-string v2, "\"&body=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->productdesc:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    const-string v2, "\"&total_fee=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    iget v2, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 888
    const-string v2, "\"&notify_url=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/net/constans/ServerConfig;->getPayCallUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 894
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 895
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    const-string v2, "\"&service=\"mobile.securitypay.pay"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    const-string v2, "\"&_input_charset=\"UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    const-string v2, "\"&payment_type=\"1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    const-string v2, "\"&seller_id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    const-string v2, "\"&it_b_pay=\"1m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object v2
.end method

.method private getSignType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 873
    const-string v0, "sign_type=\"RSA\""

    return-object v0
.end method

.method private prePayMessage()V
    .locals 4

    .prologue
    .line 916
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "{appid}"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->appId:Ljava/lang/String;

    .line 917
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "UTF-8"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCharset:Ljava/lang/String;

    .line 918
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "156"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCurrencyType:Ljava/lang/String;

    .line 920
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget v2, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderAmt:Ljava/lang/String;

    .line 922
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->productdesc:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderDetail:Ljava/lang/String;

    .line 924
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->productname:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderName:Ljava/lang/String;

    .line 926
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v3, "{starttime}"

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    iput-object v3, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    .line 930
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "3600"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderTimeOut:Ljava/lang/String;

    .line 931
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "01"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderType:Ljava/lang/String;

    .line 932
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->attach:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtReserved:Ljava/lang/String;

    .line 934
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/net/constans/ServerConfig;->getPayCallUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 936
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iput-object v0, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->notifyUrl:Ljava/lang/String;

    .line 937
    return-void
.end method


# virtual methods
.method public countGameMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F
    .locals 10
    .param p1, "customMoney"    # Ljava/lang/String;
    .param p2, "mixMoney"    # Ljava/lang/String;
    .param p3, "rateLow"    # Ljava/lang/String;
    .param p4, "rateHigh"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 443
    const-wide/16 v4, 0x0

    .line 445
    .local v4, "gameMoney":D
    invoke-static {p2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v3

    .line 448
    :cond_1
    invoke-static {p3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 451
    invoke-static {p4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 455
    invoke-static {p1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 457
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v0, v3

    .line 458
    .local v0, "cMoney":D
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v6, v3

    .line 460
    .local v6, "mMoney":D
    cmpg-double v3, v0, v6

    if-gez v3, :cond_3

    .line 461
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v8, v3

    mul-double v4, v0, v8

    .line 467
    :goto_1
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity;->returnRangeMoney:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity;->returnRangeMoney:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-double v8, v3

    cmpg-double v3, v0, v8

    if-gez v3, :cond_2

    .line 468
    const-wide/16 v4, 0x0

    .line 472
    .end local v0    # "cMoney":D
    .end local v6    # "mMoney":D
    :cond_2
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.#"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 473
    .local v2, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    goto :goto_0

    .line 463
    .end local v2    # "df":Ljava/text/DecimalFormat;
    .restart local v0    # "cMoney":D
    .restart local v6    # "mMoney":D
    :cond_3
    invoke-static {p4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v8, v3

    mul-double v4, v0, v8

    goto :goto_1
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    const-string v0, "fysdk_activity_charge"

    return-object v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 560
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 561
    invoke-virtual {p0}, Lcom/game/sdk/ui/ChargeActivity;->initTheme()V

    .line 562
    return-void
.end method

.method public initTheme()V
    .locals 14

    .prologue
    .line 569
    sget-object v11, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v11, :cond_0

    .line 570
    sget-object v11, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v11, v11, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    if-eqz v11, :cond_0

    .line 571
    sget-object v11, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v11, v11, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v0, v11, Lcom/game/sdk/domain/StyleInfo;->btnColor:Ljava/lang/String;

    .line 572
    .local v0, "btnColor":Ljava/lang/String;
    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 574
    const/4 v11, 0x3

    invoke-static {p0, v11}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v7

    .line 576
    .local v7, "roundRadius":I
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "#"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 578
    .local v1, "fillColor":I
    const-string v11, "#979696"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 581
    .local v2, "fillColorPressed":I
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 582
    .local v4, "gdNormal":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 583
    int-to-float v11, v7

    invoke-virtual {v4, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 586
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 587
    .local v5, "gdPressed":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 588
    int-to-float v11, v7

    invoke-virtual {v5, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 590
    new-instance v9, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 593
    .local v9, "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const v6, 0x10100a7

    .line 594
    .local v6, "pressed":I
    const v10, 0x101009d

    .line 595
    .local v10, "window_focused":I
    const v3, 0x101009c

    .line 596
    .local v3, "focused":I
    const v8, 0x10100a1

    .line 598
    .local v8, "selected":I
    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v6, v11, v12

    const/4 v12, 0x1

    aput v10, v11, v12

    invoke-virtual {v9, v11, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 599
    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v6, v11, v12

    const/4 v12, 0x1

    neg-int v13, v3

    aput v13, v11, v12

    invoke-virtual {v9, v11, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 600
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v8, v11, v12

    invoke-virtual {v9, v11, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 601
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v3, v11, v12

    invoke-virtual {v9, v11, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 602
    const/4 v11, 0x3

    new-array v11, v11, [I

    const/4 v12, 0x0

    neg-int v13, v8

    aput v13, v11, v12

    const/4 v12, 0x1

    neg-int v13, v3

    aput v13, v11, v12

    const/4 v12, 0x2

    neg-int v13, v6

    aput v13, v11, v12

    invoke-virtual {v9, v11, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 604
    iget-object v11, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeBtn:Landroid/widget/Button;

    invoke-virtual {v11, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 609
    .end local v0    # "btnColor":Ljava/lang/String;
    .end local v1    # "fillColor":I
    .end local v2    # "fillColorPressed":I
    .end local v3    # "focused":I
    .end local v4    # "gdNormal":Landroid/graphics/drawable/GradientDrawable;
    .end local v5    # "gdPressed":Landroid/graphics/drawable/GradientDrawable;
    .end local v6    # "pressed":I
    .end local v7    # "roundRadius":I
    .end local v8    # "selected":I
    .end local v9    # "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v10    # "window_focused":I
    :cond_0
    return-void
.end method

.method public initVars()V
    .locals 1

    .prologue
    .line 287
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 288
    invoke-static {}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->getInstance()Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->init(Landroid/content/Context;)Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    .line 289
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->unCkeckEnvironment()Lcom/ipaynow/plugin/api/IpaynowPlugin;

    .line 290
    return-void
.end method

.method public initViews()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 294
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 295
    const-string v0, "\u5e73\u53f0\u5e01"

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->productname:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->productname:Ljava/lang/String;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->productdesc:Ljava/lang/String;

    .line 297
    const-string v0, "{\"gameid\" :0}"

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->attach:Ljava/lang/String;

    .line 298
    new-instance v0, Lcom/game/sdk/view/ServiceDialog;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/view/ServiceDialog;-><init>(Landroid/app/Activity;F)V

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->serviceDialog:Lcom/game/sdk/view/ServiceDialog;

    .line 299
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    const-string v1, "\u6b63\u5728\u5145\u503c"

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payDialog:Lcom/game/sdk/view/CustomDialog;

    .line 300
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    const-string v1, "\u91cd\u65b0\u52a0\u8f7d\u4e2d"

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->reloadPayInfoDialog:Lcom/game/sdk/view/CustomDialog;

    .line 301
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->backIv:Landroid/widget/ImageView;

    .line 302
    const-string v0, "right_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->rightBtn:Landroid/widget/Button;

    .line 303
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->rightBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    const-string v0, "platform_money_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->platformMoneyTv:Landroid/widget/TextView;

    .line 306
    const-string v0, "charge_10_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge10Tv:Landroid/widget/TextView;

    .line 307
    const-string v0, "charge_50_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge50Tv:Landroid/widget/TextView;

    .line 308
    const-string v0, "charge_100_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge100Tv:Landroid/widget/TextView;

    .line 309
    const-string v0, "charge_200_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge200Tv:Landroid/widget/TextView;

    .line 310
    const-string v0, "charge_500_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge500Tv:Landroid/widget/TextView;

    .line 313
    const-string v0, "real_money_10_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney10Tv:Landroid/widget/TextView;

    .line 314
    const-string v0, "real_money_50_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney50Tv:Landroid/widget/TextView;

    .line 315
    const-string v0, "real_money_100_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney100Tv:Landroid/widget/TextView;

    .line 316
    const-string v0, "real_money_200_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney200Tv:Landroid/widget/TextView;

    .line 317
    const-string v0, "real_money_500_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney500Tv:Landroid/widget/TextView;

    .line 320
    const-string v0, "charge_10_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge10Layout:Landroid/widget/LinearLayout;

    .line 321
    const-string v0, "charge_50_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge50Layout:Landroid/widget/LinearLayout;

    .line 322
    const-string v0, "charge_100_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge100Layout:Landroid/widget/LinearLayout;

    .line 323
    const-string v0, "charge_200_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge200Layout:Landroid/widget/LinearLayout;

    .line 324
    const-string v0, "charge_500_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge500Layout:Landroid/widget/LinearLayout;

    .line 328
    const-string v0, "real_money_hint_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoneyHintTv:Landroid/widget/TextView;

    .line 329
    const-string v0, "give_game_money_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->giveGameMoneyLayout:Landroid/widget/LinearLayout;

    .line 330
    const-string v0, "give_game_money_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->giveGameMoneyTv:Landroid/widget/TextView;

    .line 331
    const-string v0, "real_pay_amount_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realPayAmountTv:Landroid/widget/TextView;

    .line 333
    const-string v0, "custom_money_ev"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    .line 335
    const-string v0, "alipay_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->alipayLayout:Landroid/widget/RelativeLayout;

    .line 336
    const-string v0, "wxpay_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->wxpayLayout:Landroid/widget/RelativeLayout;

    .line 338
    const-string v0, "service_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->serviceLayout:Landroid/widget/LinearLayout;

    .line 339
    const-string v0, "charge_explain_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->explainLayout:Landroid/widget/LinearLayout;

    .line 341
    const-string v0, "call_service_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->callServiceTv:Landroid/widget/TextView;

    .line 342
    const-string v0, "explain_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->explainTv:Landroid/widget/TextView;

    .line 344
    const-string v0, "alipay_selected_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->alipaySelectedIcon:Landroid/widget/ImageView;

    .line 345
    const-string v0, "wxpay_selected_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->wxpaySelectedIcon:Landroid/widget/ImageView;

    .line 347
    const-string v0, "charge_info_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeInfoLayout:Landroid/widget/LinearLayout;

    .line 348
    const-string v0, "net_error_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->netErrorLayout:Landroid/widget/LinearLayout;

    .line 349
    const-string v0, "refresh_net_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->refreshBtn:Landroid/widget/Button;

    .line 351
    const-string v0, "charge_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeBtn:Landroid/widget/Button;

    .line 352
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->rightBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->refreshBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge10Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge50Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge100Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge200Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge500Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->alipayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->wxpayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->callServiceTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge10Tv:Landroid/widget/TextView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge50Tv:Landroid/widget/TextView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge100Tv:Landroid/widget/TextView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge200Tv:Landroid/widget/TextView;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge500Tv:Landroid/widget/TextView;

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->tvs:[Landroid/widget/TextView;

    .line 370
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney10Tv:Landroid/widget/TextView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney50Tv:Landroid/widget/TextView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney100Tv:Landroid/widget/TextView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney200Tv:Landroid/widget/TextView;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney500Tv:Landroid/widget/TextView;

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoneyTvs:[Landroid/widget/TextView;

    .line 371
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge10Layout:Landroid/widget/LinearLayout;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge50Layout:Landroid/widget/LinearLayout;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge100Layout:Landroid/widget/LinearLayout;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge200Layout:Landroid/widget/LinearLayout;

    aput-object v1, v0, v5

    .line 372
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge500Layout:Landroid/widget/LinearLayout;

    aput-object v1, v0, v6

    .line 371
    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeLayouts:[Landroid/widget/LinearLayout;

    .line 374
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 376
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    new-instance v1, Lcom/game/sdk/ui/ChargeActivity$2;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/ChargeActivity$2;-><init>(Lcom/game/sdk/ui/ChargeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 424
    invoke-virtual {p0}, Lcom/game/sdk/ui/ChargeActivity;->setPlatformMoney()V

    .line 426
    new-instance v0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;-><init>(Lcom/game/sdk/ui/ChargeActivity;Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 427
    return-void
.end method

.method public isInteger(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 478
    const-string v1, "^[-\\+]?[\\d]*\\.?[\\d]{1}$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 479
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 965
    invoke-super {p0, p1, p2, p3}, Lcom/game/sdk/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 966
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->isnowpay:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->nowpayCode:Ljava/lang/String;

    .line 968
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->nowpayMsg:Ljava/lang/String;

    .line 969
    const-string v0, "2"

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->isnowpay:Ljava/lang/String;

    .line 971
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 615
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "charge_btn"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 617
    invoke-static {p0}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 618
    const-string v0, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    sget-boolean v0, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    if-nez v0, :cond_2

    .line 622
    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 626
    :cond_2
    iget-boolean v0, p0, Lcom/game/sdk/ui/ChargeActivity;->isCustomMoney:Z

    if-eqz v0, :cond_12

    .line 627
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, ""

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 628
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/math/NumberUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 629
    :cond_3
    const-string v0, "\u8bf7\u8f93\u5165\u91d1\u989d\uff0c\u91d1\u989d\u4e3a\u6570\u5b57"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_4
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    .line 641
    :cond_5
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    const-string v1, "alipay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 647
    new-instance v0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v1, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    iget v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    float-to-double v6, v1

    const-string v8, ""

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;-><init>(Lcom/game/sdk/ui/ChargeActivity;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DLjava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 650
    :cond_6
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    const-string v1, "wxpay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 651
    invoke-direct {p0}, Lcom/game/sdk/ui/ChargeActivity;->prePayMessage()V

    .line 652
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "{orderid}"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderNo:Ljava/lang/String;

    .line 653
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    .line 654
    .local v12, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    .line 655
    .local v10, "info":Landroid/net/NetworkInfo;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 657
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "13"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->payChannelType:Ljava/lang/String;

    .line 659
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->generatePreSignMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->preSignStr:Ljava/lang/String;

    .line 662
    :cond_7
    new-instance v0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v1, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    iget v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    float-to-double v6, v1

    sget-object v8, Lcom/game/sdk/ui/ChargeActivity;->preSignStr:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;-><init>(Lcom/game/sdk/ui/ChargeActivity;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DLjava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 663
    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 665
    .end local v10    # "info":Landroid/net/NetworkInfo;
    .end local v12    # "manager":Landroid/net/ConnectivityManager;
    :cond_8
    invoke-static {p0}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 666
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 670
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "alipay_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 671
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->alipaySelectedIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->wxpaySelectedIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 673
    const-string v0, "alipay"

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    .line 676
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "wxpay_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 677
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->alipaySelectedIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->wxpaySelectedIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 679
    const-string v0, "wxpay"

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    .line 682
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "charge_btn"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "alipay_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 683
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "wxpay_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 684
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "custom_money_ev"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "refresh_net_btn"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 685
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->selectText(I)V

    .line 687
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 690
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "custom_money_ev"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/game/sdk/ui/ChargeActivity;->isCustomMoney:Z

    .line 692
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeLayouts:[Landroid/widget/LinearLayout;

    array-length v0, v0

    if-lt v9, v0, :cond_13

    .line 697
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 698
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoneyHintTv:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realPayAmountTv:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->giveGameMoneyTv:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    :cond_d
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    .line 704
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 705
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 706
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 707
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 709
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 712
    .end local v9    # "i":I
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 713
    invoke-virtual {p0}, Lcom/game/sdk/ui/ChargeActivity;->finish()V

    .line 716
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "call_service_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 717
    invoke-static {p0}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 718
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->serviceDialog:Lcom/game/sdk/view/ServiceDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/game/sdk/view/ServiceDialog;->setCanceledOnTouchOutside(Z)V

    .line 719
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->serviceDialog:Lcom/game/sdk/view/ServiceDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/ServiceDialog;->show()V

    .line 723
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "right_btn"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 724
    new-instance v11, Landroid/content/Intent;

    const-class v0, Lcom/game/sdk/ui/ChargeRecordActivity;

    invoke-direct {v11, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 725
    .local v11, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v11}, Lcom/game/sdk/ui/ChargeActivity;->startActivity(Landroid/content/Intent;)V

    .line 729
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "refresh_net_btn"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 731
    invoke-static {p0}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 732
    const-string v0, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 635
    :cond_12
    iget v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 636
    const-string v0, "\u8bf7\u9009\u62e9\u5145\u503c\u91d1\u989d"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 693
    .restart local v9    # "i":I
    :cond_13
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeLayouts:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v9

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 692
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 735
    .end local v9    # "i":I
    :cond_14
    invoke-static {p0}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 736
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->reloadPayInfoDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 738
    :cond_15
    new-instance v0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;-><init>(Lcom/game/sdk/ui/ChargeActivity;Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/game/sdk/ui/BaseActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/game/sdk/ui/BaseActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 993
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onPause()V

    .line 994
    const-string v0, "ChargeActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 995
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 996
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 941
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onResume()V

    .line 942
    const-string v0, "ChargeActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 943
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 945
    const-string v0, "sdk_open_charge_page"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 947
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->isnowpay:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 948
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->nowpayCode:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    const-string v0, "\u652f\u4ed8\u6210\u529f"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0}, Lcom/game/sdk/ui/ChargeActivity;->finish()V

    .line 953
    :cond_0
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->nowpayCode:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 954
    const-string v0, "\u652f\u4ed8\u53d6\u6d88"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 956
    :cond_1
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->nowpayCode:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 957
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->nowpayMsg:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 959
    :cond_2
    const-string v0, "0"

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->isnowpay:Ljava/lang/String;

    .line 961
    :cond_3
    return-void
.end method

.method public payAlipayMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "partnerId"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 845
    :try_start_0
    invoke-static {p3}, Lcom/game/sdk/utils/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 846
    invoke-static {p3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 847
    invoke-direct {p0, p1, p2}, Lcom/game/sdk/ui/ChargeActivity;->getNewOrderInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 848
    .local v1, "info":Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/game/sdk/security/Rsa;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 849
    .local v3, "sign":Ljava/lang/String;
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 850
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&sign=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/game/sdk/ui/ChargeActivity;->getSignType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 851
    move-object v2, v1

    .line 852
    .local v2, "orderInfo":Ljava/lang/String;
    invoke-static {}, Lcom/game/sdk/utils/ThreadPoolManager;->getInstance()Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;

    move-result-object v4

    new-instance v5, Lcom/game/sdk/ui/ChargeActivity$3;

    invoke-direct {v5, p0, v2}, Lcom/game/sdk/ui/ChargeActivity$3;-><init>(Lcom/game/sdk/ui/ChargeActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->addTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "orderInfo":Ljava/lang/String;
    .end local v3    # "sign":Ljava/lang/String;
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 868
    const-string v4, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {p0, v4}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public selectText(I)V
    .locals 5
    .param p1, "selectId"    # I

    .prologue
    const/4 v4, 0x0

    .line 743
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 744
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSelected(Z)V

    .line 745
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeLayouts:[Landroid/widget/LinearLayout;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 759
    iput-boolean v4, p0, Lcom/game/sdk/ui/ChargeActivity;->isCustomMoney:Z

    .line 760
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 761
    return-void

    .line 746
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 747
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoneys:[I

    aget v1, v1, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    .line 749
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoneyHintTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->realPayAmountTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoneys:[F

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoneys:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 752
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->giveGameMoneyTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoneys:[F

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    :cond_1
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 745
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    :cond_2
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_1
.end method

.method public setPlatformMoney()V
    .locals 2

    .prologue
    .line 484
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->platformMoneyTv:Landroid/widget/TextView;

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    return-void

    .line 484
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
