.class public Lcom/game91/framework/impl/ApplicationImpl;
.super Ljava/lang/Object;
.source "ApplicationImpl.java"

# interfaces
.implements Lcom/game91/framework/core/IApplication;


# instance fields
.field private mApplicationImpl:Lcom/game91/framework/core/IApplication;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "ApplicationListener"

    invoke-static {v0}, Lcom/game91/framework/impl/Clazz;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IApplication;

    iput-object v0, p0, Lcom/game91/framework/impl/ApplicationImpl;->mApplicationImpl:Lcom/game91/framework/core/IApplication;

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/app/Application;)V
    .locals 6
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 25
    sput-object p1, Lcom/game91/framework/impl/GameSystems;->sApplication:Landroid/app/Application;

    .line 26
    invoke-static {p1}, Lcom/game91/framework/util/DeviceUtils;->isDebug(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Lcom/game91/framework/util/Logger;->openDebugMode(Z)V

    .line 29
    invoke-static {p1}, Lcom/game91/reflect/android9/Hack;->unseal(Landroid/content/Context;)I

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 33
    .local v2, "time":J
    const-string v1, "plugins/"

    const-string v4, "support.apk"

    invoke-static {p1, v1, v4}, Lcom/game91/framework/util/AssetsUtils;->releaseFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 34
    .local v0, "support":Ljava/io/File;
    invoke-static {p1, v0}, Lcom/game91/framework/multidex/Multidex;->isInstalled(Landroid/content/Context;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-static {p1, v0}, Lcom/game91/framework/multidex/Multidex;->install(Landroid/content/Context;Ljava/io/File;)V

    .line 37
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install support.apk time:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/game91/framework/impl/ApplicationImpl;->mApplicationImpl:Lcom/game91/framework/core/IApplication;

    invoke-interface {v1, p1}, Lcom/game91/framework/core/IApplication;->attachBaseContext(Landroid/app/Application;)V

    .line 51
    new-instance v1, Lcom/game91/framework/impl/DelegateSdk;

    invoke-direct {v1}, Lcom/game91/framework/impl/DelegateSdk;-><init>()V

    invoke-static {v1}, Lcom/game91/framework/Wrapper;->wrapper(Lcom/game91/framework/core/IActivity;)V

    .line 52
    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/game91/framework/impl/ApplicationImpl;->mApplicationImpl:Lcom/game91/framework/core/IApplication;

    invoke-interface {v0, p1, p2}, Lcom/game91/framework/core/IApplication;->onConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V

    .line 67
    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/game91/framework/impl/ApplicationImpl;->mApplicationImpl:Lcom/game91/framework/core/IApplication;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IApplication;->onCreate(Landroid/app/Application;)V

    .line 57
    return-void
.end method

.method public onLowMemory(Landroid/app/Application;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/game91/framework/impl/ApplicationImpl;->mApplicationImpl:Lcom/game91/framework/core/IApplication;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IApplication;->onLowMemory(Landroid/app/Application;)V

    .line 72
    return-void
.end method

.method public onTerminate(Landroid/app/Application;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/game91/framework/impl/ApplicationImpl;->mApplicationImpl:Lcom/game91/framework/core/IApplication;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IApplication;->onTerminate(Landroid/app/Application;)V

    .line 62
    return-void
.end method

.method public onTrimMemory(Landroid/app/Application;I)V
    .locals 2
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "level"    # I

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/game91/framework/impl/ApplicationImpl;->mApplicationImpl:Lcom/game91/framework/core/IApplication;

    invoke-interface {v0, p1, p2}, Lcom/game91/framework/core/IApplication;->onTrimMemory(Landroid/app/Application;I)V

    .line 78
    return-void
.end method
