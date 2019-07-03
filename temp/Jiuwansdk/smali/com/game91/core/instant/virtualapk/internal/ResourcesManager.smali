.class Lcom/game91/core/instant/virtualapk/internal/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game91/core/instant/virtualapk/internal/ResourcesManager$AdaptationResourcesCompat;,
        Lcom/game91/core/instant/virtualapk/internal/ResourcesManager$NubiaResourcesCompat;,
        Lcom/game91/core/instant/virtualapk/internal/ResourcesManager$VivoResourcesCompat;,
        Lcom/game91/core/instant/virtualapk/internal/ResourcesManager$MiUiResourcesCompat;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 14
    .param p0, "hostContext"    # Landroid/content/Context;
    .param p1, "apk"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v8, Lcom/game91/core/instant/virtualapk/internal/ResourcesManager;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 40
    .local v2, "hostResources":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 43
    .local v3, "newResources":Landroid/content/res/Resources;
    :try_start_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-ge v7, v9, :cond_1

    .line 44
    const-class v7, Landroid/content/res/AssetManager;

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 45
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-class v7, Landroid/content/res/AssetManager;

    const-string v9, "addAssetPath"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v7, v0, v9, v10}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :goto_0
    const-class v7, Landroid/content/res/AssetManager;

    const-string v9, "addAssetPath"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {v7, v0, v9, v10}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/game91/core/instant/virtualapk/PluginManager;->getInstance()Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/game91/core/instant/virtualapk/PluginManager;->getAllLoadedPlugins()Ljava/util/List;

    move-result-object v6

    .line 51
    .local v6, "pluginList":Ljava/util/List;, "Ljava/util/List<Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .line 52
    .local v5, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    const-class v9, Landroid/content/res/AssetManager;

    const-string v10, "addAssetPath"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v5}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getLocation()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v0, v10, v11}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 70
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v5    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .end local v6    # "pluginList":Ljava/util/List;, "Ljava/util/List<Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;>;"
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    monitor-exit v8

    return-object v3

    .line 47
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    goto :goto_0

    .line 54
    .restart local v6    # "pluginList":Ljava/util/List;, "Ljava/util/List<Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;>;"
    :cond_2
    invoke-static {v2}, Lcom/game91/core/instant/virtualapk/internal/ResourcesManager;->isMiUi(Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 55
    invoke-static {v2, v0}, Lcom/game91/core/instant/virtualapk/internal/ResourcesManager$MiUiResourcesCompat;->access$000(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v3

    .line 67
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .line 68
    .restart local v5    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v5, v3}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->updateResources(Landroid/content/res/Resources;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 39
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "hostResources":Landroid/content/res/Resources;
    .end local v3    # "newResources":Landroid/content/res/Resources;
    .end local v5    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .end local v6    # "pluginList":Ljava/util/List;, "Ljava/util/List<Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 56
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v2    # "hostResources":Landroid/content/res/Resources;
    .restart local v3    # "newResources":Landroid/content/res/Resources;
    .restart local v6    # "pluginList":Ljava/util/List;, "Ljava/util/List<Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;>;"
    :cond_3
    :try_start_4
    invoke-static {v2}, Lcom/game91/core/instant/virtualapk/internal/ResourcesManager;->isVivo(Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 57
    invoke-static {p0, v2, v0}, Lcom/game91/core/instant/virtualapk/internal/ResourcesManager$VivoResourcesCompat;->access$100(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_2

    .line 58
    :cond_4
    invoke-static {v2}, Lcom/game91/core/instant/virtualapk/internal/ResourcesManager;->isNubia(Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 59
    invoke-static {v2, v0}, Lcom/game91/core/instant/virtualapk/internal/ResourcesManager$NubiaResourcesCompat;->access$200(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_2

    .line 60
    :cond_5
    invoke-static {v2}, Lcom/game91/core/instant/virtualapk/internal/ResourcesManager;->isNotRawResources(Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 61
    invoke-static {v2, v0}, Lcom/game91/core/instant/virtualapk/internal/ResourcesManager$AdaptationResourcesCompat;->access$300(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_2

    .line 64
    :cond_6
    new-instance v4, Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-direct {v4, v0, v7, v9}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v3    # "newResources":Landroid/content/res/Resources;
    .local v4, "newResources":Landroid/content/res/Resources;
    move-object v3, v4

    .end local v4    # "newResources":Landroid/content/res/Resources;
    .restart local v3    # "newResources":Landroid/content/res/Resources;
    goto :goto_2
.end method

.method public static hookResources(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 10
    .param p0, "base"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 80
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "mResources"

    invoke-static {v8, p0, v9, p1}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    invoke-static {p0}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getPackageInfo(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    .line 82
    .local v3, "loadedApk":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "mResources"

    invoke-static {v8, v3, v9, p1}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    invoke-static {p0}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getActivityThread(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, "activityThread":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "mResourcesManager"

    invoke-static {v8, v0, v9}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 86
    .local v6, "resManager":Ljava/lang/Object;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    if-ge v8, v9, :cond_0

    .line 87
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "mActiveResources"

    invoke-static {v8, v6, v9}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 88
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 89
    .local v2, "key":Ljava/lang/Object;
    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v0    # "activityThread":Ljava/lang/Object;
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "loadedApk":Ljava/lang/Object;
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    .end local v6    # "resManager":Ljava/lang/Object;
    :goto_0
    return-void

    .line 92
    .restart local v0    # "activityThread":Ljava/lang/Object;
    .restart local v3    # "loadedApk":Ljava/lang/Object;
    .restart local v6    # "resManager":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "mResourceImpls"

    invoke-static {v8, v6, v9}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getFieldNoException(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 93
    .local v4, "map":Ljava/util/Map;
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 94
    .restart local v2    # "key":Ljava/lang/Object;
    const-class v8, Landroid/content/res/Resources;

    const-string v9, "mResourcesImpl"

    invoke-static {v8, p1, v9}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getFieldNoException(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 95
    .local v7, "resourcesImpl":Ljava/lang/Object;
    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v0    # "activityThread":Ljava/lang/Object;
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "loadedApk":Ljava/lang/Object;
    .end local v4    # "map":Ljava/util/Map;
    .end local v6    # "resManager":Ljava/lang/Object;
    .end local v7    # "resourcesImpl":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static isMiUi(Landroid/content/res/Resources;)Z
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.content.res.MiuiResources"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isNotRawResources(Landroid/content/res/Resources;)Z
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.content.res.Resources"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNubia(Landroid/content/res/Resources;)Z
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.content.res.NubiaResources"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isVivo(Landroid/content/res/Resources;)Z
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.content.res.VivoResources"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
