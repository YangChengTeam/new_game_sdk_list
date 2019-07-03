.class public Lcom/game91/framework/listener/ApplicationListener;
.super Ljava/lang/Object;
.source "ApplicationListener.java"

# interfaces
.implements Lcom/game91/framework/core/IApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private killSelf()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/app/Application;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 28
    invoke-static {p1}, Lcom/game91/reflect/android9/Hack;->unseal(Landroid/content/Context;)I

    .line 30
    invoke-static {p1}, Lcom/game91/framework/util/DeviceUtils;->isDebug(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/game91/core/instant/virtualapk/internal/Constants;->DEBUG:Z

    .line 32
    invoke-static {}, Lcom/game91/core/instant/virtualapk/PluginManager;->getInstance()Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->doInit(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 48
    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 0
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 38
    return-void
.end method

.method public onLowMemory(Landroid/app/Application;)V
    .locals 0
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 53
    return-void
.end method

.method public onTerminate(Landroid/app/Application;)V
    .locals 0
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 43
    return-void
.end method

.method public onTrimMemory(Landroid/app/Application;I)V
    .locals 2
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "level"    # I

    .prologue
    .line 59
    const/16 v0, 0x50

    if-lt p2, v0, :cond_0

    .line 61
    const-string v0, "Game"

    const-string v1, "\u5185\u5b58\u4e0d\u591f\u4e86!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0}, Lcom/game91/framework/listener/ApplicationListener;->killSelf()V

    .line 64
    :cond_0
    return-void
.end method
