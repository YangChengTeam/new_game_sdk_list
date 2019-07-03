.class public Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "ValidatePhoneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$PhoneValidateTask;,
        Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$ValidateCodeTask;
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

.field private loginActivity:Lcom/game/sdk/ui/LoginActivity;

.field private phoneNumberEt:Landroid/widget/EditText;

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
    .line 31
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 52
    new-instance v0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$1;-><init>(Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->handler:Landroid/os/Handler;

    .line 209
    const/16 v0, 0x3c

    iput v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->secondes:I

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;)Lcom/game/sdk/ui/LoginActivity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;)Lcom/game/sdk/view/CustomDialog;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->sendDialog:Lcom/game/sdk/view/CustomDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->codeRefresh()V

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->validateCodeEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;)Lcom/game/sdk/view/CustomDialog;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->validateDialog:Lcom/game/sdk/view/CustomDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;)I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->secondes:I

    return v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;I)V
    .locals 0

    .prologue
    .line 209
    iput p1, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->secondes:I

    return-void
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->getValidateBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8(Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private codeRefresh()V
    .locals 4

    .prologue
    .line 215
    const/16 v1, 0x3c

    iput v1, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->secondes:I

    .line 216
    new-instance v0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$2;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$2;-><init>(Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;)V

    .line 237
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    return-void
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "fysdk_validate_phone_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 94
    return-void
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public initViews()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 72
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/LoginActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    .line 73
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v2, "\u6b63\u5728\u53d1\u9001"

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->sendDialog:Lcom/game/sdk/view/CustomDialog;

    .line 74
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v2, "\u6b63\u5728\u9a8c\u8bc1"

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->validateDialog:Lcom/game/sdk/view/CustomDialog;

    .line 75
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->backIv:Landroid/widget/ImageView;

    .line 76
    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->titleTv:Landroid/widget/TextView;

    .line 78
    const-string v0, "phone_number_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->phoneNumberEt:Landroid/widget/EditText;

    .line 79
    const-string v0, "validate_code_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->validateCodeEt:Landroid/widget/EditText;

    .line 81
    const-string v0, "get_validate_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->getValidateBtn:Landroid/widget/Button;

    .line 82
    const-string v0, "submit_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->submitBtn:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->titleTv:Landroid/widget/TextView;

    const-string v1, "validate_phone_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->getValidateBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->submitBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "back_iv"

    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->findIdByString(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 112
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "get_validate_btn"

    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->findIdByString(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 116
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->phoneNumberEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v3, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 122
    .restart local v0    # "phoneNumber":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->sendDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->showDialog()V

    .line 123
    new-instance v2, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$ValidateCodeTask;

    invoke-direct {v2, p0, v0}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$ValidateCodeTask;-><init>(Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;Ljava/lang/String;)V

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$ValidateCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 126
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "submit_btn"

    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->findIdByString(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 127
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v2}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 128
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v3, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_4
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->phoneNumberEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 133
    .restart local v0    # "phoneNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->validateCodeEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "validateCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 136
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v3, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 140
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v3, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_6
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->validateDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 147
    sput-object v1, Lcom/game/sdk/domain/GoagalInfo;->validateCode:Ljava/lang/String;

    .line 148
    new-instance v2, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$PhoneValidateTask;

    invoke-direct {v2, p0, v0}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$PhoneValidateTask;-><init>(Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;Ljava/lang/String;)V

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$PhoneValidateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onPause()V

    .line 244
    const-string v0, "ValidatePhoneFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 106
    const-string v0, "ValidatePhoneFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 107
    return-void
.end method
