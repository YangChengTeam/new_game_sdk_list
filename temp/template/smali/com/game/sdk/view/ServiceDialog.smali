.class public Lcom/game/sdk/view/ServiceDialog;
.super Landroid/app/Dialog;
.source "ServiceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/view/ServiceDialog$NoUnderlineSpan;
    }
.end annotation


# instance fields
.field private callLayout:Landroid/widget/RelativeLayout;

.field private callPhoneTv:Landroid/widget/TextView;

.field private copyWeixinBtn:Landroid/widget/Button;

.field private firstQQTv:Landroid/widget/TextView;

.field private kefu:[Ljava/lang/String;

.field private mContext:Landroid/app/Activity;

.field public scale:F

.field private secondQQTv:Landroid/widget/TextView;

.field private weixinTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;F)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "scale"    # F

    .prologue
    .line 56
    const-string v0, "style"

    const-string v1, "CustomSdkDialog"

    invoke-static {p1, v0, v1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    .line 58
    iput p2, p0, Lcom/game/sdk/view/ServiceDialog;->scale:F

    .line 59
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 9

    .prologue
    .line 96
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 97
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v7, "layout"

    const-string v8, "service_dialog"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 99
    .local v3, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v7, "id"

    const-string v8, "call_phone_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->callPhoneTv:Landroid/widget/TextView;

    .line 101
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v7, "id"

    const-string v8, "call_layout"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->callLayout:Landroid/widget/RelativeLayout;

    .line 103
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v7, "id"

    const-string v8, "kefu_qq_num1_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->firstQQTv:Landroid/widget/TextView;

    .line 105
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v7, "id"

    const-string v8, "kefu_qq_num2_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->secondQQTv:Landroid/widget/TextView;

    .line 107
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v7, "id"

    const-string v8, "weixin_number_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->weixinTv:Landroid/widget/TextView;

    .line 109
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v7, "id"

    const-string v8, "copy_weixin_btn"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->copyWeixinBtn:Landroid/widget/Button;

    .line 111
    invoke-virtual {p0, v3}, Lcom/game/sdk/view/ServiceDialog;->setContentView(Landroid/view/View;)V

    .line 113
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 114
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->callPhoneTv:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u5ba2\u670d\u7535\u8bdd\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/InItInfo;->weixin:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "weixin--->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v7, v7, Lcom/game/sdk/domain/InItInfo;->weixin:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 121
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->weixinTv:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u5fae\u4fe1\u516c\u4f17\u53f7\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->weixin:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :goto_1
    iget v6, p0, Lcom/game/sdk/view/ServiceDialog;->scale:F

    float-to-double v4, v6

    .line 134
    .local v4, "ratio":D
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v6, v6, Lcom/game/sdk/domain/InItInfo;->vertical:I

    if-nez v6, :cond_0

    .line 135
    iget v6, p0, Lcom/game/sdk/view/ServiceDialog;->scale:F

    float-to-double v4, v6

    .line 138
    :cond_0
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v6, v6, Lcom/game/sdk/domain/InItInfo;->vertical:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 139
    const-wide v4, 0x3fe999999999999aL    # 0.8

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/game/sdk/view/ServiceDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 143
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 145
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    invoke-static {v6}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-int v6, v6

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 147
    const/16 v6, 0x11

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 149
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->callPhoneTv:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->firstQQTv:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->secondQQTv:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->copyWeixinBtn:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void

    .line 116
    .end local v0    # "dialogWindow":Landroid/view/Window;
    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "ratio":D
    :cond_2
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->callPhoneTv:Landroid/widget/TextView;

    const-string v7, "\u5ba2\u670d\u7535\u8bdd\uff1a400-796-6071"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 123
    :cond_3
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->weixinTv:Landroid/widget/TextView;

    const-string v7, "\u5fae\u4fe1\u516c\u4f17\u53f7\uff1aleqi_youxi"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public joinQQGroup(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 241
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 243
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 242
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 248
    :try_start_0
    iget-object v2, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    const/4 v2, 0x1

    .line 252
    :goto_0
    return v2

    .line 250
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public kefuQQ(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "qqNumString"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-static {p1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v7, "id"

    const-string v8, "call_phone_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isEmulator--->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/game/sdk/utils/EmulatorCheckUtil;->isEmulator()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/game/sdk/utils/EmulatorCheckUtil;->isEmulator()Z

    move-result v5

    if-nez v5, :cond_0

    .line 162
    iget-object v5, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    invoke-static {v5}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v5, :cond_0

    .line 163
    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-static {v5}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 164
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v2, "intent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tel:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 166
    .local v1, "data":Landroid/net/Uri;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 167
    iget-object v5, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 172
    .end local v1    # "data":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v7, "id"

    const-string v8, "kefu_qq_num1_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 173
    iget-object v5, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_1

    .line 174
    iget-object v5, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/game/sdk/view/ServiceDialog;->startQQ(Ljava/lang/String;)V

    .line 177
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v7, "id"

    const-string v8, "kefu_qq_num2_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 178
    iget-object v5, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    array-length v5, v5

    if-le v5, v9, :cond_2

    .line 179
    iget-object v5, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-virtual {p0, v5}, Lcom/game/sdk/view/ServiceDialog;->startQQ(Ljava/lang/String;)V

    .line 182
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v7, "id"

    const-string v8, "copy_weixin_btn"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 183
    const-string v4, "leqi_youxi"

    .line 184
    .local v4, "weixinCode":Ljava/lang/String;
    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->weixin:Ljava/lang/String;

    invoke-static {v5}, Lcom/game/sdk/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 185
    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v5, Lcom/game/sdk/domain/InItInfo;->weixin:Ljava/lang/String;

    .line 188
    :cond_3
    iget-object v5, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v6, "clipboard"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 190
    .local v0, "cm":Landroid/content/ClipboardManager;
    const-string v5, "Label"

    invoke-static {v5, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    .line 192
    .local v3, "mClipData":Landroid/content/ClipData;
    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 193
    iget-object v5, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v6, "\u590d\u5236\u6210\u529f\uff0c\u8bf7\u6253\u5f00\u5fae\u4fe1\u641c\u7d22\u516c\u4f17\u53f7"

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 195
    .end local v0    # "cm":Landroid/content/ClipboardManager;
    .end local v3    # "mClipData":Landroid/content/ClipData;
    .end local v4    # "weixinCode":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/game/sdk/view/ServiceDialog;->initView()V

    .line 66
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->kefuQQ:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/game/sdk/view/ServiceDialog;->kefuQQ(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kefuqq--->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->kefuQQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v3, "drawable"

    const-string v4, "no_qq_service_num_icon"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 72
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->firstQQTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->secondQQTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->firstQQTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->secondQQTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v7, :cond_3

    .line 82
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->secondQQTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_3
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_4

    .line 86
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->firstQQTv:Landroid/widget/TextView;

    const-string v2, "\u5ba2\u670dQQ\u7fa41"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_4
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v7, :cond_0

    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_0

    .line 90
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->secondQQTv:Landroid/widget/TextView;

    const-string v2, "\u5ba2\u670dQQ\u7fa42"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public startQQ(Ljava/lang/String;)V
    .locals 5
    .param p1, "qqNum"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {p1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/CheckUtil;->setPackageNames(Landroid/content/Context;)V

    .line 220
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/CheckUtil;->isQQAvilible(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v2, "\u8bf7\u5b89\u88c5QQ"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_2

    .line 225
    invoke-virtual {p0, p1}, Lcom/game/sdk/view/ServiceDialog;->joinQQGroup(Ljava/lang/String;)Z

    goto :goto_0

    .line 227
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mqqwpa://im/chat?chat_type=wpa&uin="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
