.class public Lcom/feiyou/groupsdk/core/FYGameSDK;
.super Ljava/lang/Object;
.source "FYGameSDK.java"


# static fields
.field private static fyGameSDK:Lcom/feiyou/groupsdk/core/FYGameSDK;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/feiyou/groupsdk/core/FYGameSDK;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/feiyou/groupsdk/core/FYGameSDK;->fyGameSDK:Lcom/feiyou/groupsdk/core/FYGameSDK;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/feiyou/groupsdk/core/FYGameSDK;

    invoke-direct {v0}, Lcom/feiyou/groupsdk/core/FYGameSDK;-><init>()V

    sput-object v0, Lcom/feiyou/groupsdk/core/FYGameSDK;->fyGameSDK:Lcom/feiyou/groupsdk/core/FYGameSDK;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    sget-object v0, Lcom/feiyou/groupsdk/core/FYGameSDK;->fyGameSDK:Lcom/feiyou/groupsdk/core/FYGameSDK;

    return-object v0

    .line 33
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
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->exitSDK()V

    .line 267
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    const-string v0, "2.3.6"

    return-object v0
.end method

.method public hideFloatButton()V
    .locals 1

    .prologue
    .line 280
    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->removeFloatButton()V

    .line 281
    return-void
.end method

.method public initSDK(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYInitCallback;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "initCallback"    # Lcom/feiyou/groupsdk/core/FYInitCallback;

    .prologue
    .line 52
    invoke-static {p1}, Lcom/feiyou/groupsdk/core/ChannelInfo;->getChannelInfo(Landroid/app/Activity;)V

    .line 54
    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/feiyou/groupsdk/core/FYGameSDK$1;

    invoke-direct {v1, p0, p2}, Lcom/feiyou/groupsdk/core/FYGameSDK$1;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Lcom/feiyou/groupsdk/core/FYInitCallback;)V

    .line 67
    new-instance v2, Lcom/feiyou/groupsdk/core/FYGameSDK$2;

    invoke-direct {v2, p0, p2}, Lcom/feiyou/groupsdk/core/FYGameSDK$2;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Lcom/feiyou/groupsdk/core/FYInitCallback;)V

    .line 73
    new-instance v3, Lcom/feiyou/groupsdk/core/FYGameSDK$3;

    invoke-direct {v3, p0, p2}, Lcom/feiyou/groupsdk/core/FYGameSDK$3;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Lcom/feiyou/groupsdk/core/FYInitCallback;)V

    .line 54
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/game/sdk/FYGameSDK;->initSDK(Landroid/app/Activity;Lcom/game/sdk/OnSDKInitListener;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public login(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "loginCallback"    # Lcom/feiyou/groupsdk/core/FYLoginCallback;

    .prologue
    .line 93
    const-string v0, "TAG"

    const-string v1, "login"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    const/4 v1, 0x0

    .line 95
    new-instance v2, Lcom/feiyou/groupsdk/core/FYGameSDK$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/feiyou/groupsdk/core/FYGameSDK$4;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V

    .line 94
    invoke-virtual {v0, p1, v1, v2}, Lcom/game/sdk/FYGameSDK;->login(Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V

    .line 120
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 246
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/app/Activity;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 236
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 203
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 227
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 231
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 219
    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;
    .param p4, "grantResults"    # [I

    .prologue
    .line 241
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 211
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 207
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 215
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 223
    return-void
.end method

.method public openLogout()V
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->openLogout()V

    .line 253
    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYPayInfo;Lcom/feiyou/groupsdk/core/FYPayCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "payInfo"    # Lcom/feiyou/groupsdk/core/FYPayInfo;
    .param p3, "payCallback"    # Lcom/feiyou/groupsdk/core/FYPayCallback;

    .prologue
    .line 134
    const-string v0, "TAG"

    const-string v1, "pay"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Lcom/feiyou/groupsdk/core/FYGameSDK$5;

    invoke-direct {v0, p0, p1, p3}, Lcom/feiyou/groupsdk/core/FYGameSDK$5;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYPayCallback;)V

    invoke-static {p1, p2, v0}, Lcom/feiyou/groupsdk/core/ChannelInfo;->pay(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYPayInfo;Lcom/feiyou/groupsdk/core/FYPayCallback;)V

    .line 191
    return-void
.end method

.method public showFloatButton()V
    .locals 1

    .prologue
    .line 273
    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->createFloatButton()V

    .line 274
    return-void
.end method

.method public submitRole(Lcom/feiyou/groupsdk/core/RoleInfo;)V
    .locals 3
    .param p1, "roleInfo"    # Lcom/feiyou/groupsdk/core/RoleInfo;

    .prologue
    .line 198
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "role: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/RoleInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public switchUser()V
    .locals 1

    .prologue
    .line 259
    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->switchUser()V

    .line 260
    return-void
.end method
