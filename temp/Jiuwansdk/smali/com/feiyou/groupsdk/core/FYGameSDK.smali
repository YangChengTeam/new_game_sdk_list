.class public Lcom/feiyou/groupsdk/core/FYGameSDK;
.super Ljava/lang/Object;
.source "FYGameSDK.java"


# static fields
.field private static fyGameSDK:Lcom/feiyou/groupsdk/core/FYGameSDK;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFyLoginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

.field private mInitCallback:Lcom/feiyou/groupsdk/core/FYInitCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/feiyou/groupsdk/core/FYGameSDK;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/feiyou/groupsdk/core/FYGameSDK;)Lcom/feiyou/groupsdk/core/FYLoginCallback;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mFyLoginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/feiyou/groupsdk/core/FYGameSDK;)Lcom/feiyou/groupsdk/core/FYInitCallback;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mInitCallback:Lcom/feiyou/groupsdk/core/FYInitCallback;

    return-object v0
.end method

.method public static defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/feiyou/groupsdk/core/FYGameSDK;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/feiyou/groupsdk/core/FYGameSDK;->fyGameSDK:Lcom/feiyou/groupsdk/core/FYGameSDK;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/feiyou/groupsdk/core/FYGameSDK;

    invoke-direct {v0}, Lcom/feiyou/groupsdk/core/FYGameSDK;-><init>()V

    sput-object v0, Lcom/feiyou/groupsdk/core/FYGameSDK;->fyGameSDK:Lcom/feiyou/groupsdk/core/FYGameSDK;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    sget-object v0, Lcom/feiyou/groupsdk/core/FYGameSDK;->fyGameSDK:Lcom/feiyou/groupsdk/core/FYGameSDK;

    return-object v0

    .line 32
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
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    iget-object v1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/feiyou/groupsdk/core/FYGameSDK$7;

    invoke-direct {v2, p0}, Lcom/feiyou/groupsdk/core/FYGameSDK$7;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK;)V

    .line 273
    new-instance v3, Lcom/feiyou/groupsdk/core/FYGameSDK$8;

    invoke-direct {v3, p0}, Lcom/feiyou/groupsdk/core/FYGameSDK$8;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK;)V

    .line 263
    invoke-virtual {v0, v1, v2, v3}, Lcom/game91/framework/NineGame;->doExit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    .line 284
    :cond_0
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    const-string v0, "2.3.3"

    return-object v0
.end method

.method public hideFloatButton()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->onPause(Landroid/app/Activity;)V

    .line 328
    :cond_0
    return-void
.end method

.method public initSDK(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYInitCallback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "initCallback"    # Lcom/feiyou/groupsdk/core/FYInitCallback;

    .prologue
    .line 53
    iput-object p2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mInitCallback:Lcom/feiyou/groupsdk/core/FYInitCallback;

    .line 54
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    .line 56
    invoke-static {p1}, Lcom/feiyou/groupsdk/core/ChannelInfo;->getChannelInfo(Landroid/app/Activity;)V

    .line 58
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/game91/framework/NineGame;->onCreate(Landroid/app/Activity;)V

    .line 61
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    new-instance v1, Lcom/feiyou/groupsdk/core/FYGameSDK$1;

    invoke-direct {v1, p0, p2}, Lcom/feiyou/groupsdk/core/FYGameSDK$1;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Lcom/feiyou/groupsdk/core/FYInitCallback;)V

    .line 68
    new-instance v2, Lcom/feiyou/groupsdk/core/FYGameSDK$2;

    invoke-direct {v2, p0, p2}, Lcom/feiyou/groupsdk/core/FYGameSDK$2;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Lcom/feiyou/groupsdk/core/FYInitCallback;)V

    .line 61
    invoke-virtual {v0, p1, v1, v2}, Lcom/game91/framework/NineGame;->doInit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    .line 78
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    new-instance v1, Lcom/feiyou/groupsdk/core/FYGameSDK$3;

    invoke-direct {v1, p0, p2}, Lcom/feiyou/groupsdk/core/FYGameSDK$3;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Lcom/feiyou/groupsdk/core/FYInitCallback;)V

    invoke-virtual {v0, v1}, Lcom/game91/framework/NineGame;->setLogoutCallback(Lcom/game91/framework/callback/Callback;)V

    .line 90
    return-void
.end method

.method public login(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "loginCallback"    # Lcom/feiyou/groupsdk/core/FYLoginCallback;

    .prologue
    .line 106
    iput-object p2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mFyLoginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

    .line 107
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    new-instance v1, Lcom/feiyou/groupsdk/core/FYGameSDK$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/feiyou/groupsdk/core/FYGameSDK$4;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V

    .line 135
    new-instance v2, Lcom/feiyou/groupsdk/core/FYGameSDK$5;

    invoke-direct {v2, p0, p2}, Lcom/feiyou/groupsdk/core/FYGameSDK$5;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V

    .line 107
    invoke-virtual {v0, p1, v1, v2}, Lcom/game91/framework/NineGame;->doLogin(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    .line 151
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 397
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/game91/framework/NineGame;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 398
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/app/Activity;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 385
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/game91/framework/NineGame;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 386
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 331
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/game91/framework/NineGame;->onCreate(Landroid/app/Activity;)V

    .line 332
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 371
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/game91/framework/NineGame;->onDestroy(Landroid/app/Activity;)V

    .line 372
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 378
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/game91/framework/NineGame;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 379
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 357
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/game91/framework/NineGame;->onPause(Landroid/app/Activity;)V

    .line 358
    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;
    .param p4, "grantResults"    # [I

    .prologue
    .line 391
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/game91/framework/NineGame;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 392
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 344
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/game91/framework/NineGame;->onRestart(Landroid/app/Activity;)V

    .line 345
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 337
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/game91/framework/NineGame;->onResume(Landroid/app/Activity;)V

    .line 338
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 351
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/game91/framework/NineGame;->onStart(Landroid/app/Activity;)V

    .line 352
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 364
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/game91/framework/NineGame;->onStop(Landroid/app/Activity;)V

    .line 365
    return-void
.end method

.method public openLogout()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    iget-object v1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game91/framework/NineGame;->doLogout(Landroid/app/Activity;)V

    .line 246
    :cond_0
    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYPayInfo;Lcom/feiyou/groupsdk/core/FYPayCallback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fyPayInfo"    # Lcom/feiyou/groupsdk/core/FYPayInfo;
    .param p3, "payCallback"    # Lcom/feiyou/groupsdk/core/FYPayCallback;

    .prologue
    .line 166
    new-instance v0, Lcom/feiyou/groupsdk/core/FYGameSDK$6;

    invoke-direct {v0, p0, p1, p3}, Lcom/feiyou/groupsdk/core/FYGameSDK$6;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYPayCallback;)V

    invoke-static {p1, p2, v0}, Lcom/feiyou/groupsdk/core/ChannelInfo;->pay(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYPayInfo;Lcom/feiyou/groupsdk/core/FYPayCallback;)V

    .line 236
    return-void
.end method

.method public showFloatButton()V
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    iget-object v1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/game91/framework/core/IWindow$WindowType;->UserCenter:Lcom/game91/framework/core/IWindow$WindowType;

    invoke-virtual {v0, v1, v2}, Lcom/game91/framework/NineGame;->show(Landroid/app/Activity;Lcom/game91/framework/core/IWindow$WindowType;)V

    .line 295
    :cond_0
    return-void
.end method

.method public submitRole(Lcom/feiyou/groupsdk/core/RoleInfo;)V
    .locals 4
    .param p1, "roleInfo"    # Lcom/feiyou/groupsdk/core/RoleInfo;

    .prologue
    .line 303
    new-instance v0, Lcom/game91/framework/callback/RoleInfo;

    invoke-direct {v0}, Lcom/game91/framework/callback/RoleInfo;-><init>()V

    .line 304
    .local v0, "info":Lcom/game91/framework/callback/RoleInfo;
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->getDataType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/game91/framework/callback/RoleInfo;->setDataType(I)Lcom/game91/framework/callback/RoleInfo;

    move-result-object v1

    .line 305
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->getCpUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/game91/framework/callback/RoleInfo;->setCpUid(Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;

    move-result-object v1

    .line 306
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/game91/framework/callback/RoleInfo;->setRoleID(Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;

    move-result-object v1

    .line 307
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->getRoleLevel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/game91/framework/callback/RoleInfo;->setRoleLevel(Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;

    move-result-object v1

    .line 308
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/game91/framework/callback/RoleInfo;->setRoleName(Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;

    move-result-object v1

    .line 309
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->getServerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/game91/framework/callback/RoleInfo;->setServerID(Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;

    move-result-object v1

    .line 310
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->getServerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/game91/framework/callback/RoleInfo;->setServerName(Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;

    move-result-object v1

    .line 311
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->getVip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/game91/framework/callback/RoleInfo;->setVip(Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;

    move-result-object v1

    .line 312
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->getUnion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/game91/framework/callback/RoleInfo;->setUnion(Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;

    move-result-object v1

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/game91/framework/callback/RoleInfo;->setCreateRoleTime(J)Lcom/game91/framework/callback/RoleInfo;

    .line 314
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "submitRole"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/game91/framework/NineGame;->submitRoleInfo(Lcom/game91/framework/callback/RoleInfo;)V

    .line 316
    return-void
.end method

.method public switchUser()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 254
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v0

    iget-object v1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game91/framework/NineGame;->doLogout(Landroid/app/Activity;)V

    .line 257
    :cond_0
    return-void
.end method
