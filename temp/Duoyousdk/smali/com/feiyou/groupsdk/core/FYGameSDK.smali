.class public Lcom/feiyou/groupsdk/core/FYGameSDK;
.super Ljava/lang/Object;
.source "FYGameSDK.java"


# static fields
.field private static fyGameSDK:Lcom/feiyou/groupsdk/core/FYGameSDK;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFyLoginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

.field private mInitCallback:Lcom/feiyou/groupsdk/core/FYInitCallback;

.field private mRoleInfo:Lcom/feiyou/groupsdk/core/RoleInfo;

.field private mSwithUser:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/feiyou/groupsdk/core/FYGameSDK;)Lcom/feiyou/groupsdk/core/FYLoginCallback;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mFyLoginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/feiyou/groupsdk/core/FYGameSDK;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mSwithUser:Z

    return v0
.end method

.method static synthetic access$2(Lcom/feiyou/groupsdk/core/FYGameSDK;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/feiyou/groupsdk/core/FYGameSDK;)Lcom/feiyou/groupsdk/core/FYInitCallback;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mInitCallback:Lcom/feiyou/groupsdk/core/FYInitCallback;

    return-object v0
.end method

.method public static defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;
    .locals 2

    .prologue
    .line 40
    const-class v1, Lcom/feiyou/groupsdk/core/FYGameSDK;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/feiyou/groupsdk/core/FYGameSDK;->fyGameSDK:Lcom/feiyou/groupsdk/core/FYGameSDK;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/feiyou/groupsdk/core/FYGameSDK;

    invoke-direct {v0}, Lcom/feiyou/groupsdk/core/FYGameSDK;-><init>()V

    sput-object v0, Lcom/feiyou/groupsdk/core/FYGameSDK;->fyGameSDK:Lcom/feiyou/groupsdk/core/FYGameSDK;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    sget-object v0, Lcom/feiyou/groupsdk/core/FYGameSDK;->fyGameSDK:Lcom/feiyou/groupsdk/core/FYGameSDK;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public exitSDK()V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mRoleInfo:Lcom/feiyou/groupsdk/core/RoleInfo;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mRoleInfo:Lcom/feiyou/groupsdk/core/RoleInfo;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/RoleInfo;->setDataType(I)V

    .line 294
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mRoleInfo:Lcom/feiyou/groupsdk/core/RoleInfo;

    invoke-virtual {p0, v0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->submitRole(Lcom/feiyou/groupsdk/core/RoleInfo;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 297
    invoke-static {}, Lcom/duoyou/gamesdk/openapi/DyApiImpl;->getDyApi()Lcom/duoyou/gamesdk/openapi/IDyApi;

    move-result-object v0

    iget-object v1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/feiyou/groupsdk/core/FYGameSDK$3;

    invoke-direct {v2, p0}, Lcom/feiyou/groupsdk/core/FYGameSDK$3;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK;)V

    invoke-interface {v0, v1, v2}, Lcom/duoyou/gamesdk/openapi/IDyApi;->exist(Landroid/app/Activity;Lcom/duoyou/gamesdk/openapi/OnExitCallback;)V

    .line 311
    :cond_1
    return-void
.end method

.method public finish(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 449
    invoke-static {}, Lcom/duoyou/gamesdk/openapi/DyApiImpl;->getDyApi()Lcom/duoyou/gamesdk/openapi/IDyApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/duoyou/gamesdk/openapi/IDyApi;->onFinish(Landroid/app/Activity;)V

    .line 450
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    invoke-static {}, Lcom/duoyou/gamesdk/openapi/DyApiImpl;->getDyApi()Lcom/duoyou/gamesdk/openapi/IDyApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/duoyou/gamesdk/openapi/IDyApi;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideFloatButton()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->onPause(Landroid/app/Activity;)V

    .line 386
    :cond_0
    return-void
.end method

.method public initSDK(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYInitCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "initCallback"    # Lcom/feiyou/groupsdk/core/FYInitCallback;

    .prologue
    .line 59
    iput-object p2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mInitCallback:Lcom/feiyou/groupsdk/core/FYInitCallback;

    .line 60
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    .line 61
    invoke-virtual {p2}, Lcom/feiyou/groupsdk/core/FYInitCallback;->initSuccess()V

    .line 63
    invoke-static {p1}, Lcom/feiyou/groupsdk/core/ChannelInfo;->getChannelInfo(Landroid/app/Activity;)V

    .line 65
    invoke-static {}, Lcom/duoyou/gamesdk/openapi/DyApiImpl;->getDyApi()Lcom/duoyou/gamesdk/openapi/IDyApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/duoyou/gamesdk/openapi/IDyApi;->onCreate(Landroid/app/Activity;)V

    .line 68
    invoke-static {}, Lcom/duoyou/gamesdk/openapi/DyApiImpl;->getDyApi()Lcom/duoyou/gamesdk/openapi/IDyApi;

    move-result-object v0

    new-instance v1, Lcom/feiyou/groupsdk/core/FYGameSDK$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/feiyou/groupsdk/core/FYGameSDK$1;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYInitCallback;)V

    invoke-interface {v0, v1}, Lcom/duoyou/gamesdk/openapi/IDyApi;->setLoginCallback(Lcom/duoyou/gamesdk/openapi/OnLoginCallback;)V

    .line 141
    return-void
.end method

.method public login(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "loginCallback"    # Lcom/feiyou/groupsdk/core/FYLoginCallback;

    .prologue
    .line 153
    iput-object p2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mFyLoginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

    .line 155
    invoke-static {}, Lcom/duoyou/gamesdk/openapi/DyApiImpl;->getDyApi()Lcom/duoyou/gamesdk/openapi/IDyApi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/duoyou/gamesdk/openapi/IDyApi;->login(Landroid/app/Activity;Z)V

    .line 158
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 446
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/app/Activity;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 436
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 390
    invoke-static {}, Lcom/duoyou/gamesdk/openapi/DyApiImpl;->getDyApi()Lcom/duoyou/gamesdk/openapi/IDyApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/duoyou/gamesdk/openapi/IDyApi;->onCreate(Landroid/app/Activity;)V

    .line 391
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 421
    invoke-static {}, Lcom/duoyou/gamesdk/openapi/DyApiImpl;->getDyApi()Lcom/duoyou/gamesdk/openapi/IDyApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/duoyou/gamesdk/openapi/IDyApi;->onDestroy(Landroid/app/Activity;)V

    .line 423
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 429
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 411
    invoke-static {}, Lcom/duoyou/gamesdk/openapi/DyApiImpl;->getDyApi()Lcom/duoyou/gamesdk/openapi/IDyApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/duoyou/gamesdk/openapi/IDyApi;->onPause(Landroid/app/Activity;)V

    .line 412
    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;
    .param p4, "grantResults"    # [I

    .prologue
    .line 441
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 402
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 396
    invoke-static {}, Lcom/duoyou/gamesdk/openapi/DyApiImpl;->getDyApi()Lcom/duoyou/gamesdk/openapi/IDyApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/duoyou/gamesdk/openapi/IDyApi;->onResume(Landroid/app/Activity;)V

    .line 397
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 407
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 416
    return-void
.end method

.method public openLogout()V
    .locals 1

    .prologue
    .line 275
    invoke-static {}, Lcom/duoyou/gamesdk/openapi/DyApiImpl;->getDyApi()Lcom/duoyou/gamesdk/openapi/IDyApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/duoyou/gamesdk/openapi/IDyApi;->loginOut()V

    .line 276
    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYPayInfo;Lcom/feiyou/groupsdk/core/FYPayCallback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fyPayInfo"    # Lcom/feiyou/groupsdk/core/FYPayInfo;
    .param p3, "payCallback"    # Lcom/feiyou/groupsdk/core/FYPayCallback;

    .prologue
    .line 173
    new-instance v0, Lcom/feiyou/groupsdk/core/FYGameSDK$2;

    invoke-direct {v0, p0, p3}, Lcom/feiyou/groupsdk/core/FYGameSDK$2;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Lcom/feiyou/groupsdk/core/FYPayCallback;)V

    invoke-static {p1, p2, v0}, Lcom/feiyou/groupsdk/core/ChannelInfo;->pay(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYPayInfo;Lcom/feiyou/groupsdk/core/FYPayCallback;)V

    .line 268
    return-void
.end method

.method public showFloatButton()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public submitRole(Lcom/feiyou/groupsdk/core/RoleInfo;)V
    .locals 6
    .param p1, "roleInfo"    # Lcom/feiyou/groupsdk/core/RoleInfo;

    .prologue
    const/4 v5, 0x0

    .line 331
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mRoleInfo:Lcom/feiyou/groupsdk/core/RoleInfo;

    .line 332
    new-instance v1, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;

    invoke-direct {v1}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;-><init>()V

    .line 333
    .local v1, "dyRoleInfo":Lcom/duoyou/gamesdk/openapi/DyRoleInfo;
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->getDataType()I

    move-result v3

    .line 334
    .local v3, "type":I
    const-string v0, ""

    .line 335
    .local v0, "dataType":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 349
    :goto_0
    :pswitch_0
    invoke-virtual {v1, v0}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->setType(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->getServerID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->setZoneId(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->getServerID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->setZoneName(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->setRoleId(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->setRoleName(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v1, v5}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->setProfessionId(I)V

    .line 355
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->getUnion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->setProfession(Ljava/lang/String;)V

    .line 356
    const-string v4, "\u65e0"

    invoke-virtual {v1, v4}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->setGender(Ljava/lang/String;)V

    .line 359
    :try_start_0
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->getRoleLevel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->setRoleLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_1
    invoke-virtual {v1, v5}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->setPower(I)V

    .line 366
    :try_start_1
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->getVip()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->setVip(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 370
    :goto_2
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->setTurn(I)V

    .line 371
    invoke-virtual {v1, v5}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->setBalanceId(I)V

    .line 372
    const-string v4, "\u91d1\u5e01"

    invoke-virtual {v1, v4}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->setBalanceName(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1, v5}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->setBalanceNum(I)V

    .line 375
    invoke-static {}, Lcom/duoyou/gamesdk/openapi/DyApiImpl;->getDyApi()Lcom/duoyou/gamesdk/openapi/IDyApi;

    move-result-object v4

    iget-object v5, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    invoke-interface {v4, v5, v1}, Lcom/duoyou/gamesdk/openapi/IDyApi;->uploadRoleInfo(Landroid/content/Context;Lcom/duoyou/gamesdk/openapi/DyRoleInfo;)V

    .line 376
    return-void

    .line 337
    :pswitch_1
    const-string v0, "enterServer"

    .line 338
    goto :goto_0

    .line 340
    :pswitch_2
    const-string v0, "levelUp"

    .line 341
    goto :goto_0

    .line 343
    :pswitch_3
    const-string v0, "createRole"

    .line 344
    goto :goto_0

    .line 346
    :pswitch_4
    const-string v0, "exitServer"

    goto :goto_0

    .line 360
    :catch_0
    move-exception v2

    .line 361
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v1, v5}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->setRoleLevel(I)V

    goto :goto_1

    .line 367
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 368
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v1, v5}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->setVip(I)V

    goto :goto_2

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public switchUser()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mSwithUser:Z

    .line 283
    invoke-static {}, Lcom/duoyou/gamesdk/openapi/DyApiImpl;->getDyApi()Lcom/duoyou/gamesdk/openapi/IDyApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/duoyou/gamesdk/openapi/IDyApi;->loginOut()V

    .line 285
    return-void
.end method
