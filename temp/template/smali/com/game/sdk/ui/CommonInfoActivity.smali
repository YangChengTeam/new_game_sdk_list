.class public Lcom/game/sdk/ui/CommonInfoActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "CommonInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;
    }
.end annotation


# instance fields
.field private backIv:Landroid/widget/ImageView;

.field private boyLayout:Landroid/widget/RelativeLayout;

.field private boySelectedIcon:Landroid/widget/ImageView;

.field private commonLayout:Landroid/widget/LinearLayout;

.field private girlLayout:Landroid/widget/RelativeLayout;

.field private girlSelectedIcon:Landroid/widget/ImageView;

.field private infoType:Ljava/lang/String;

.field private sex:I

.field private sexLayout:Landroid/widget/LinearLayout;

.field private titleTv:Landroid/widget/TextView;

.field private updateBtn:Landroid/widget/Button;

.field updateDialog:Lcom/game/sdk/view/CustomDialog;

.field private updateInfoEt:Landroid/widget/EditText;

.field private updateTypeText:Ljava/lang/String;

.field private updateUserInfoEngin:Lcom/game/sdk/engin/UpdateUserInfoEngin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sex:I

    .line 26
    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/CommonInfoActivity;Lcom/game/sdk/engin/UpdateUserInfoEngin;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateUserInfoEngin:Lcom/game/sdk/engin/UpdateUserInfoEngin;

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/CommonInfoActivity;)Lcom/game/sdk/engin/UpdateUserInfoEngin;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateUserInfoEngin:Lcom/game/sdk/engin/UpdateUserInfoEngin;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "fysdk_activity_common_info"

    return-object v0
.end method

.method public initData()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 134
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 136
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v0, v0, Lcom/game/sdk/domain/UserInfo;->sex:I

    if-ne v0, v3, :cond_0

    .line 137
    iget-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity;->boySelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity;->girlSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iput v3, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sex:I

    .line 148
    :goto_0
    return-void

    .line 140
    :cond_0
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v0, v0, Lcom/game/sdk/domain/UserInfo;->sex:I

    if-ne v0, v4, :cond_1

    .line 141
    iget-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity;->boySelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity;->girlSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iput v4, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sex:I

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity;->boySelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity;->girlSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public initVars()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 65
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 67
    const-string v2, "title_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->titleTv:Landroid/widget/TextView;

    .line 68
    const-string v2, "back_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->backIv:Landroid/widget/ImageView;

    .line 70
    const-string v2, "common_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->commonLayout:Landroid/widget/LinearLayout;

    .line 71
    const-string v2, "sex_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sexLayout:Landroid/widget/LinearLayout;

    .line 73
    const-string v2, "update_info_et"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateInfoEt:Landroid/widget/EditText;

    .line 74
    const-string v2, "update_btn"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateBtn:Landroid/widget/Button;

    .line 76
    const-string v2, "boy_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->boyLayout:Landroid/widget/RelativeLayout;

    .line 77
    const-string v2, "girl_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->girlLayout:Landroid/widget/RelativeLayout;

    .line 79
    const-string v2, "boy_selected_icon"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->boySelectedIcon:Landroid/widget/ImageView;

    .line 80
    const-string v2, "girl_selected_icon"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->girlSelectedIcon:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {p0}, Lcom/game/sdk/ui/CommonInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 84
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 85
    const-string v2, "infoType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    const-string v3, "nickname"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const-string v2, "nick_name_update_text"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateTypeText:Ljava/lang/String;

    .line 90
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->commonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sexLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v2, :cond_1

    .line 93
    iget-object v3, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateInfoEt:Landroid/widget/EditText;

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->nickName:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    const-string v2, "email_update_text"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateTypeText:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->commonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sexLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->email:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateInfoEt:Landroid/widget/EditText;

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    const-string v3, "qq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    const-string v2, "qq_update_text"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateTypeText:Ljava/lang/String;

    .line 107
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->commonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sexLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->qq:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 110
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateInfoEt:Landroid/widget/EditText;

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->qq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_3
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    const-string v3, "sex"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 114
    const-string v2, "sex_update_text"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateTypeText:Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->commonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sexLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    :cond_4
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->titleTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateTypeText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->boyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->girlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void

    .line 94
    :cond_5
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->nickName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 129
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    const-string v1, "\u6b63\u5728\u4fee\u6539"

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    .line 130
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "back_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/game/sdk/ui/CommonInfoActivity;->finish()V

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "boy_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 164
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->boySelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->girlSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    const/4 v1, 0x1

    iput v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sex:I

    .line 169
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "girl_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 170
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->boySelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->girlSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    const/4 v1, 0x2

    iput v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sex:I

    .line 175
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "update_btn"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 177
    new-instance v0, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v0}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    .line 179
    .local v0, "uinfo":Lcom/game/sdk/domain/UserInfo;
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->commonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 180
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateInfoEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 181
    const-string v1, "update_info_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/CommonInfoActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    .end local v0    # "uinfo":Lcom/game/sdk/domain/UserInfo;
    :cond_3
    :goto_0
    return-void

    .line 185
    .restart local v0    # "uinfo":Lcom/game/sdk/domain/UserInfo;
    :cond_4
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    const-string v2, "nickname"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 186
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateInfoEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->nickName:Ljava/lang/String;

    .line 188
    :cond_5
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 189
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateInfoEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->email:Ljava/lang/String;

    .line 191
    :cond_6
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    const-string v2, "qq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 192
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateInfoEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->qq:Ljava/lang/String;

    .line 196
    :cond_7
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sexLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    .line 197
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    const-string v2, "sex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 198
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateInfoEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->qq:Ljava/lang/String;

    .line 200
    :cond_8
    iget v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sex:I

    iput v1, v0, Lcom/game/sdk/domain/UserInfo;->sex:I

    .line 204
    :cond_9
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 206
    new-instance v1, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;

    invoke-direct {v1, p0, v0}, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;-><init>(Lcom/game/sdk/ui/CommonInfoActivity;Lcom/game/sdk/domain/UserInfo;)V

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
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
    .line 250
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onPause()V

    .line 251
    const-string v0, "CommonInfoActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 252
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 253
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onResume()V

    .line 153
    const-string v0, "CommonInfoActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 154
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 155
    return-void
.end method
