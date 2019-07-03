.class public Lcom/game/sdk/FYGameSDK;
.super Ljava/lang/Object;
.source "FYGameSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/FYGameSDK$InitCloseListener;,
        Lcom/game/sdk/FYGameSDK$LoginTask;,
        Lcom/game/sdk/FYGameSDK$ReInitInfoTaskByUserId;
    }
.end annotation


# static fields
.field private static instance:Lcom/game/sdk/FYGameSDK;


# instance fields
.field private acontext:Landroid/app/Activity;

.field private alogout:Ljava/lang/Runnable;

.field private autoLoginDialog:Lcom/game/sdk/view/LoginInDialog;

.field private closeListener:Lcom/game/sdk/FYGameSDK$InitCloseListener;

.field handler:Landroid/os/Handler;

.field initCallback:Lcom/game/sdk/OnSDKInitListener;

.field private initMsg:Ljava/lang/String;

.field private isInitOk:Z

.field private isOpenLogout:Z

.field private switchCallBack:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game/sdk/FYGameSDK;->isOpenLogout:Z

    .line 70
    const-string v0, "\u6b63\u5728\u521d\u59cb\u5316"

    iput-object v0, p0, Lcom/game/sdk/FYGameSDK;->initMsg:Ljava/lang/String;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/FYGameSDK;->handler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/FYGameSDK;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/FYGameSDK;)Lcom/game/sdk/view/LoginInDialog;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->autoLoginDialog:Lcom/game/sdk/view/LoginInDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/FYGameSDK;)Lcom/game/sdk/FYGameSDK$InitCloseListener;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->closeListener:Lcom/game/sdk/FYGameSDK$InitCloseListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/FYGameSDK;Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/game/sdk/FYGameSDK;->isInitOk:Z

    return-void
.end method

.method static synthetic access$4(Lcom/game/sdk/FYGameSDK;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/game/sdk/FYGameSDK;->isInitOk:Z

    return v0
.end method

.method public static defaultSDK()Lcom/game/sdk/FYGameSDK;
    .locals 2

    .prologue
    .line 299
    sget-object v0, Lcom/game/sdk/FYGameSDK;->instance:Lcom/game/sdk/FYGameSDK;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lcom/game/sdk/FYGameSDK;

    invoke-direct {v0}, Lcom/game/sdk/FYGameSDK;-><init>()V

    sput-object v0, Lcom/game/sdk/FYGameSDK;->instance:Lcom/game/sdk/FYGameSDK;

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "6071GameSDK\u7248\u672c\u53f7\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/game/sdk/FYGameSDK;->instance:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v1}, Lcom/game/sdk/FYGameSDK;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6b63\u5f0f\u7248"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 303
    :cond_0
    sget-object v0, Lcom/game/sdk/FYGameSDK;->instance:Lcom/game/sdk/FYGameSDK;

    return-object v0
.end method

.method private getUserInfoByUserName(Ljava/lang/String;)Lcom/game/sdk/domain/UserInfo;
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 555
    const/4 v0, 0x0

    .line 568
    .local v0, "userInfo":Lcom/game/sdk/domain/UserInfo;
    return-object v0
.end method

.method private preInit()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 97
    const-string v1, "preInit -----"

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 99
    sput-boolean v9, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 100
    const/4 v1, 0x0

    sput-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 102
    invoke-static {}, Lcom/game/sdk/utils/CrashHandler;->getInstance()Lcom/game/sdk/utils/CrashHandler;

    move-result-object v7

    .line 103
    .local v7, "crashHandler":Lcom/game/sdk/utils/CrashHandler;
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v2, ""

    invoke-virtual {v7, v1, v2}, Lcom/game/sdk/utils/CrashHandler;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/game/sdk/domain/GoagalInfo;->imei:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/SystemUtil;->getUpValidateCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/game/sdk/domain/GoagalInfo;->validateCode:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/Util;->getGameInfo(Landroid/content/Context;)V

    .line 110
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/net/impls/OKHttpRequest;->initPicasso(Landroid/content/Context;)V

    .line 116
    const/4 v6, 0x0

    .line 118
    .local v6, "appName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/SystemUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/SystemUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 125
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appName--->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;

    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v2, "5879b43ca325113edf0010f8"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    sget-object v4, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    const/4 v5, 0x1

    .line 128
    invoke-direct/range {v0 .. v5}, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/analytics/MobclickAgent$EScenarioType;Z)V

    .line 130
    .local v0, "umConfig":Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;
    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->startWithConfigure(Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;)V

    .line 131
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    sget-object v2, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->setScenarioType(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V

    .line 132
    invoke-static {v9}, Lcom/umeng/analytics/MobclickAgent;->openActivityDurationTrack(Z)V

    .line 134
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/common/applog/TeaAgent;->setUserUniqueID(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/ss/android/common/applog/TeaConfigBuilder;->create(Landroid/content/Context;)Lcom/ss/android/common/applog/TeaConfigBuilder;

    move-result-object v1

    .line 136
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->teaAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ss/android/common/applog/TeaConfigBuilder;->setAppName(Ljava/lang/String;)Lcom/ss/android/common/applog/TeaConfigBuilder;

    move-result-object v1

    .line 137
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ss/android/common/applog/TeaConfigBuilder;->setChannel(Ljava/lang/String;)Lcom/ss/android/common/applog/TeaConfigBuilder;

    move-result-object v1

    .line 138
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->teaAppId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/common/applog/TeaConfigBuilder;->setAid(I)Lcom/ss/android/common/applog/TeaConfigBuilder;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/ss/android/common/applog/TeaConfigBuilder;->createTeaConfig()Lcom/ss/android/common/applog/TeaConfig;

    move-result-object v1

    .line 135
    invoke-static {v1}, Lcom/ss/android/common/applog/TeaAgent;->init(Lcom/ss/android/common/applog/TeaConfig;)V

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TeaAgent Init--->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->teaAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->teaAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 142
    return-void

    .line 118
    .end local v0    # "umConfig":Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/domain/GoagalInfo;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 119
    :catch_0
    move-exception v8

    .line 120
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private reinit(Lcom/game/sdk/OnSDKInitListener;Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V
    .locals 7
    .param p1, "initCallback"    # Lcom/game/sdk/OnSDKInitListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isShowQuikLogin"    # Z
    .param p4, "loginlistener"    # Lcom/game/sdk/domain/OnLoginListener;

    .prologue
    .line 191
    new-instance v2, Lcom/game/sdk/view/CustomDialog;

    const-string v0, "\u91cd\u65b0\u521d\u59cb\u5316"

    invoke-direct {v2, p2, v0}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    .local v2, "reinitDialog":Lcom/game/sdk/view/CustomDialog;
    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 194
    invoke-static {}, Lcom/game/sdk/utils/ThreadPoolManager;->getInstance()Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;

    move-result-object v6

    new-instance v0, Lcom/game/sdk/FYGameSDK$2;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/game/sdk/FYGameSDK$2;-><init>(Lcom/game/sdk/FYGameSDK;Lcom/game/sdk/view/CustomDialog;Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V

    invoke-virtual {v6, v0}, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->addTask(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method


# virtual methods
.method public createFloatButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 734
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v1, v1, Lcom/game/sdk/domain/InItInfo;->isPostToToutiaoSdk:I

    if-ne v1, v3, :cond_0

    .line 735
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/ss/android/common/applog/TeaAgent;->onResume(Landroid/content/Context;)V

    .line 736
    const-string v1, "TeaAgent onResume"

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 738
    :cond_0
    sget-boolean v1, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    if-nez v1, :cond_1

    .line 755
    :goto_0
    return-void

    .line 742
    :cond_1
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v1

    const-string v2, "IS_SHOW_OPEN_WINDOW"

    invoke-virtual {v1, v2, v3}, Lcom/game/sdk/utils/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 743
    .local v0, "isShow":Z
    if-eqz v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    .line 744
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    new-instance v2, Lcom/game/sdk/FYGameSDK$4;

    invoke-direct {v2, p0}, Lcom/game/sdk/FYGameSDK$4;-><init>(Lcom/game/sdk/FYGameSDK;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 750
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v1

    const-string v2, "IS_SHOW_OPEN_WINDOW"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/game/sdk/utils/PreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 753
    :cond_2
    const-string v1, "\u60ac\u6d6e\u6309\u94ae\u542f\u52a8"

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 754
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/floatwindow/FloatViewImpl;->getInstance(Landroid/content/Context;)Lcom/game/sdk/floatwindow/FloatViewImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/floatwindow/FloatViewImpl;->ShowFloat()V

    goto :goto_0
.end method

.method public exitSDK()V
    .locals 3

    .prologue
    .line 711
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-class v2, Lcom/game/sdk/ui/LoginoutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 712
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 713
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 714
    return-void
.end method

.method public getLastUserInfo()Lcom/game/sdk/domain/UserInfo;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 572
    const/4 v4, 0x0

    .line 574
    .local v4, "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    iget-object v8, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/game/sdk/utils/AccountInfoUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 576
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    if-nez v7, :cond_0

    .line 577
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    :cond_0
    iget-object v8, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v8

    const-string v9, "is_read_last_version"

    invoke-virtual {v8, v9, v11}, Lcom/game/sdk/utils/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 582
    .local v2, "isRead":Z
    if-nez v2, :cond_2

    .line 583
    iget-object v8, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/game/sdk/utils/MobileInfoUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 584
    .local v5, "lastVersionPhoneList":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 585
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 586
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lt v1, v8, :cond_3

    .line 605
    .end local v1    # "i":I
    :cond_1
    iget-object v8, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v8

    const-string v9, "is_read_last_version"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/game/sdk/utils/PreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 609
    iget-object v8, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v8

    sget-object v9, Lcom/game/sdk/net/constans/ServerConfig;->MAIN_MODULE_URL:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/game/sdk/utils/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .end local v5    # "lastVersionPhoneList":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    :cond_2
    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 613
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    check-cast v4, Lcom/game/sdk/domain/UserInfo;

    .line 618
    .restart local v4    # "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    :goto_1
    return-object v4

    .line 587
    .restart local v1    # "i":I
    .restart local v5    # "lastVersionPhoneList":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    :cond_3
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    .line 588
    .local v0, "_userInfo":Lcom/game/sdk/domain/UserInfo;
    invoke-interface {v7, v11, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 589
    iget-object v8, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v8, v0}, Lcom/game/sdk/utils/AccountInfoUtil;->insertUserInfo(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V

    .line 586
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    .end local v0    # "_userInfo":Lcom/game/sdk/domain/UserInfo;
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 593
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    .line 595
    .restart local v0    # "_userInfo":Lcom/game/sdk/domain/UserInfo;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 596
    .local v6, "len":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    if-lt v3, v6, :cond_5

    .line 592
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 597
    :cond_5
    iget-object v8, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-static {v8}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v9, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/game/sdk/domain/UserInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 598
    invoke-interface {v7, v11, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 599
    iget-object v8, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v8, v0}, Lcom/game/sdk/utils/AccountInfoUtil;->insertUserInfo(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V

    .line 596
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 615
    .end local v0    # "_userInfo":Lcom/game/sdk/domain/UserInfo;
    .end local v1    # "i":I
    .end local v3    # "j":I
    .end local v5    # "lastVersionPhoneList":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    .end local v6    # "len":I
    :cond_7
    iget-object v8, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v8

    invoke-virtual {v8}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getUserInfoLastByType()Lcom/game/sdk/domain/UserInfo;

    move-result-object v4

    goto :goto_1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 802
    const-string v0, "2.3.6"

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/game/sdk/utils/ThreadPoolManager;->getInstance()Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;

    move-result-object v0

    new-instance v1, Lcom/game/sdk/FYGameSDK$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/FYGameSDK$1;-><init>(Lcom/game/sdk/FYGameSDK;)V

    invoke-virtual {v0, v1}, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->addTask(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public initSDK(Landroid/app/Activity;Lcom/game/sdk/OnSDKInitListener;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "initCallback"    # Lcom/game/sdk/OnSDKInitListener;
    .param p3, "logoutCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/game/sdk/FYGameSDK;->initSDK(Landroid/app/Activity;Lcom/game/sdk/OnSDKInitListener;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public initSDK(Landroid/app/Activity;Lcom/game/sdk/OnSDKInitListener;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "initCallback"    # Lcom/game/sdk/OnSDKInitListener;
    .param p3, "switchAccountCallback"    # Ljava/lang/Runnable;
    .param p4, "logoutCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 269
    iget-boolean v1, p0, Lcom/game/sdk/FYGameSDK;->isInitOk:Z

    if-eqz v1, :cond_0

    .line 290
    :goto_0
    return-void

    .line 273
    :cond_0
    sput-object p1, Lcom/game/sdk/domain/GoagalInfo;->tempActivity:Landroid/app/Activity;

    .line 274
    iput-object p1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    .line 275
    iput-object p3, p0, Lcom/game/sdk/FYGameSDK;->switchCallBack:Ljava/lang/Runnable;

    .line 276
    iput-object p4, p0, Lcom/game/sdk/FYGameSDK;->alogout:Ljava/lang/Runnable;

    .line 277
    sput-object p1, Lcom/game/sdk/domain/GoagalInfo;->initActivity:Landroid/app/Activity;

    .line 278
    sput-object p4, Lcom/game/sdk/domain/GoagalInfo;->loginoutRunnable:Ljava/lang/Runnable;

    .line 279
    iput-object p2, p0, Lcom/game/sdk/FYGameSDK;->initCallback:Lcom/game/sdk/OnSDKInitListener;

    .line 282
    invoke-direct {p0}, Lcom/game/sdk/FYGameSDK;->preInit()V

    .line 287
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/game/sdk/ui/InitActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 289
    const-string v1, "anim"

    const-string v2, "fysdk_init_enter"

    invoke-static {p1, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "anim"

    const-string v3, "fysdk_init_exit"

    invoke-static {p1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public initSDK(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "logoutCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    .line 238
    iput-object p2, p0, Lcom/game/sdk/FYGameSDK;->alogout:Ljava/lang/Runnable;

    .line 239
    invoke-virtual {p0}, Lcom/game/sdk/FYGameSDK;->init()V

    .line 240
    return-void
.end method

.method public isInitOk()Z
    .locals 1

    .prologue
    .line 831
    iget-boolean v0, p0, Lcom/game/sdk/FYGameSDK;->isInitOk:Z

    return v0
.end method

.method public isOpenLogout()Z
    .locals 1

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/game/sdk/FYGameSDK;->isOpenLogout:Z

    return v0
.end method

.method public login(Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isShowQuikLogin"    # Z
    .param p3, "loginlistener"    # Lcom/game/sdk/domain/OnLoginListener;

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 318
    sget-boolean v3, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    if-eqz v3, :cond_0

    .line 436
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/game/sdk/FYGameSDK;->isInitOk()Z

    move-result v3

    if-nez v3, :cond_1

    .line 325
    const-string v3, "\u91cd\u65b0\u521d\u59cb\u5316..."

    iput-object v3, p0, Lcom/game/sdk/FYGameSDK;->initMsg:Ljava/lang/String;

    .line 326
    const/4 v3, 0x0

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/game/sdk/FYGameSDK;->reinit(Lcom/game/sdk/OnSDKInitListener;Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V

    goto :goto_0

    .line 330
    :cond_1
    invoke-static {p1}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 331
    iget-object v3, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v4, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v3, v4}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_2
    invoke-static {p1}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v3

    invoke-static {p1}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/game/sdk/utils/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 374
    invoke-virtual {p0}, Lcom/game/sdk/FYGameSDK;->getLastUserInfo()Lcom/game/sdk/domain/UserInfo;

    move-result-object v0

    .line 375
    .local v0, "currentUserInfo":Lcom/game/sdk/domain/UserInfo;
    if-eqz v0, :cond_3

    .line 376
    sput-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 377
    sput v7, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 382
    :cond_3
    sput-object p3, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    .line 384
    iget-object v3, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v3

    const-string v4, "is_auto_login"

    invoke-virtual {v3, v4, v5}, Lcom/game/sdk/utils/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 386
    .local v1, "isAutoLogin":Z
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 387
    invoke-static {p1}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v3

    const-string v4, "is_auto_login"

    invoke-virtual {v3, v4, v5}, Lcom/game/sdk/utils/PreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 389
    sput-boolean v6, Lcom/game/sdk/domain/GoagalInfo;->isChangeAccount:Z

    .line 390
    new-instance v3, Lcom/game/sdk/view/LoginInDialog;

    iget-object v4, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/game/sdk/view/LoginInDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/game/sdk/FYGameSDK;->autoLoginDialog:Lcom/game/sdk/view/LoginInDialog;

    .line 391
    iget-object v3, p0, Lcom/game/sdk/FYGameSDK;->autoLoginDialog:Lcom/game/sdk/view/LoginInDialog;

    invoke-virtual {v3, v6}, Lcom/game/sdk/view/LoginInDialog;->setCanceledOnTouchOutside(Z)V

    .line 392
    iget-object v3, p0, Lcom/game/sdk/FYGameSDK;->autoLoginDialog:Lcom/game/sdk/view/LoginInDialog;

    invoke-virtual {v3}, Lcom/game/sdk/view/LoginInDialog;->show()V

    .line 394
    iget-object v3, p0, Lcom/game/sdk/FYGameSDK;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/game/sdk/FYGameSDK$3;

    invoke-direct {v4, p0}, Lcom/game/sdk/FYGameSDK$3;-><init>(Lcom/game/sdk/FYGameSDK;)V

    .line 400
    const-wide/16 v6, 0x7d0

    .line 394
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 403
    :cond_4
    const/4 v2, 0x0

    .line 405
    .local v2, "login_int":Landroid/content/Intent;
    sget v3, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    if-nez v3, :cond_5

    .line 406
    invoke-static {}, Lcom/game/sdk/utils/EmulatorCheckUtil;->isEmulator()Z

    move-result v3

    sput-boolean v3, Lcom/game/sdk/domain/GoagalInfo;->isEmulator:Z

    .line 407
    sget-boolean v3, Lcom/game/sdk/domain/GoagalInfo;->isEmulator:Z

    if-eqz v3, :cond_7

    .line 408
    sput v6, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 409
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "login_int":Landroid/content/Intent;
    const-class v3, Lcom/game/sdk/ui/LoginActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    .restart local v2    # "login_int":Landroid/content/Intent;
    :cond_5
    :goto_1
    sget v3, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    if-ne v3, v7, :cond_6

    .line 429
    sput v6, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 430
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "login_int":Landroid/content/Intent;
    const-class v3, Lcom/game/sdk/ui/LoginActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    .restart local v2    # "login_int":Landroid/content/Intent;
    :cond_6
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 434
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 412
    :cond_7
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v3, :cond_8

    .line 413
    sput v6, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 414
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "login_int":Landroid/content/Intent;
    const-class v3, Lcom/game/sdk/ui/LoginActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    .restart local v2    # "login_int":Landroid/content/Intent;
    goto :goto_1

    .line 417
    :cond_8
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v3, :cond_9

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v3, v3, Lcom/game/sdk/domain/InItInfo;->isMqr:I

    if-ne v3, v5, :cond_9

    .line 418
    sput v5, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 419
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "login_int":Landroid/content/Intent;
    const-class v3, Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 420
    .restart local v2    # "login_int":Landroid/content/Intent;
    goto :goto_1

    .line 421
    :cond_9
    sput v6, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 422
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "login_int":Landroid/content/Intent;
    const-class v3, Lcom/game/sdk/ui/LoginActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v2    # "login_int":Landroid/content/Intent;
    goto :goto_1
.end method

.method public loginSuccess()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 522
    new-instance v0, Lcom/game/sdk/domain/LogincallBack;

    invoke-direct {v0}, Lcom/game/sdk/domain/LogincallBack;-><init>()V

    .line 524
    .local v0, "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v1, v1, Lcom/game/sdk/domain/UserInfo;->newSdkReg:I

    if-nez v1, :cond_1

    .line 525
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    .line 526
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v1, v1, Lcom/game/sdk/domain/UserInfo;->cpNotice:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->fixName:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 527
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->fixName:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    .line 533
    :cond_0
    :goto_0
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/domain/LogincallBack;->userId:Ljava/lang/String;

    .line 534
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v1, v1, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/game/sdk/domain/LogincallBack;->isBindPhone:Z

    .line 535
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v4, v1, Lcom/game/sdk/domain/UserInfo;->logintime:J

    iput-wide v4, v0, Lcom/game/sdk/domain/LogincallBack;->logintime:J

    .line 536
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/domain/LogincallBack;->sign:Ljava/lang/String;

    .line 539
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v1, v1, Lcom/game/sdk/domain/UserInfo;->isAuthenticated:I

    if-nez v1, :cond_3

    :goto_2
    iput-boolean v3, v0, Lcom/game/sdk/domain/LogincallBack;->isAuthenticated:Z

    .line 540
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->birthday:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/domain/LogincallBack;->birthday:Ljava/lang/String;

    .line 542
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v1, v0}, Lcom/game/sdk/domain/OnLoginListener;->loginSuccess(Lcom/game/sdk/domain/LogincallBack;)V

    .line 545
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    invoke-virtual {v1, v2, v3}, Lcom/game/sdk/utils/PreferenceUtil;->putInt(Ljava/lang/String;I)V

    .line 546
    return-void

    .line 530
    :cond_1
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v1, v3

    .line 534
    goto :goto_1

    :cond_3
    move v3, v2

    .line 539
    goto :goto_2
.end method

.method public openLogout()V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->alogout:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 812
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/game/sdk/FYGameSDK;->isOpenLogout:Z

    .line 814
    :cond_0
    return-void
.end method

.method public pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/domain/OnPaymentListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "roleid"    # Ljava/lang/String;
    .param p3, "money"    # Ljava/lang/String;
    .param p4, "serverid"    # Ljava/lang/String;
    .param p5, "productname"    # Ljava/lang/String;
    .param p6, "productdesc"    # Ljava/lang/String;
    .param p7, "attach"    # Ljava/lang/String;
    .param p8, "paymentListener"    # Lcom/game/sdk/domain/OnPaymentListener;

    .prologue
    .line 671
    invoke-static {p1}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 672
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v3, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 702
    :goto_0
    return-void

    .line 676
    :cond_0
    sget-boolean v2, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    if-nez v2, :cond_1

    .line 677
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v3, "\u8bf7\u5148\u767b\u5f55"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 681
    :cond_1
    if-eqz p3, :cond_2

    const-string v2, ""

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p3}, Lorg/apache/commons/lang/math/NumberUtils;->isNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 682
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v3, "\u8bf7\u8f93\u5165\u91d1\u989d\uff0c\u91d1\u989d\u4e3a\u6570\u5b57"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 686
    :cond_3
    sput-object p8, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    .line 688
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 690
    .local v0, "moneys":F
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/game/sdk/ui/PayActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 691
    .local v1, "pay_int":Landroid/content/Intent;
    sput-object p8, Lcom/game/sdk/ui/PayActivity;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    .line 692
    const-string v2, "roleid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    const-string v2, "money"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 694
    const-string v2, "serverid"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    const-string v2, "productname"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    const-string v2, "productdesc"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const-string v2, "fcallbackurl"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    const-string v2, "attach"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 700
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 701
    sget-object v2, Lcom/game/sdk/FYGameSDK;->instance:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v2}, Lcom/game/sdk/FYGameSDK;->removeFloatButton()V

    goto :goto_0
.end method

.method public pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/domain/OnPaymentListener;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "roleid"    # Ljava/lang/String;
    .param p3, "money"    # Ljava/lang/String;
    .param p4, "serverid"    # Ljava/lang/String;
    .param p5, "productname"    # Ljava/lang/String;
    .param p6, "productdesc"    # Ljava/lang/String;
    .param p7, "fcallbackurl"    # Ljava/lang/String;
    .param p8, "attach"    # Ljava/lang/String;
    .param p9, "paymentListener"    # Lcom/game/sdk/domain/OnPaymentListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 646
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/game/sdk/FYGameSDK;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/domain/OnPaymentListener;)V

    .line 647
    return-void
.end method

.method public recycle(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 780
    const-string v0, "\u56de\u6536\u8d44\u6e90"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->switchCallBack:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->switchCallBack:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->alogout:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 787
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->alogout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 790
    :cond_1
    invoke-virtual {p0}, Lcom/game/sdk/FYGameSDK;->removeFloatButton()V

    .line 792
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 793
    const/4 v0, 0x0

    sput-boolean v0, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 794
    return-void
.end method

.method public removeFloatButton()V
    .locals 2

    .prologue
    .line 762
    const-string v0, "\u79fb\u9664\u60ac\u6d6e\u6309\u94ae"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 763
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v0, v0, Lcom/game/sdk/domain/InItInfo;->isPostToToutiaoSdk:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 764
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ss/android/common/applog/TeaAgent;->onPause(Landroid/content/Context;)V

    .line 765
    const-string v0, "TeaAgent onPause"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->getInstance(Landroid/content/Context;)Lcom/game/sdk/floatwindow/FloatViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->removeFloat()V

    .line 770
    return-void
.end method

.method public setCloseListener(Lcom/game/sdk/FYGameSDK$InitCloseListener;)V
    .locals 0
    .param p1, "closeListener"    # Lcom/game/sdk/FYGameSDK$InitCloseListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/game/sdk/FYGameSDK;->closeListener:Lcom/game/sdk/FYGameSDK$InitCloseListener;

    .line 86
    return-void
.end method

.method public setInitOk(Z)V
    .locals 0
    .param p1, "isInitOk"    # Z

    .prologue
    .line 835
    iput-boolean p1, p0, Lcom/game/sdk/FYGameSDK;->isInitOk:Z

    .line 836
    return-void
.end method

.method public switchUser()V
    .locals 3

    .prologue
    .line 720
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/game/sdk/FYGameSDK;->recycle(I)V

    .line 723
    invoke-virtual {p0}, Lcom/game/sdk/FYGameSDK;->isOpenLogout()Z

    move-result v1

    if-nez v1, :cond_0

    .line 724
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-class v2, Lcom/game/sdk/ui/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 725
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 726
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 728
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
