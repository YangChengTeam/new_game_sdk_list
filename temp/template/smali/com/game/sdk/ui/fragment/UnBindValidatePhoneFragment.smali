.class public Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "UnBindValidatePhoneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;,
        Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$UnBindPhoneTask;
    }
.end annotation


# instance fields
.field private backIv:Landroid/widget/ImageView;

.field private getValidateBtn:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mainActivity:Lcom/game/sdk/ui/MainActivity;

.field private phoneNumberEt:Landroid/widget/TextView;

.field private secondes:I

.field private sendDialog:Lcom/game/sdk/view/CustomDialog;

.field private submitBtn:Landroid/widget/Button;

.field private titleTv:Landroid/widget/TextView;

.field private validateCodeEt:Landroid/widget/EditText;

.field private validateDialog:Lcom/game/sdk/view/CustomDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$1;-><init>(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->handler:Landroid/os/Handler;

    .line 208
    const/16 v0, 0x3c

    iput v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->secondes:I

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)Lcom/game/sdk/ui/MainActivity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)Lcom/game/sdk/view/CustomDialog;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->sendDialog:Lcom/game/sdk/view/CustomDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->codeRefresh()V

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->validateCodeEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)Lcom/game/sdk/view/CustomDialog;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->validateDialog:Lcom/game/sdk/view/CustomDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->secondes:I

    return v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;I)V
    .locals 0

    .prologue
    .line 208
    iput p1, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->secondes:I

    return-void
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->getValidateBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private codeRefresh()V
    .locals 4

    .prologue
    .line 214
    const/16 v1, 0x3c

    iput v1, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->secondes:I

    .line 215
    new-instance v0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$2;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$2;-><init>(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)V

    .line 236
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    return-void
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "fysdk_unbind_validate_phone_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 99
    return-void
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public initViews()V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 74
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/MainActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    .line 75
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u6b63\u5728\u53d1\u9001"

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->sendDialog:Lcom/game/sdk/view/CustomDialog;

    .line 76
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u6b63\u5728\u9a8c\u8bc1"

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->validateDialog:Lcom/game/sdk/view/CustomDialog;

    .line 77
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->backIv:Landroid/widget/ImageView;

    .line 78
    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->titleTv:Landroid/widget/TextView;

    .line 80
    const-string v0, "phone_number_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->phoneNumberEt:Landroid/widget/TextView;

    .line 81
    const-string v0, "validate_code_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->validateCodeEt:Landroid/widget/EditText;

    .line 83
    const-string v0, "get_validate_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->getValidateBtn:Landroid/widget/Button;

    .line 84
    const-string v0, "submit_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->submitBtn:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->titleTv:Landroid/widget/TextView;

    const-string v1, "unbind_validate_phone_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->phoneNumberEt:Landroid/widget/TextView;

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->getValidateBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->submitBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void

    .line 87
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "back_iv"

    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->findIdByString(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 117
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "get_validate_btn"

    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->findIdByString(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 121
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->phoneNumberEt:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v3, "\u624b\u673a\u53f7\u4e3a\u7a7a\uff0c\u4e0d\u80fd\u64cd\u4f5c"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 127
    .restart local v0    # "phoneNumber":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->sendDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->showDialog()V

    .line 128
    new-instance v3, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    :goto_1
    invoke-direct {v3, p0, v2, v0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;-><init>(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 131
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "submit_btn"

    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->findIdByString(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 132
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v2}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 133
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v3, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .restart local v0    # "phoneNumber":Ljava/lang/String;
    :cond_4
    const-string v2, ""

    goto :goto_1

    .line 137
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->phoneNumberEt:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 138
    .restart local v0    # "phoneNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->validateCodeEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "validateCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 141
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v3, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 145
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v3, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_7
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->validateDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 151
    sput-object v1, Lcom/game/sdk/domain/GoagalInfo;->validateCode:Ljava/lang/String;

    .line 152
    new-instance v3, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$UnBindPhoneTask;

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    :goto_2
    invoke-direct {v3, p0, v2, v0, v1}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$UnBindPhoneTask;-><init>(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$UnBindPhoneTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_8
    const-string v2, ""

    goto :goto_2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onPause()V

    .line 243
    const-string v0, "UnBindValidatePhoneFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 111
    const-string v0, "UnBindValidatePhoneFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 112
    return-void
.end method
