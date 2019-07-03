.class public Lcom/game/sdk/ui/MainActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/MainActivity$PayResultListener;
    }
.end annotation


# instance fields
.field private currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

.field private fm:Landroid/support/v4/app/FragmentManager;

.field private payResultListener:Lcom/game/sdk/ui/MainActivity$PayResultListener;

.field private transaction:Landroid/support/v4/app/FragmentTransaction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public changeFragment(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 150
    iget-object v1, p0, Lcom/game/sdk/ui/MainActivity;->fm:Landroid/support/v4/app/FragmentManager;

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/game/sdk/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->fm:Landroid/support/v4/app/FragmentManager;

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/MainActivity;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 155
    packed-switch p1, :pswitch_data_0

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/game/sdk/ui/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const-string v2, "id"

    const-string v3, "main_content"

    invoke-static {p0, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 200
    iget-object v1, p0, Lcom/game/sdk/ui/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 201
    return-void

    .line 157
    :pswitch_0
    new-instance v1, Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-direct {v1}, Lcom/game/sdk/ui/fragment/MainFragment;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 160
    :pswitch_1
    new-instance v1, Lcom/game/sdk/ui/fragment/CompAignFragment;

    invoke-direct {v1}, Lcom/game/sdk/ui/fragment/CompAignFragment;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 163
    :pswitch_2
    new-instance v1, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    invoke-direct {v1}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 166
    :pswitch_3
    new-instance v1, Lcom/game/sdk/ui/fragment/QuickPlayFragment;

    invoke-direct {v1}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 169
    :pswitch_4
    new-instance v1, Lcom/game/sdk/ui/fragment/GameCoinListFragment;

    invoke-direct {v1}, Lcom/game/sdk/ui/fragment/GameCoinListFragment;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 172
    :pswitch_5
    new-instance v1, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;

    invoke-direct {v1}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 175
    :pswitch_6
    new-instance v1, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    invoke-direct {v1}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 178
    :pswitch_7
    new-instance v1, Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    invoke-direct {v1}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 181
    :pswitch_8
    new-instance v1, Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    invoke-direct {v1}, Lcom/game/sdk/ui/fragment/ChargeRecordFragment;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 184
    :pswitch_9
    new-instance v1, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;

    invoke-direct {v1}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 187
    :pswitch_a
    new-instance v1, Lcom/game/sdk/ui/fragment/GamePackageFragment;

    invoke-direct {v1}, Lcom/game/sdk/ui/fragment/GamePackageFragment;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "gameId"

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->gameid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    invoke-virtual {v1, v0}, Lcom/game/sdk/ui/fragment/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 193
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_b
    new-instance v1, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;

    invoke-direct {v1}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto/16 :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public defaultFragment()V
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/game/sdk/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/MainActivity;->fm:Landroid/support/v4/app/FragmentManager;

    .line 143
    iget-object v0, p0, Lcom/game/sdk/ui/MainActivity;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 144
    new-instance v0, Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/MainFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    .line 145
    iget-object v0, p0, Lcom/game/sdk/ui/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const-string v1, "id"

    const-string v2, "main_content"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 146
    iget-object v0, p0, Lcom/game/sdk/ui/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 147
    return-void
.end method

.method public detailFragment(Ljava/lang/String;I)V
    .locals 4
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "actionType"    # I

    .prologue
    .line 204
    iget-object v1, p0, Lcom/game/sdk/ui/MainActivity;->fm:Landroid/support/v4/app/FragmentManager;

    if-nez v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/game/sdk/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->fm:Landroid/support/v4/app/FragmentManager;

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/MainActivity;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "aid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    new-instance v1, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    invoke-direct {v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    .line 214
    iget-object v1, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    invoke-virtual {v1, v0}, Lcom/game/sdk/ui/fragment/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 215
    iget-object v1, p0, Lcom/game/sdk/ui/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const-string v2, "id"

    const-string v3, "main_content"

    invoke-static {p0, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 216
    iget-object v1, p0, Lcom/game/sdk/ui/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 217
    return-void
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "fysdk_activity_main"

    return-object v0
.end method

.method public getPayResultListener()Lcom/game/sdk/ui/MainActivity$PayResultListener;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/game/sdk/ui/MainActivity;->payResultListener:Lcom/game/sdk/ui/MainActivity$PayResultListener;

    return-object v0
.end method

.method protected hideBottomUIMenu()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/16 v5, 0x13

    .line 83
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-le v3, v4, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v5, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/game/sdk/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 85
    .local v2, "v":Landroid/view/View;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 98
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/game/sdk/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0xf06

    .line 95
    .local v1, "uiOptions":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 96
    invoke-virtual {p0}, Lcom/game/sdk/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 106
    const-string v1, "fysdk_main_activity"

    .line 107
    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    invoke-static {p0, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    .line 107
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public initVars()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 67
    invoke-virtual {p0}, Lcom/game/sdk/ui/MainActivity;->setOrientation()V

    .line 68
    return-void
.end method

.method public initViews()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 73
    invoke-virtual {p0}, Lcom/game/sdk/ui/MainActivity;->hideBottomUIMenu()V

    .line 74
    invoke-virtual {p0}, Lcom/game/sdk/ui/MainActivity;->defaultFragment()V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/MainActivity;->setFinishOnTouchOutside(Z)V

    .line 76
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/content/Intent;

    .prologue
    .line 228
    invoke-super {p0, p1, p2, p3}, Lcom/game/sdk/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 229
    iget-object v0, p0, Lcom/game/sdk/ui/MainActivity;->payResultListener:Lcom/game/sdk/ui/MainActivity$PayResultListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/game/sdk/ui/MainActivity$PayResultListener;->payResult(IILandroid/content/Intent;)V

    .line 230
    const-string v0, "mainActivity---onActivityResult--->"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/game/sdk/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 138
    invoke-virtual {p0}, Lcom/game/sdk/ui/MainActivity;->setOrientation()V

    .line 139
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

.method protected onPause()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onPause()V

    .line 223
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 224
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onResume()V

    .line 131
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method public setOrientation()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 112
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v2, v2, Lcom/game/sdk/domain/InItInfo;->vertical:I

    if-nez v2, :cond_0

    .line 113
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/MainActivity;->setRequestedOrientation(I)V

    .line 116
    :cond_0
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v2, v2, Lcom/game/sdk/domain/InItInfo;->vertical:I

    if-ne v2, v3, :cond_1

    .line 117
    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/MainActivity;->setRequestedOrientation(I)V

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/game/sdk/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 121
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 122
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-static {p0}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 123
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 125
    return-void
.end method

.method public setPayResultListener(Lcom/game/sdk/ui/MainActivity$PayResultListener;)V
    .locals 0
    .param p1, "payResultListener"    # Lcom/game/sdk/ui/MainActivity$PayResultListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/game/sdk/ui/MainActivity;->payResultListener:Lcom/game/sdk/ui/MainActivity$PayResultListener;

    .line 56
    return-void
.end method
