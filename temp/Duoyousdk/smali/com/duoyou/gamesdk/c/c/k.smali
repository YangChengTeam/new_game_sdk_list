.class public Lcom/duoyou/gamesdk/c/c/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;


# direct methods
.method public static a()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/duoyou/gamesdk/c/c/k;->a:Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoyou/gamesdk/c/c/k;->a:Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoyou/gamesdk/c/c/k;->a:Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/duoyou/gamesdk/c/c/k;->a:Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/duoyou/gamesdk/c/c/k;->a:Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/c/k;->a:Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;

    sget-object v0, Lcom/duoyou/gamesdk/c/c/k;->a:Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    sget-object v0, Lcom/duoyou/gamesdk/c/c/k;->a:Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/duoyou/gamesdk/c/c/k;->a:Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/duoyou/gamesdk/c/c/k;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/duoyou/gamesdk/c/c/k;->a:Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
