.class public Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "ChargeRecordFailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/game/sdk/adapter/ChargeRecordFailAdapter$ContinuePayListener;
.implements Lcom/game/sdk/view/CancelConfigDialog$CancelListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/game/sdk/ui/ChargeRecordActivity$PayResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$ChargeRecordTask;,
        Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$PayCancelTask;,
        Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$PayContinueTask;,
        Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$WxContinuePayTask;
    }
.end annotation


# static fields
.field public static isnowpay:Ljava/lang/String;

.field public static nowpayCode:Ljava/lang/String;

.field public static nowpayMsg:Ljava/lang/String;

.field private static preSignStr:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/game/sdk/adapter/ChargeRecordFailAdapter;

.field private amount:F

.field private attach:Ljava/lang/String;

.field public cancelConfigDialog:Lcom/game/sdk/view/CancelConfigDialog;

.field private chargeEngin:Lcom/game/sdk/engin/ChargeEngin;

.field private chargeRecordEngin:Lcom/game/sdk/engin/ChargeRecordEngin;

.field chargeRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ChargeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private currentPage:I

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private isAllGame:I

.field private lastItem:I

.field private listView:Landroid/widget/ListView;

.field private loadMoreIcon:Landroid/widget/ImageView;

.field private loadMoreLayout:Landroid/widget/LinearLayout;

.field private loadMoreView:Landroid/view/View;

.field private mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

.field private mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

.field private noDataIv:Landroid/widget/ImageView;

.field private noMoreLayout:Landroid/widget/LinearLayout;

.field private noMoreTv:Landroid/widget/TextView;

.field private orderState:I

.field private orderid:Ljava/lang/String;

.field payCancelDialog:Lcom/game/sdk/view/CustomDialog;

.field payGameDialog:Lcom/game/sdk/view/CustomDialog;

.field private payWay:Ljava/lang/String;

.field private preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

.field private productdesc:Ljava/lang/String;

.field private productname:Ljava/lang/String;

.field private realMoney:Ljava/lang/String;

.field private wxchargeEngin:Lcom/game/sdk/engin/WxChargeEngin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-string v0, "0"

    sput-object v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->isnowpay:Ljava/lang/String;

    .line 379
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->preSignStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 103
    const-string v0, "alipay"

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->payWay:Ljava/lang/String;

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->currentPage:I

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->isAllGame:I

    .line 129
    const/4 v0, 0x4

    iput v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->orderState:I

    .line 133
    new-instance v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$1;-><init>(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->handler:Landroid/os/Handler;

    .line 377
    new-instance v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-direct {v0}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)Lcom/game/sdk/ui/ChargeRecordActivity;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)Lcom/game/sdk/adapter/ChargeRecordFailAdapter;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->adapter:Lcom/game/sdk/adapter/ChargeRecordFailAdapter;

    return-object v0
.end method

.method static synthetic access$10(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;F)V
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->amount:F

    return-void
.end method

.method static synthetic access$11(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->productname:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->productdesc:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->orderid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->payWay:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->attach:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->payWay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->realMoney:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->prePayMessage()V

    return-void
.end method

.method static synthetic access$19(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->loadMoreLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$20(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 379
    sput-object p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->preSignStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$21()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    sget-object v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->preSignStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$22(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->orderid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$23(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;Lcom/game/sdk/engin/WxChargeEngin;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->wxchargeEngin:Lcom/game/sdk/engin/WxChargeEngin;

    return-void
.end method

.method static synthetic access$24(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)Lcom/game/sdk/engin/WxChargeEngin;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->wxchargeEngin:Lcom/game/sdk/engin/WxChargeEngin;

    return-object v0
.end method

.method static synthetic access$25(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->amount:F

    return v0
.end method

.method static synthetic access$26(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)Lcom/ipaynow/plugin/api/IpaynowPlugin;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->noMoreLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->noMoreTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->noDataIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)Lcom/game/sdk/engin/ChargeRecordEngin;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->chargeRecordEngin:Lcom/game/sdk/engin/ChargeRecordEngin;

    return-object v0
.end method

.method static synthetic access$8(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->currentPage:I

    return v0
.end method

.method static synthetic access$9(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->handler:Landroid/os/Handler;

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
    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "partner=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v2, "\"&out_trade_no=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->orderid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const-string v2, "\"&subject=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->productname:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    const-string v2, "\"&body=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->productdesc:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    const-string v2, "\"&total_fee=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    iget v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->amount:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 596
    const-string v2, "\"&notify_url=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->payWay:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/net/constans/ServerConfig;->getPayCallUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 603
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const-string v2, "\"&service=\"mobile.securitypay.pay"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    const-string v2, "\"&_input_charset=\"UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    const-string v2, "\"&payment_type=\"1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    const-string v2, "\"&seller_id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    const-string v2, "\"&it_b_pay=\"1m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object v2
.end method

.method private getSignType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    const-string v0, "sign_type=\"RSA\""

    return-object v0
.end method

.method private prePayMessage()V
    .locals 4

    .prologue
    .line 382
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "{appid}"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->appId:Ljava/lang/String;

    .line 383
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "UTF-8"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCharset:Ljava/lang/String;

    .line 384
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "156"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCurrencyType:Ljava/lang/String;

    .line 386
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->amount:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderAmt:Ljava/lang/String;

    .line 388
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->productdesc:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderDetail:Ljava/lang/String;

    .line 390
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->productname:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderName:Ljava/lang/String;

    .line 392
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v3, "{starttime}"

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    iput-object v3, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    .line 395
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "3600"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderTimeOut:Ljava/lang/String;

    .line 396
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "01"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderType:Ljava/lang/String;

    .line 397
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->attach:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtReserved:Ljava/lang/String;

    .line 399
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->payWay:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/net/constans/ServerConfig;->getPayCallUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iput-object v0, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->notifyUrl:Ljava/lang/String;

    .line 402
    return-void
.end method


# virtual methods
.method public cancelConfig(Ljava/lang/String;)V
    .locals 2
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->payCancelDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 695
    new-instance v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$PayCancelTask;

    invoke-direct {v0, p0, p1}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$PayCancelTask;-><init>(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$PayCancelTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 696
    return-void
.end method

.method public cancelPay(Ljava/lang/String;)V
    .locals 2
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 413
    new-instance v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$PayCancelTask;

    invoke-direct {v0, p0, p1}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$PayCancelTask;-><init>(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$PayCancelTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 414
    return-void
.end method

.method public continuePay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "realMoney"    # Ljava/lang/String;

    .prologue
    .line 406
    iput-object p2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->realMoney:Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 408
    new-instance v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$PayContinueTask;

    invoke-direct {v0, p0, p1}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$PayContinueTask;-><init>(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$PayContinueTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 409
    return-void
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string v0, "fysdk_charge_record_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 4

    .prologue
    .line 249
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->chargeRecordList:Ljava/util/List;

    .line 252
    new-instance v0, Lcom/game/sdk/adapter/ChargeRecordFailAdapter;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->chargeRecordList:Ljava/util/List;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->cancelConfigDialog:Lcom/game/sdk/view/CancelConfigDialog;

    invoke-direct {v0, v1, v2, v3}, Lcom/game/sdk/adapter/ChargeRecordFailAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/game/sdk/view/CancelConfigDialog;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->adapter:Lcom/game/sdk/adapter/ChargeRecordFailAdapter;

    .line 253
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->adapter:Lcom/game/sdk/adapter/ChargeRecordFailAdapter;

    invoke-virtual {v0, p0}, Lcom/game/sdk/adapter/ChargeRecordFailAdapter;->setPayListener(Lcom/game/sdk/adapter/ChargeRecordFailAdapter$ContinuePayListener;)V

    .line 254
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->adapter:Lcom/game/sdk/adapter/ChargeRecordFailAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 257
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->loadChargeRecordData()V

    .line 258
    return-void
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public initVars()V
    .locals 3

    .prologue
    .line 209
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initVars()V

    .line 210
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/ui/ChargeRecordActivity;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    .line 211
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    invoke-virtual {v1, p0}, Lcom/game/sdk/ui/ChargeRecordActivity;->setPayResultListener(Lcom/game/sdk/ui/ChargeRecordActivity$PayResultListener;)V

    .line 212
    invoke-static {}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->getInstance()Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->init(Landroid/content/Context;)Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    .line 213
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->unCkeckEnvironment()Lcom/ipaynow/plugin/api/IpaynowPlugin;

    .line 215
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 216
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "isAllGame"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->isAllGame:I

    .line 217
    const-string v1, "orderState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->orderState:I

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isAllGame--->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->isAllGame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "orderState--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->orderState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public initViews()V
    .locals 4

    .prologue
    .line 225
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 227
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    invoke-virtual {v0}, Lcom/game/sdk/ui/ChargeRecordActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    const-string v2, "layout"

    const-string v3, "list_view_footer"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->loadMoreView:Landroid/view/View;

    .line 228
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->loadMoreView:Landroid/view/View;

    .line 229
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    const-string v2, "id"

    const-string v3, "load_more_layout"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 228
    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->loadMoreLayout:Landroid/widget/LinearLayout;

    .line 230
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->loadMoreView:Landroid/view/View;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    const-string v2, "id"

    const-string v3, "no_more_layout"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->noMoreLayout:Landroid/widget/LinearLayout;

    .line 231
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->loadMoreView:Landroid/view/View;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    const-string v2, "id"

    const-string v3, "loading_icon"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->loadMoreIcon:Landroid/widget/ImageView;

    .line 232
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->loadMoreView:Landroid/view/View;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    const-string v2, "id"

    const-string v3, "no_more_tv"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->noMoreTv:Landroid/widget/TextView;

    .line 233
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->loadMoreView:Landroid/view/View;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    const-string v2, "id"

    const-string v3, "no_data_iv"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->noDataIv:Landroid/widget/ImageView;

    .line 235
    const-string v0, "charge_record_list"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->listView:Landroid/widget/ListView;

    .line 237
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->loadMoreView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 239
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    invoke-static {v0}, Lcom/game/sdk/engin/ChargeRecordEngin;->getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/ChargeRecordEngin;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->chargeRecordEngin:Lcom/game/sdk/engin/ChargeRecordEngin;

    .line 240
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    const-string v2, "\u6b63\u5728\u521b\u5efa\u8ba2\u5355"

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    .line 241
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    const-string v2, "\u6b63\u5728\u53d6\u6d88\u8ba2\u5355"

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->payCancelDialog:Lcom/game/sdk/view/CustomDialog;

    .line 242
    new-instance v0, Lcom/game/sdk/view/CancelConfigDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    invoke-direct {v0, v1}, Lcom/game/sdk/view/CancelConfigDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->cancelConfigDialog:Lcom/game/sdk/view/CancelConfigDialog;

    .line 243
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->cancelConfigDialog:Lcom/game/sdk/view/CancelConfigDialog;

    invoke-virtual {v0, p0}, Lcom/game/sdk/view/CancelConfigDialog;->setCancelListener(Lcom/game/sdk/view/CancelConfigDialog$CancelListener;)V

    .line 244
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 245
    return-void
.end method

.method public loadChargeRecordData()V
    .locals 8

    .prologue
    .line 297
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->chargeRecordEngin:Lcom/game/sdk/engin/ChargeRecordEngin;

    iget v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->isAllGame:I

    iget v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->orderState:I

    iget v3, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->currentPage:I

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    .line 298
    new-instance v7, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$2;

    invoke-direct {v7, p0}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$2;-><init>(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)V

    .line 297
    invoke-virtual/range {v0 .. v7}, Lcom/game/sdk/engin/ChargeRecordEngin;->getChargeRecordList(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/net/listeners/Callback;)V

    .line 322
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 681
    invoke-super {p0, p1, p2, p3}, Lcom/game/sdk/ui/fragment/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 683
    const-string v0, "chargeRecordFragment---onActivityResult--->"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 685
    sget-object v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->isnowpay:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->nowpayCode:Ljava/lang/String;

    .line 687
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->nowpayMsg:Ljava/lang/String;

    .line 688
    const-string v0, "2"

    sput-object v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->isnowpay:Ljava/lang/String;

    .line 690
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 271
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 699
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onPause()V

    .line 700
    const-string v0, "ChargeRecordActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 702
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 275
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 277
    sget-object v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->isnowpay:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    sget-object v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->nowpayCode:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->adapter:Lcom/game/sdk/adapter/ChargeRecordFailAdapter;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->adapter:Lcom/game/sdk/adapter/ChargeRecordFailAdapter;

    invoke-virtual {v0}, Lcom/game/sdk/adapter/ChargeRecordFailAdapter;->clearAllList()V

    .line 283
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->loadChargeRecordData()V

    .line 286
    :cond_0
    sget-object v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->nowpayCode:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    const-string v1, "\u652f\u4ed8\u53d6\u6d88"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 289
    :cond_1
    sget-object v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->nowpayCode:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    sget-object v1, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->nowpayMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    :cond_2
    const-string v0, "0"

    sput-object v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->isnowpay:Ljava/lang/String;

    .line 294
    :cond_3
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 726
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->lastItem:I

    .line 727
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 707
    if-nez p2, :cond_0

    .line 710
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->noMoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 712
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->adapter:Lcom/game/sdk/adapter/ChargeRecordFailAdapter;

    invoke-virtual {v0}, Lcom/game/sdk/adapter/ChargeRecordFailAdapter;->getCount()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 713
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->loadMoreLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 714
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->startAnimation()V

    .line 716
    iget v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->currentPage:I

    .line 718
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->loadChargeRecordData()V

    .line 722
    :cond_0
    return-void
.end method

.method public payAlipayMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "partnerId"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 553
    :try_start_0
    invoke-static {p3}, Lcom/game/sdk/utils/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 554
    invoke-static {p3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 555
    invoke-direct {p0, p1, p2}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->getNewOrderInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "info":Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/game/sdk/security/Rsa;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, "sign":Ljava/lang/String;
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 558
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

    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->getSignType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    move-object v2, v1

    .line 560
    .local v2, "orderInfo":Ljava/lang/String;
    invoke-static {}, Lcom/game/sdk/utils/ThreadPoolManager;->getInstance()Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;

    move-result-object v4

    new-instance v5, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$3;

    invoke-direct {v5, p0, v2}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$3;-><init>(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->addTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "orderInfo":Ljava/lang/String;
    .end local v3    # "sign":Ljava/lang/String;
    :goto_0
    return-void

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 576
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->mainActivity:Lcom/game/sdk/ui/ChargeRecordActivity;

    const-string v5, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public payResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 759
    const-string v0, "chargeRecordFragment---payResult\u56de\u8c03--->"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 761
    sget-object v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->isnowpay:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->nowpayCode:Ljava/lang/String;

    .line 763
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->nowpayMsg:Ljava/lang/String;

    .line 764
    const-string v0, "2"

    sput-object v0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->isnowpay:Ljava/lang/String;

    .line 766
    :cond_0
    return-void
.end method

.method public rotaAnimation()Landroid/view/animation/Animation;
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 735
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 737
    .local v0, "ra":Landroid/view/animation/RotateAnimation;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 738
    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 739
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 740
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    .line 741
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 742
    return-object v0
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->loadMoreIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->loadMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->rotaAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 749
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->loadMoreIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->loadMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 755
    :cond_0
    return-void
.end method
