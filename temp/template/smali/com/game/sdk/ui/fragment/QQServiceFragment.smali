.class public Lcom/game/sdk/ui/fragment/QQServiceFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "QQServiceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backIv:Landroid/widget/ImageView;

.field private firstQQLayout:Landroid/widget/LinearLayout;

.field private firstTv:Landroid/widget/TextView;

.field private kefu:[Ljava/lang/String;

.field private loginActivity:Lcom/game/sdk/ui/LoginActivity;

.field private secondQQLayout:Landroid/widget/LinearLayout;

.field private secondTv:Landroid/widget/TextView;

.field private titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->kefu:[Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "fysdk_qq_service_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 67
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->gameKefuQQ:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QQServiceFragment;->kefuQQ(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->kefu:[Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->kefu:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->kefu:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->kefu:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 71
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->firstTv:Landroid/widget/TextView;

    const-string v1, "\u5ba2\u670dQQ\u7fa41"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->kefu:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->kefu:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 75
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->secondTv:Landroid/widget/TextView;

    const-string v1, "\u5ba2\u670dQQ\u7fa42"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_1
    return-void
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 49
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/QQServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/LoginActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    .line 50
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QQServiceFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->backIv:Landroid/widget/ImageView;

    .line 51
    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QQServiceFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->titleTv:Landroid/widget/TextView;

    .line 52
    const-string v0, "first_qq_service_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QQServiceFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->firstQQLayout:Landroid/widget/LinearLayout;

    .line 53
    const-string v0, "second_qq_service_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QQServiceFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->secondQQLayout:Landroid/widget/LinearLayout;

    .line 54
    const-string v0, "first_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QQServiceFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->firstTv:Landroid/widget/TextView;

    .line 55
    const-string v0, "second_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QQServiceFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->secondTv:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->titleTv:Landroid/widget/TextView;

    const-string v1, "service_qq_num_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/QQServiceFragment;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->firstQQLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->secondQQLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public joinQQGroup(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 161
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 167
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/QQServiceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    const/4 v2, 0x1

    .line 171
    :goto_0
    return v2

    .line 169
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public kefuQQ(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "qqNumString"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/QQServiceFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 97
    sget v0, Lcom/game/sdk/domain/GoagalInfo;->qqKefuFrom:I

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    .line 101
    :cond_0
    sget v0, Lcom/game/sdk/domain/GoagalInfo;->qqKefuFrom:I

    if-ne v0, v2, :cond_1

    .line 102
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    .line 106
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "first_qq_service_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/QQServiceFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 107
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->kefu:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->kefu:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->kefu:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QQServiceFragment;->startQQ(Ljava/lang/String;)V

    .line 111
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "second_qq_service_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/QQServiceFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 112
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->kefu:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->kefu:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v2, :cond_3

    .line 113
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->kefu:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QQServiceFragment;->startQQ(Ljava/lang/String;)V

    .line 116
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onPause()V

    .line 122
    const-string v0, "QQServiceFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 91
    const-string v0, "QQServiceFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public startQQ(Ljava/lang/String;)V
    .locals 5
    .param p1, "qqNum"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {p1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v1}, Lcom/game/sdk/utils/CheckUtil;->setPackageNames(Landroid/content/Context;)V

    .line 139
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v1}, Lcom/game/sdk/utils/CheckUtil;->isQQAvilible(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v2, "\u8bf7\u5b89\u88c5QQ"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_2

    .line 144
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/QQServiceFragment;->joinQQGroup(Ljava/lang/String;)Z

    goto :goto_0

    .line 146
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mqqwpa://im/chat?chat_type=wpa&uin="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/QQServiceFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/game/sdk/ui/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
