.class public Lcom/game91/framework/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MgGameSdk Logger"

.field private static sIsDebugMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/game91/framework/util/Logger;->sIsDebugMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDebugMode()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/game91/framework/util/Logger;->sIsDebugMode:Z

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 37
    :try_start_0
    sget-boolean v1, Lcom/game91/framework/util/Logger;->sIsDebugMode:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    const-string v1, "MgGameSdk Logger"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static openDebugMode(Z)V
    .locals 0
    .param p0, "open"    # Z

    .prologue
    .line 20
    sput-boolean p0, Lcom/game91/framework/util/Logger;->sIsDebugMode:Z

    .line 21
    return-void
.end method
