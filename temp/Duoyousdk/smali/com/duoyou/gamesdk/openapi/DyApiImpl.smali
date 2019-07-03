.class public final Lcom/duoyou/gamesdk/openapi/DyApiImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoyou/gamesdk/openapi/IDyApi;


# static fields
.field private static dyApi:Lcom/duoyou/gamesdk/openapi/IDyApi;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDyApi()Lcom/duoyou/gamesdk/openapi/IDyApi;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/openapi/DyApiImpl;->dyApi:Lcom/duoyou/gamesdk/openapi/IDyApi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoyou/gamesdk/openapi/DyApiImpl;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/openapi/DyApiImpl;-><init>()V

    sput-object v0, Lcom/duoyou/gamesdk/openapi/DyApiImpl;->dyApi:Lcom/duoyou/gamesdk/openapi/IDyApi;

    :cond_0
    sget-object v0, Lcom/duoyou/gamesdk/openapi/DyApiImpl;->dyApi:Lcom/duoyou/gamesdk/openapi/IDyApi;

    return-object v0
.end method


# virtual methods
.method public exist(Landroid/app/Activity;Lcom/duoyou/gamesdk/openapi/OnExitCallback;)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/duoyou/gamesdk/a/a;->exist(Landroid/app/Activity;Lcom/duoyou/gamesdk/openapi/OnExitCallback;)V

    return-void
.end method

.method public getScreenOrientation()I
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/a/a;->getScreenOrientation()I

    move-result v0

    return v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/a/a;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Application;)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/a/a;->init(Landroid/app/Application;)V

    return-void
.end method

.method public login(Landroid/app/Activity;Z)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/duoyou/gamesdk/a/a;->login(Landroid/app/Activity;Z)V

    return-void
.end method

.method public loginOut()V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/a/a;->loginOut()V

    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/a/a;->onCreate(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/a/a;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public onFinish(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/a/a;->onFinish(Landroid/app/Activity;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/a/a;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/a/a;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/duoyou/gamesdk/openapi/DyPayInfo;Lcom/duoyou/gamesdk/openapi/OnPayCallback;)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/duoyou/gamesdk/a/a;->pay(Landroid/app/Activity;Lcom/duoyou/gamesdk/openapi/DyPayInfo;Lcom/duoyou/gamesdk/openapi/OnPayCallback;)V

    return-void
.end method

.method public setLoginCallback(Lcom/duoyou/gamesdk/openapi/OnLoginCallback;)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/a/a;->setOnLoginCallback(Lcom/duoyou/gamesdk/openapi/OnLoginCallback;)V

    return-void
.end method

.method public setOnLoginCallback(Lcom/duoyou/gamesdk/openapi/OnLoginCallback;)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/a/a;->setOnLoginCallback(Lcom/duoyou/gamesdk/openapi/OnLoginCallback;)V

    return-void
.end method

.method public setScreenOrientation(I)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/a/a;->setScreenOrientation(I)V

    return-void
.end method

.method public uploadRoleInfo(Landroid/content/Context;Lcom/duoyou/gamesdk/openapi/DyRoleInfo;)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/duoyou/gamesdk/a/a;->uploadRoleInfo(Landroid/content/Context;Lcom/duoyou/gamesdk/openapi/DyRoleInfo;)V

    return-void
.end method
