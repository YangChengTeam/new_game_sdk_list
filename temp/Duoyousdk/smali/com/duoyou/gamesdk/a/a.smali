.class public Lcom/duoyou/gamesdk/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoyou/gamesdk/openapi/IDyApi;


# static fields
.field private static a:Lcom/duoyou/gamesdk/a/a;


# instance fields
.field private b:Lcom/duoyou/gamesdk/openapi/OnLoginCallback;

.field private c:Lcom/duoyou/gamesdk/openapi/OnPayCallback;

.field private d:I

.field private e:Z

.field private f:Landroid/app/Activity;

.field private g:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/duoyou/gamesdk/a/a$1;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/a/a$1;-><init>(Lcom/duoyou/gamesdk/a/a;)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/a/a;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/a/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->f:Landroid/app/Activity;

    return-object v0
.end method

.method public static a()Lcom/duoyou/gamesdk/a/a;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/a/a;->a:Lcom/duoyou/gamesdk/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoyou/gamesdk/a/a;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/a/a;-><init>()V

    sput-object v0, Lcom/duoyou/gamesdk/a/a;->a:Lcom/duoyou/gamesdk/a/a;

    :cond_0
    sget-object v0, Lcom/duoyou/gamesdk/a/a;->a:Lcom/duoyou/gamesdk/a/a;

    return-object v0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/duoyou/gamesdk/a/a$5;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/a/a$5;-><init>(Lcom/duoyou/gamesdk/a/a;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/duoyou/gamesdk/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/a/a;->d()V

    return-void
.end method

.method static synthetic c(Lcom/duoyou/gamesdk/a/a;)Lcom/duoyou/gamesdk/openapi/OnPayCallback;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->c:Lcom/duoyou/gamesdk/openapi/OnPayCallback;

    return-object v0
.end method

.method private d()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->get()Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->destroy()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/duoyou/gamesdk/openapi/OnPayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/a/a;->c:Lcom/duoyou/gamesdk/openapi/OnPayCallback;

    return-void
.end method

.method public a(Lcom/duoyou/gamesdk/openapi/PAY_TYPE;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "message"

    const-string v2, "\u652f\u4ed8\u53d6\u6d88"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/duoyou/gamesdk/a/a;->a(Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Ljava/lang/String;)V

    const-string v0, "\u652f\u4ed8\u53d6\u6d88"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->f:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->f:Landroid/app/Activity;

    new-instance v1, Lcom/duoyou/gamesdk/a/a$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/duoyou/gamesdk/a/a$7;-><init>(Lcom/duoyou/gamesdk/a/a;Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->c:Lcom/duoyou/gamesdk/openapi/OnPayCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->c:Lcom/duoyou/gamesdk/openapi/OnPayCallback;

    invoke-interface {v0, p1, p2}, Lcom/duoyou/gamesdk/openapi/OnPayCallback;->onPayCallback(Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/b/a;->i()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->f:Landroid/app/Activity;

    const-string v1, "is_auto_login_success"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/duoyou/gamesdk/c/c/q;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->b:Lcom/duoyou/gamesdk/openapi/OnLoginCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->b:Lcom/duoyou/gamesdk/openapi/OnLoginCallback;

    invoke-interface {v0, p1}, Lcom/duoyou/gamesdk/openapi/OnLoginCallback;->onLogOut(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "message"

    const-string v2, "\u767b\u5f55\u53d6\u6d88"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoyou/gamesdk/a/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->f:Landroid/app/Activity;

    new-instance v1, Lcom/duoyou/gamesdk/a/a$6;

    invoke-direct {v1, p0, p1}, Lcom/duoyou/gamesdk/a/a$6;-><init>(Lcom/duoyou/gamesdk/a/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/a/a;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "username"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobile"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "username"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mobile"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/duoyou/gamesdk/a/a;->b:Lcom/duoyou/gamesdk/openapi/OnLoginCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/duoyou/gamesdk/a/a;->b:Lcom/duoyou/gamesdk/openapi/OnLoginCallback;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/duoyou/gamesdk/openapi/OnLoginCallback;->onLoginSuccess(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->b:Lcom/duoyou/gamesdk/openapi/OnLoginCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->b:Lcom/duoyou/gamesdk/openapi/OnLoginCallback;

    invoke-interface {v0, v1, v2}, Lcom/duoyou/gamesdk/openapi/OnLoginCallback;->onLoginFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->b:Lcom/duoyou/gamesdk/openapi/OnLoginCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->b:Lcom/duoyou/gamesdk/openapi/OnLoginCallback;

    const-string v1, "-2"

    const-string v2, "json\u89e3\u6790\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Lcom/duoyou/gamesdk/openapi/OnLoginCallback;->onLoginFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/a/a;->e:Z

    return v0
.end method

.method public exist(Landroid/app/Activity;Lcom/duoyou/gamesdk/openapi/OnExitCallback;)V
    .locals 1

    new-instance v0, Lcom/duoyou/gamesdk/a/a$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/duoyou/gamesdk/a/a$4;-><init>(Lcom/duoyou/gamesdk/a/a;Landroid/app/Activity;Lcom/duoyou/gamesdk/openapi/OnExitCallback;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getScreenOrientation()I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/a/a;->d:I

    return v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0.3"

    return-object v0
.end method

.method public init(Landroid/app/Application;)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/d;->a()Lcom/duoyou/gamesdk/c/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/c/d;->b()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/b/a/c;->a(Landroid/app/Application;)V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/d;->a(Landroid/app/Application;)V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/o;->a(Landroid/app/Application;)V

    return-void
.end method

.method public login(Landroid/app/Activity;Z)V
    .locals 1

    new-instance v0, Lcom/duoyou/gamesdk/a/a$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/duoyou/gamesdk/a/a$2;-><init>(Lcom/duoyou/gamesdk/a/a;ZLandroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loginOut()V
    .locals 2

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 3

    iput-object p1, p0, Lcom/duoyou/gamesdk/a/a;->f:Landroid/app/Activity;

    const-string v0, "charge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/c;->a(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/duoyou/gamesdk/c/a/a;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/a/a;-><init>()V

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/a/a;->a()V

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/h;->a()Lcom/duoyou/gamesdk/c/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/c/h;->c()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/b/a;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/b/a;->b()V

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/duoyou/gamesdk/a/a;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/a/a;->d()V

    return-void
.end method

.method public onFinish(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/a/a;->d()V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/a/a;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/a/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/duoyou/gamesdk/openapi/DyPayInfo;Lcom/duoyou/gamesdk/openapi/OnPayCallback;)V
    .locals 1

    new-instance v0, Lcom/duoyou/gamesdk/a/a$3;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/duoyou/gamesdk/a/a$3;-><init>(Lcom/duoyou/gamesdk/a/a;Lcom/duoyou/gamesdk/openapi/OnPayCallback;Landroid/app/Activity;Lcom/duoyou/gamesdk/openapi/DyPayInfo;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLoginCallback(Lcom/duoyou/gamesdk/openapi/OnLoginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/a/a;->b:Lcom/duoyou/gamesdk/openapi/OnLoginCallback;

    return-void
.end method

.method public setOnLoginCallback(Lcom/duoyou/gamesdk/openapi/OnLoginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/a/a;->b:Lcom/duoyou/gamesdk/openapi/OnLoginCallback;

    return-void
.end method

.method public setScreenOrientation(I)V
    .locals 1

    invoke-direct {p0}, Lcom/duoyou/gamesdk/a/a;->d()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a;->f:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/duoyou/gamesdk/a/a;->a(Landroid/app/Activity;)V

    iput p1, p0, Lcom/duoyou/gamesdk/a/a;->d:I

    return-void
.end method

.method public uploadRoleInfo(Landroid/content/Context;Lcom/duoyou/gamesdk/openapi/DyRoleInfo;)V
    .locals 4

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "userKey"

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/b/b/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zoneId"

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->getZoneId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zoneName"

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->getZoneName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "roleId"

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "roleName"

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "professionId"

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->getProfessionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "professionName"

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->getProfession()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gender"

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "roleLevel"

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->getRoleLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "power"

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->getPower()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vip"

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->getVip()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "balanceId"

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->getBalanceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "balanceName"

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->getBalanceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "balanceNum"

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->getBalanceNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "turn"

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->getTurn()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dyUserId"

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->getDyUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/openapi/DyRoleInfo;->getExtraMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "dysdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload role = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/duoyou/gamesdk/b/a/a;

    invoke-direct {v1}, Lcom/duoyou/gamesdk/b/a/a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/duoyou/gamesdk/b/a/a;->a(Ljava/util/Map;)V

    goto/16 :goto_0
.end method
