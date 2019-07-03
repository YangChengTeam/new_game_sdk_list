.class public Lcom/game91/framework/NineApplication;
.super Landroid/app/Application;
.source "NineApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 15
    invoke-static {}, Lcom/game91/framework/NineApplicationHelper;->getInstance()Lcom/game91/framework/core/IApplication;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/game91/framework/core/IApplication;->attachBaseContext(Landroid/app/Application;)V

    .line 16
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 33
    invoke-static {}, Lcom/game91/framework/NineApplicationHelper;->getInstance()Lcom/game91/framework/core/IApplication;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/game91/framework/core/IApplication;->onConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V

    .line 34
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 21
    invoke-static {}, Lcom/game91/framework/NineApplicationHelper;->getInstance()Lcom/game91/framework/core/IApplication;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/game91/framework/core/IApplication;->onCreate(Landroid/app/Application;)V

    .line 22
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 39
    invoke-static {}, Lcom/game91/framework/NineApplicationHelper;->getInstance()Lcom/game91/framework/core/IApplication;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/game91/framework/core/IApplication;->onLowMemory(Landroid/app/Application;)V

    .line 40
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 27
    invoke-static {}, Lcom/game91/framework/NineApplicationHelper;->getInstance()Lcom/game91/framework/core/IApplication;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/game91/framework/core/IApplication;->onTerminate(Landroid/app/Application;)V

    .line 28
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 45
    invoke-static {}, Lcom/game91/framework/NineApplicationHelper;->getInstance()Lcom/game91/framework/core/IApplication;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/game91/framework/core/IApplication;->onTrimMemory(Landroid/app/Application;I)V

    .line 46
    return-void
.end method
