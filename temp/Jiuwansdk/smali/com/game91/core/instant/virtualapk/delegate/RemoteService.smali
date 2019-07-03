.class public Lcom/game91/core/instant/virtualapk/delegate/RemoteService;
.super Lcom/game91/core/instant/virtualapk/delegate/LocalService;
.source "RemoteService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/game91/core/instant/virtualapk/delegate/LocalService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/game91/core/instant/virtualapk/delegate/LocalService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v5

    .line 58
    :goto_0
    return v5

    .line 44
    :cond_0
    const-string v5, "target"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 45
    .local v4, "target":Landroid/content/Intent;
    if-eqz v4, :cond_1

    .line 46
    const-string v5, "plugin_location"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "pluginLocation":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 48
    .local v0, "component":Landroid/content/ComponentName;
    invoke-static {}, Lcom/game91/core/instant/virtualapk/PluginManager;->getInstance()Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v2

    .line 49
    .local v2, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    .line 51
    :try_start_0
    invoke-static {}, Lcom/game91/core/instant/virtualapk/PluginManager;->getInstance()Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/game91/core/instant/virtualapk/PluginManager;->loadPlugin(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .end local v3    # "pluginLocation":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/game91/core/instant/virtualapk/delegate/LocalService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v5

    goto :goto_0

    .line 52
    .restart local v0    # "component":Landroid/content/ComponentName;
    .restart local v2    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .restart local v3    # "pluginLocation":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
