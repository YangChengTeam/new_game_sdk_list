.class public Lcom/game/sdk/ui/PayActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "PayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/game/sdk/view/PayResultDialog$PayResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/PayActivity$NoDoubleClickListener;,
        Lcom/game/sdk/ui/PayActivity$PayCancelTask;,
        Lcom/game/sdk/ui/PayActivity$PayGameTask;,
        Lcom/game/sdk/ui/PayActivity$PayInitTask;,
        Lcom/game/sdk/ui/PayActivity$PayValidateTask;
    }
.end annotation


# static fields
.field public static isnowpay:Ljava/lang/String;

.field public static nowpayCode:Ljava/lang/String;

.field public static nowpayMsg:Ljava/lang/String;

.field public static paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

.field private static preSignStr:Ljava/lang/String;

.field private static progressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private adapter:Lcom/game/sdk/ui/adapter/CouponListAdapter;

.field private alipayLayout:Landroid/widget/LinearLayout;

.field private amount:F

.field private appid:Ljava/lang/String;

.field private attach:Ljava/lang/String;

.field private cancelType:I

.field private chargeEngin:Lcom/game/sdk/engin/ChargeEngin;

.field private closeIv:Landroid/widget/ImageView;

.field private couponCheckBox:Landroid/widget/CheckBox;

.field private couponCountTv:Landroid/widget/TextView;

.field private couponInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/CouponInfo;",
            ">;"
        }
    .end annotation
.end field

.field private couponLayout:Landroid/widget/RelativeLayout;

.field private couponUseInfoTv:Landroid/widget/TextView;

.field private currentCoupon:Lcom/game/sdk/domain/CouponInfo;

.field private gameCoinCheckBox:Landroid/widget/CheckBox;

.field private gameMoneyTv:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private lastCoupon:Lcom/game/sdk/domain/CouponInfo;

.field private mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

.field private moreCouponLayout:Landroid/widget/LinearLayout;

.field private orderAmountTv:Landroid/widget/TextView;

.field private orderid:Ljava/lang/String;

.field private payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

.field private payGameBtn:Landroid/widget/TextView;

.field payGameDialog:Lcom/game/sdk/view/CustomDialog;

.field private payLayout:Landroid/widget/LinearLayout;

.field payResultDialog:Lcom/game/sdk/view/PayResultDialog;

.field private payValidateEngin:Lcom/game/sdk/engin/PayValidateEngin;

.field private payWay:Ljava/lang/String;

.field private platformCoinCheckBox:Landroid/widget/CheckBox;

.field private platformMoneyTv:Landroid/widget/TextView;

.field private preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

.field private productNameTv:Landroid/widget/TextView;

.field private productdesc:Ljava/lang/String;

.field private productname:Ljava/lang/String;

.field private pwCoupon:Landroid/widget/PopupWindow;

.field private realPayAmountTv:Landroid/widget/TextView;

.field private role:Ljava/lang/String;

.field private server:Ljava/lang/String;

.field private totalPrice:F

.field private validateCount:I

.field private wxpayLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const-string v0, "0"

    sput-object v0, Lcom/game/sdk/ui/PayActivity;->isnowpay:Ljava/lang/String;

    .line 920
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/ui/PayActivity;->preSignStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 129
    const-string v0, "alipay"

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/ui/PayActivity;->totalPrice:F

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/PayActivity;->validateCount:I

    .line 173
    new-instance v0, Lcom/game/sdk/ui/PayActivity$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/PayActivity$1;-><init>(Lcom/game/sdk/ui/PayActivity;)V

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->handler:Landroid/os/Handler;

    .line 918
    new-instance v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-direct {v0}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    .line 79
    return-void
.end method

.method static synthetic access$10(Lcom/game/sdk/ui/PayActivity;I)V
    .locals 0

    .prologue
    .line 168
    iput p1, p0, Lcom/game/sdk/ui/PayActivity;->validateCount:I

    return-void
.end method

.method static synthetic access$11(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/engin/ChargeEngin;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity;->chargeEngin:Lcom/game/sdk/engin/ChargeEngin;

    return-void
.end method

.method static synthetic access$12(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/engin/ChargeEngin;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->chargeEngin:Lcom/game/sdk/engin/ChargeEngin;

    return-object v0
.end method

.method static synthetic access$13(Lcom/game/sdk/ui/PayActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity;->orderid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/game/sdk/ui/PayActivity;F)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    return-void
.end method

.method static synthetic access$15(Lcom/game/sdk/ui/PayActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    return-object v0
.end method

.method static synthetic access$16(Lcom/game/sdk/ui/PayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->orderid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 920
    sput-object p0, Lcom/game/sdk/ui/PayActivity;->preSignStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18()Ljava/lang/String;
    .locals 1

    .prologue
    .line 920
    sget-object v0, Lcom/game/sdk/ui/PayActivity;->preSignStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/game/sdk/ui/PayActivity;)Lcom/ipaynow/plugin/api/IpaynowPlugin;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/PayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/engin/PayValidateEngin;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity;->payValidateEngin:Lcom/game/sdk/engin/PayValidateEngin;

    return-void
.end method

.method static synthetic access$21(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/engin/PayValidateEngin;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payValidateEngin:Lcom/game/sdk/engin/PayValidateEngin;

    return-object v0
.end method

.method static synthetic access$22(Lcom/game/sdk/ui/PayActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$23(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/engin/PayCoinEngin;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    return-object v0
.end method

.method static synthetic access$24(Lcom/game/sdk/ui/PayActivity;I)V
    .locals 0

    .prologue
    .line 170
    iput p1, p0, Lcom/game/sdk/ui/PayActivity;->cancelType:I

    return-void
.end method

.method static synthetic access$25(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponUseInfoTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$26(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$27(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;

    return-object v0
.end method

.method static synthetic access$28(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->realPayAmountTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$29(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/CouponInfo;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity;->lastCoupon:Lcom/game/sdk/domain/CouponInfo;

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/PayActivity;)F
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    return v0
.end method

.method static synthetic access$30(Lcom/game/sdk/ui/PayActivity;)I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/game/sdk/ui/PayActivity;->cancelType:I

    return v0
.end method

.method static synthetic access$31(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$32(Lcom/game/sdk/ui/PayActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$33(Lcom/game/sdk/ui/PayActivity;)F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/game/sdk/ui/PayActivity;->totalPrice:F

    return v0
.end method

.method static synthetic access$34(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/CouponInfo;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;

    return-void
.end method

.method static synthetic access$35(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->lastCoupon:Lcom/game/sdk/domain/CouponInfo;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->gameMoneyTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->gameCoinCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->platformMoneyTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->platformCoinCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$8(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponCountTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/game/sdk/ui/PayActivity;)I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/game/sdk/ui/PayActivity;->validateCount:I

    return v0
.end method

.method private getCouponInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/CouponInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    const/4 v1, 0x0

    .line 448
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/CouponInfo;>;"
    :try_start_0
    invoke-static {p0}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lcom/game/sdk/utils/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, "moduleStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get--CouponInfoList---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 450
    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 451
    const-class v3, Lcom/game/sdk/domain/CouponInfo;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 456
    .end local v2    # "moduleStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
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
    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "partner=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    const-string v2, "\"&out_trade_no=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->orderid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    const-string v2, "\"&subject=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->productname:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    const-string v2, "\"&body=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->productdesc:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    const-string v2, "\"&total_fee=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    iget v2, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 895
    const-string v2, "\"&notify_url=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/net/constans/ServerConfig;->getPayCallUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 901
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 902
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    const-string v2, "\"&service=\"mobile.securitypay.pay"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    const-string v2, "\"&_input_charset=\"UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    const-string v2, "\"&payment_type=\"1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    const-string v2, "\"&seller_id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    const-string v2, "\"&it_b_pay=\"1m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object v2
.end method

.method private getSignType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 880
    const-string v0, "sign_type=\"RSA\""

    return-object v0
.end method

.method private prePayMessage()V
    .locals 4

    .prologue
    .line 923
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "{appid}"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->appId:Ljava/lang/String;

    .line 924
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "UTF-8"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCharset:Ljava/lang/String;

    .line 925
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "156"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCurrencyType:Ljava/lang/String;

    .line 927
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget v2, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderAmt:Ljava/lang/String;

    .line 929
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->productdesc:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderDetail:Ljava/lang/String;

    .line 931
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->productname:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderName:Ljava/lang/String;

    .line 933
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v3, "{starttime}"

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    iput-object v3, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    .line 936
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "3600"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderTimeOut:Ljava/lang/String;

    .line 937
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "01"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderType:Ljava/lang/String;

    .line 938
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->attach:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtReserved:Ljava/lang/String;

    .line 940
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/net/constans/ServerConfig;->getPayCallUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 941
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 942
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iput-object v0, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->notifyUrl:Ljava/lang/String;

    .line 943
    return-void
.end method


# virtual methods
.method public continuePay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1110
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->orderid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1111
    new-instance v0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;

    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->orderid:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/game/sdk/ui/PayActivity$PayCancelTask;-><init>(Lcom/game/sdk/ui/PayActivity;Ljava/lang/String;I)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1115
    :goto_0
    return-void

    .line 1113
    :cond_0
    const-string v0, "\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5!"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 1146
    const-string v2, "Pay----finish--->"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 1149
    :try_start_0
    new-instance v1, Lcom/game/sdk/domain/PaymentCancelMsg;

    invoke-direct {v1}, Lcom/game/sdk/domain/PaymentCancelMsg;-><init>()V

    .line 1150
    .local v1, "msg_c":Lcom/game/sdk/domain/PaymentCancelMsg;
    const/4 v2, 0x2

    iput v2, v1, Lcom/game/sdk/domain/PaymentCancelMsg;->code:I

    .line 1151
    const-string v2, "\u53d6\u6d88\u652f\u4ed8"

    iput-object v2, v1, Lcom/game/sdk/domain/PaymentCancelMsg;->msg:Ljava/lang/String;

    .line 1152
    iget v2, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    iput v2, v1, Lcom/game/sdk/domain/PaymentCancelMsg;->money:F

    .line 1154
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    if-eqz v2, :cond_0

    .line 1155
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v2, v1}, Lcom/game/sdk/domain/OnPaymentListener;->paymentCancel(Lcom/game/sdk/domain/PaymentCancelMsg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    .end local v1    # "msg_c":Lcom/game/sdk/domain/PaymentCancelMsg;
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->finish()V

    .line 1161
    return-void

    .line 1157
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public finishSuccess()V
    .locals 1

    .prologue
    .line 1140
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->finish()V

    .line 1141
    const-string v0, "\u6b63\u5e38\u652f\u4ed8\u6210\u529f\u540efinishSuccess--->"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 1142
    return-void
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    const-string v0, "fysdk_activity_payment"

    return-object v0
.end method

.method public initData()V
    .locals 4

    .prologue
    .line 407
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 409
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 410
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "roleid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->role:Ljava/lang/String;

    .line 411
    const-string v1, "serverid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->server:Ljava/lang/String;

    .line 412
    const-string v1, "money"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    .line 413
    iget v1, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    iput v1, p0, Lcom/game/sdk/ui/PayActivity;->totalPrice:F

    .line 414
    const-string v1, "productname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->productname:Ljava/lang/String;

    .line 415
    const-string v1, "productdesc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->productdesc:Ljava/lang/String;

    .line 417
    const-string v1, "attach"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->attach:Ljava/lang/String;

    .line 419
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->productNameTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->productname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->orderAmountTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->realPayAmountTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    new-instance v2, Lcom/game/sdk/engin/PayCoinEngin;

    .line 424
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-direct {v2, p0, v1}, Lcom/game/sdk/engin/PayCoinEngin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 423
    iput-object v2, p0, Lcom/game/sdk/ui/PayActivity;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    .line 425
    new-instance v1, Lcom/game/sdk/view/CustomDialog;

    const-string v2, "\u6b63\u5728\u521b\u5efa\u8ba2\u5355"

    invoke-direct {v1, p0, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    .line 426
    new-instance v1, Lcom/game/sdk/view/PayResultDialog;

    invoke-direct {v1, p0}, Lcom/game/sdk/view/PayResultDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    .line 427
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v1, p0}, Lcom/game/sdk/view/PayResultDialog;->setPayResultListener(Lcom/game/sdk/view/PayResultDialog$PayResultListener;)V

    .line 428
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    new-instance v2, Lcom/game/sdk/ui/PayActivity$6;

    invoke-direct {v2, p0}, Lcom/game/sdk/ui/PayActivity$6;-><init>(Lcom/game/sdk/ui/PayActivity;)V

    invoke-virtual {v1, v2}, Lcom/game/sdk/view/PayResultDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 436
    new-instance v1, Lcom/game/sdk/ui/PayActivity$PayInitTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/game/sdk/ui/PayActivity$PayInitTask;-><init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/ui/PayActivity$PayInitTask;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/game/sdk/ui/PayActivity$PayInitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 437
    return-void

    .line 424
    :cond_0
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    goto :goto_0
.end method

.method public initVars()V
    .locals 2

    .prologue
    .line 297
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 299
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->setOrientation()V

    .line 300
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    if-nez v0, :cond_0

    .line 301
    invoke-static {}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->getInstance()Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->init(Landroid/content/Context;)Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    .line 302
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->unCkeckEnvironment()Lcom/ipaynow/plugin/api/IpaynowPlugin;

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initVars width---"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public initViews()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 310
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 311
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->inflater:Landroid/view/LayoutInflater;

    .line 313
    const-string v0, "pay_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payLayout:Landroid/widget/LinearLayout;

    .line 315
    const-string v0, "coupon_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponLayout:Landroid/widget/RelativeLayout;

    .line 316
    const-string v0, "more_coupon_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->moreCouponLayout:Landroid/widget/LinearLayout;

    .line 317
    const-string v0, "num_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponCountTv:Landroid/widget/TextView;

    .line 318
    const-string v0, "alipay_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->alipayLayout:Landroid/widget/LinearLayout;

    .line 319
    const-string v0, "wxpay_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->wxpayLayout:Landroid/widget/LinearLayout;

    .line 321
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->alipayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 323
    const-string v0, "coupon_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponCheckBox:Landroid/widget/CheckBox;

    .line 324
    const-string v0, "platform_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->platformCoinCheckBox:Landroid/widget/CheckBox;

    .line 325
    const-string v0, "game_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->gameCoinCheckBox:Landroid/widget/CheckBox;

    .line 326
    const-string v0, "close_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->closeIv:Landroid/widget/ImageView;

    .line 328
    const-string v0, "product_name_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->productNameTv:Landroid/widget/TextView;

    .line 329
    const-string v0, "order_amount_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->orderAmountTv:Landroid/widget/TextView;

    .line 330
    const-string v0, "real_pay_amount_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->realPayAmountTv:Landroid/widget/TextView;

    .line 332
    const-string v0, "coupon_use_info_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponUseInfoTv:Landroid/widget/TextView;

    .line 333
    const-string v0, "platform_money_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->platformMoneyTv:Landroid/widget/TextView;

    .line 334
    const-string v0, "game_money_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->gameMoneyTv:Landroid/widget/TextView;

    .line 335
    const-string v0, "pay_game_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payGameBtn:Landroid/widget/TextView;

    .line 336
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payGameBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/game/sdk/ui/PayActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/game/sdk/ui/PayActivity$2;-><init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/ui/PayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->closeIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->moreCouponLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->alipayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->wxpayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/game/sdk/ui/PayActivity$3;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/PayActivity$3;-><init>(Lcom/game/sdk/ui/PayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 370
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->gameCoinCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/game/sdk/ui/PayActivity$4;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/PayActivity$4;-><init>(Lcom/game/sdk/ui/PayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 387
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->platformCoinCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/game/sdk/ui/PayActivity$5;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/PayActivity$5;-><init>(Lcom/game/sdk/ui/PayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 402
    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/PayActivity;->setFinishOnTouchOutside(Z)V

    .line 403
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1052
    invoke-super {p0, p1, p2, p3}, Lcom/game/sdk/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1053
    sget-object v0, Lcom/game/sdk/ui/PayActivity;->isnowpay:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/PayActivity;->nowpayCode:Ljava/lang/String;

    .line 1055
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/PayActivity;->nowpayMsg:Ljava/lang/String;

    .line 1056
    const-string v0, "2"

    sput-object v0, Lcom/game/sdk/ui/PayActivity;->isnowpay:Ljava/lang/String;

    .line 1058
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "close_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/PayActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->finish()V

    .line 466
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "more_coupon_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/PayActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->showCouponList()V

    .line 470
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "coupon_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/PayActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 471
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->showCouponList()V

    .line 473
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "alipay_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/PayActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 474
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->alipayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 475
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->wxpayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 476
    const-string v0, "alipay"

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    .line 478
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "wxpay_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/PayActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 479
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->alipayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 480
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->wxpayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 481
    const-string v0, "wxpay"

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    .line 487
    :cond_4
    return-void
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

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1135
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onDestroy()V

    .line 1136
    const-string v0, "Pay----onDestroy--->"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 1137
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1128
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onPause()V

    .line 1129
    const-string v0, "PayActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 1130
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 1131
    return-void
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x1

    .line 967
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onResume()V

    .line 968
    const-string v0, "PayActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 969
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 971
    const-string v0, "game_open_charge"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 973
    const-string v0, "Payactivity onResume---"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 976
    sget-object v0, Lcom/game/sdk/ui/PayActivity;->isnowpay:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 977
    sget-object v0, Lcom/game/sdk/ui/PayActivity;->nowpayCode:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 978
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v0, v0, Lcom/game/sdk/domain/InItInfo;->isPostToToutiaoSdk:I

    if-ne v0, v3, :cond_0

    .line 979
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    const-string v5, "rmb"

    iget v6, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    float-to-int v7, v6

    move v6, v3

    invoke-static/range {v0 .. v7}, Lcom/ss/android/common/lib/EventUtils;->setPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 982
    :cond_0
    const-string v0, "\u652f\u4ed8\u6210\u529f--->"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 985
    new-instance v9, Lcom/game/sdk/domain/PaymentCallbackInfo;

    invoke-direct {v9}, Lcom/game/sdk/domain/PaymentCallbackInfo;-><init>()V

    .line 986
    .local v9, "pci":Lcom/game/sdk/domain/PaymentCallbackInfo;
    iget v0, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    iput v0, v9, Lcom/game/sdk/domain/PaymentCallbackInfo;->money:F

    .line 987
    const-string v0, "\u652f\u4ed8\u6210\u529f"

    iput-object v0, v9, Lcom/game/sdk/domain/PaymentCallbackInfo;->msg:Ljava/lang/String;

    .line 991
    new-instance v0, Lcom/game/sdk/ui/PayActivity$PayValidateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/PayActivity$PayValidateTask;-><init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/ui/PayActivity$PayValidateTask;)V

    new-array v1, v10, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/PayActivity$PayValidateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 993
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    if-eqz v0, :cond_1

    .line 994
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v0, v9}, Lcom/game/sdk/domain/OnPaymentListener;->paymentSuccess(Lcom/game/sdk/domain/PaymentCallbackInfo;)V

    .line 997
    :cond_1
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->finishSuccess()V

    .line 1000
    .end local v9    # "pci":Lcom/game/sdk/domain/PaymentCallbackInfo;
    :cond_2
    sget-object v0, Lcom/game/sdk/ui/PayActivity;->nowpayCode:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1001
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v0, v0, Lcom/game/sdk/domain/InItInfo;->isPostToToutiaoSdk:I

    if-ne v0, v3, :cond_3

    .line 1002
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    const-string v5, "rmb"

    iget v6, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    float-to-int v7, v6

    move v6, v10

    invoke-static/range {v0 .. v7}, Lcom/ss/android/common/lib/EventUtils;->setPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 1005
    :cond_3
    const-string v0, "\u652f\u4ed8\u53d6\u6d88--->"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 1007
    new-instance v8, Lcom/game/sdk/domain/PaymentErrorMsg;

    invoke-direct {v8}, Lcom/game/sdk/domain/PaymentErrorMsg;-><init>()V

    .line 1008
    .local v8, "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    const/4 v0, 0x2

    iput v0, v8, Lcom/game/sdk/domain/PaymentErrorMsg;->code:I

    .line 1009
    const-string v0, "\u53d6\u6d88\u652f\u4ed8"

    iput-object v0, v8, Lcom/game/sdk/domain/PaymentErrorMsg;->msg:Ljava/lang/String;

    .line 1010
    iget v0, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    iput v0, v8, Lcom/game/sdk/domain/PaymentErrorMsg;->money:F

    .line 1013
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    if-eqz v0, :cond_4

    .line 1014
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v0, v8}, Lcom/game/sdk/domain/OnPaymentListener;->paymentError(Lcom/game/sdk/domain/PaymentErrorMsg;)V

    .line 1017
    :cond_4
    invoke-static {p0}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1018
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/PayResultDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1019
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/PayResultDialog;->show()V

    .line 1024
    .end local v8    # "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    :cond_5
    sget-object v0, Lcom/game/sdk/ui/PayActivity;->nowpayCode:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1025
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v0, v0, Lcom/game/sdk/domain/InItInfo;->isPostToToutiaoSdk:I

    if-ne v0, v3, :cond_6

    .line 1026
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    const-string v5, "rmb"

    iget v6, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    float-to-int v7, v6

    move v6, v10

    invoke-static/range {v0 .. v7}, Lcom/ss/android/common/lib/EventUtils;->setPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 1028
    :cond_6
    sget-object v0, Lcom/game/sdk/ui/PayActivity;->nowpayMsg:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1029
    new-instance v8, Lcom/game/sdk/domain/PaymentErrorMsg;

    invoke-direct {v8}, Lcom/game/sdk/domain/PaymentErrorMsg;-><init>()V

    .line 1030
    .restart local v8    # "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    iput v3, v8, Lcom/game/sdk/domain/PaymentErrorMsg;->code:I

    .line 1031
    sget-object v0, Lcom/game/sdk/ui/PayActivity;->nowpayMsg:Ljava/lang/String;

    iput-object v0, v8, Lcom/game/sdk/domain/PaymentErrorMsg;->msg:Ljava/lang/String;

    .line 1032
    iget v0, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    iput v0, v8, Lcom/game/sdk/domain/PaymentErrorMsg;->money:F

    .line 1035
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    if-eqz v0, :cond_7

    .line 1036
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v0, v8}, Lcom/game/sdk/domain/OnPaymentListener;->paymentError(Lcom/game/sdk/domain/PaymentErrorMsg;)V

    .line 1039
    .end local v8    # "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    :cond_7
    const-string v0, "0"

    sput-object v0, Lcom/game/sdk/ui/PayActivity;->isnowpay:Ljava/lang/String;

    .line 1042
    :cond_8
    return-void
.end method

.method public pay()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 511
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u652f\u4ed8\u524d\u5b9e\u9645\u652f\u4ed8\u91d1\u989d---"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/game/sdk/ui/PayActivity;->totalPrice:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 513
    new-instance v2, Lcom/game/sdk/domain/PayRequestParams;

    invoke-direct {v2}, Lcom/game/sdk/domain/PayRequestParams;-><init>()V

    .line 514
    .local v2, "params":Lcom/game/sdk/domain/PayRequestParams;
    const-string v5, "1"

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->is_game_pay:Ljava/lang/String;

    .line 516
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    .line 518
    .local v4, "tempPayWay":Ljava/lang/String;
    iget v5, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 519
    const-string v4, ""

    .line 522
    :cond_0
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->couponCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 523
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->goodsId:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->goods_id:Ljava/lang/String;

    .line 524
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->cardId:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->card_id:Ljava/lang/String;

    .line 525
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->cardTypeName:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->good_type_name:Ljava/lang/String;

    .line 527
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    .line 530
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 532
    .local v3, "temp":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->gameCoinCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 534
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 535
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    :cond_2
    const-string v5, "gamemoney"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    :cond_3
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->platformCoinCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 543
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 544
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    :cond_4
    const-string v5, "money"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->pay_ways:Ljava/lang/String;

    .line 551
    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/game/sdk/ui/PayActivity;->totalPrice:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->amount:Ljava/lang/String;

    .line 552
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->role:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->role:Ljava/lang/String;

    .line 553
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->server:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->server:Ljava/lang/String;

    .line 554
    const-string v5, ""

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->appid:Ljava/lang/String;

    .line 555
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->productname:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->productname:Ljava/lang/String;

    .line 556
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->attach:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->attach:Ljava/lang/String;

    .line 558
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    const-string v6, "alipay"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 559
    const-string v5, ""

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->md5signstr:Ljava/lang/String;

    .line 560
    new-instance v5, Lcom/game/sdk/ui/PayActivity$PayGameTask;

    invoke-direct {v5, p0, v2}, Lcom/game/sdk/ui/PayActivity$PayGameTask;-><init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/PayRequestParams;)V

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/game/sdk/ui/PayActivity$PayGameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 562
    :cond_6
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    const-string v6, "wxpay"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 563
    invoke-direct {p0}, Lcom/game/sdk/ui/PayActivity;->prePayMessage()V

    .line 564
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v6, "{orderid}"

    iput-object v6, v5, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderNo:Ljava/lang/String;

    .line 565
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/game/sdk/ui/PayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 566
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 567
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 569
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v6, "13"

    iput-object v6, v5, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->payChannelType:Ljava/lang/String;

    .line 571
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-virtual {v5}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->generatePreSignMessage()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/game/sdk/ui/PayActivity;->preSignStr:Ljava/lang/String;

    .line 573
    :cond_7
    sget-object v5, Lcom/game/sdk/ui/PayActivity;->preSignStr:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->md5signstr:Ljava/lang/String;

    .line 575
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pay params -->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 576
    new-instance v5, Lcom/game/sdk/ui/PayActivity$PayGameTask;

    invoke-direct {v5, p0, v2}, Lcom/game/sdk/ui/PayActivity$PayGameTask;-><init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/PayRequestParams;)V

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/game/sdk/ui/PayActivity$PayGameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 578
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v1    # "manager":Landroid/net/ConnectivityManager;
    :cond_8
    invoke-static {p0}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 579
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v5}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_9

    .line 580
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v5}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 584
    :cond_9
    return-void
.end method

.method public payAlipayMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "partnerId"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 852
    :try_start_0
    invoke-static {p3}, Lcom/game/sdk/utils/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 853
    invoke-static {p3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 854
    invoke-direct {p0, p1, p2}, Lcom/game/sdk/ui/PayActivity;->getNewOrderInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, "info":Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/game/sdk/security/Rsa;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 856
    .local v3, "sign":Ljava/lang/String;
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 857
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

    invoke-direct {p0}, Lcom/game/sdk/ui/PayActivity;->getSignType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 858
    move-object v2, v1

    .line 859
    .local v2, "orderInfo":Ljava/lang/String;
    invoke-static {}, Lcom/game/sdk/utils/ThreadPoolManager;->getInstance()Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;

    move-result-object v4

    new-instance v5, Lcom/game/sdk/ui/PayActivity$8;

    invoke-direct {v5, p0, v2}, Lcom/game/sdk/ui/PayActivity$8;-><init>(Lcom/game/sdk/ui/PayActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->addTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "orderInfo":Ljava/lang/String;
    .end local v3    # "sign":Ljava/lang/String;
    :goto_0
    return-void

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 875
    const-string v4, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {p0, v4}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public payExit()V
    .locals 3

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->orderid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1120
    new-instance v0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;

    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->orderid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/game/sdk/ui/PayActivity$PayCancelTask;-><init>(Lcom/game/sdk/ui/PayActivity;Ljava/lang/String;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1124
    :goto_0
    return-void

    .line 1122
    :cond_0
    const-string v0, "\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5!"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOrientation()V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x1

    .line 946
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 947
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 949
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v2, v2, Lcom/game/sdk/domain/InItInfo;->vertical:I

    if-nez v2, :cond_0

    .line 950
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/PayActivity;->setRequestedOrientation(I)V

    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onresume width land ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 952
    invoke-static {p0}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe199999999999aL    # 0.55

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 953
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 955
    :cond_0
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v2, v2, Lcom/game/sdk/domain/InItInfo;->vertical:I

    if-ne v2, v6, :cond_1

    .line 956
    invoke-virtual {p0, v6}, Lcom/game/sdk/ui/PayActivity;->setRequestedOrientation(I)V

    .line 957
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onresume width port ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 958
    invoke-static {p0}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 959
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 962
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 963
    return-void
.end method

.method public showCouponList()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 587
    invoke-static {p0}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 588
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 589
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v2, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/CouponInfo;>;"
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->couponList:Ljava/util/List;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->couponList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 596
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->couponList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 599
    :cond_2
    iput-object v2, p0, Lcom/game/sdk/ui/PayActivity;->couponInfoList:Ljava/util/List;

    .line 601
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->couponInfoList:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 604
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->adapter:Lcom/game/sdk/ui/adapter/CouponListAdapter;

    if-nez v4, :cond_3

    .line 605
    new-instance v4, Lcom/game/sdk/ui/adapter/CouponListAdapter;

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->couponInfoList:Ljava/util/List;

    invoke-direct {v4, p0, v5}, Lcom/game/sdk/ui/adapter/CouponListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/game/sdk/ui/PayActivity;->adapter:Lcom/game/sdk/ui/adapter/CouponListAdapter;

    .line 608
    :cond_3
    const/16 v4, 0x154

    invoke-static {p0, v4}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    .line 609
    .local v1, "pwidth":I
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    if-nez v4, :cond_4

    .line 610
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->inflater:Landroid/view/LayoutInflater;

    const-string v5, "layout"

    const-string v6, "coupon_list"

    invoke-static {p0, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 612
    .local v3, "view":Landroid/view/View;
    const-string v4, "id"

    const-string v5, "coupon_list_view"

    invoke-static {p0, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 611
    check-cast v0, Landroid/widget/ListView;

    .line 613
    .local v0, "lv_pw":Landroid/widget/ListView;
    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 614
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->adapter:Lcom/game/sdk/ui/adapter/CouponListAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 615
    new-instance v4, Lcom/game/sdk/ui/PayActivity$7;

    invoke-direct {v4, p0}, Lcom/game/sdk/ui/PayActivity$7;-><init>(Lcom/game/sdk/ui/PayActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 676
    new-instance v4, Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    const/4 v6, 0x1

    invoke-direct {v4, v3, v1, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v4, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    .line 677
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 678
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 683
    .end local v0    # "lv_pw":Landroid/widget/ListView;
    .end local v3    # "view":Landroid/view/View;
    :goto_1
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->moreCouponLayout:Landroid/widget/LinearLayout;

    neg-int v6, v1

    const/16 v7, 0x30

    invoke-static {p0, v7}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6, v8}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 680
    :cond_4
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->adapter:Lcom/game/sdk/ui/adapter/CouponListAdapter;

    invoke-virtual {v4, v2}, Lcom/game/sdk/ui/adapter/CouponListAdapter;->initDataList(Ljava/util/List;)V

    .line 681
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->adapter:Lcom/game/sdk/ui/adapter/CouponListAdapter;

    invoke-virtual {v4}, Lcom/game/sdk/ui/adapter/CouponListAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
