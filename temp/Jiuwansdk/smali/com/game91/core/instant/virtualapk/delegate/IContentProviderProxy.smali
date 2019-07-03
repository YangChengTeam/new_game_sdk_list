.class public Lcom/game91/core/instant/virtualapk/delegate/IContentProviderProxy;
.super Ljava/lang/Object;
.source "IContentProviderProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "IContentProviderProxy"


# instance fields
.field private mBase:Landroid/content/IContentProvider;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/IContentProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iContentProvider"    # Landroid/content/IContentProvider;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/game91/core/instant/virtualapk/delegate/IContentProviderProxy;->mBase:Landroid/content/IContentProvider;

    .line 50
    iput-object p1, p0, Lcom/game91/core/instant/virtualapk/delegate/IContentProviderProxy;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private getBundleParameter([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 120
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 121
    aget-object v2, p1, v1

    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 122
    aget-object v0, p1, v1

    .end local v0    # "bundle":Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 128
    .end local v1    # "i":I
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-object v0

    .line 120
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;Landroid/content/IContentProvider;)Landroid/content/IContentProvider;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iContentProvider"    # Landroid/content/IContentProvider;

    .prologue
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/IContentProvider;

    aput-object v3, v1, v2

    new-instance v2, Lcom/game91/core/instant/virtualapk/delegate/IContentProviderProxy;

    invoke-direct {v2, p0, p1}, Lcom/game91/core/instant/virtualapk/delegate/IContentProviderProxy;-><init>(Landroid/content/Context;Landroid/content/IContentProvider;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IContentProvider;

    return-object v0
.end method

.method private wrapperUri(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 15
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 71
    const/4 v10, 0x0

    .line 72
    .local v10, "uri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 73
    .local v4, "index":I
    if-eqz p2, :cond_0

    .line 74
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v13, v0

    if-ge v3, v13, :cond_0

    .line 75
    aget-object v13, p2, v3

    instance-of v13, v13, Landroid/net/Uri;

    if-eqz v13, :cond_3

    .line 76
    aget-object v10, p2, v3

    .end local v10    # "uri":Landroid/net/Uri;
    check-cast v10, Landroid/net/Uri;

    .line 77
    .restart local v10    # "uri":Landroid/net/Uri;
    move v4, v3

    .line 83
    .end local v3    # "i":I
    :cond_0
    const/4 v2, 0x0

    .line 84
    .local v2, "bundleInCallMethod":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "call"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 85
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/game91/core/instant/virtualapk/delegate/IContentProviderProxy;->getBundleParameter([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_1

    .line 87
    const-string v13, "wrapper_uri"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 88
    .local v11, "uriString":Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 89
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 94
    .end local v11    # "uriString":Ljava/lang/String;
    :cond_1
    if-nez v10, :cond_4

    .line 115
    :cond_2
    :goto_1
    return-void

    .line 74
    .end local v2    # "bundleInCallMethod":Landroid/os/Bundle;
    .restart local v3    # "i":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    .end local v3    # "i":I
    .restart local v2    # "bundleInCallMethod":Landroid/os/Bundle;
    :cond_4
    invoke-static {}, Lcom/game91/core/instant/virtualapk/PluginManager;->getInstance()Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v8

    .line 99
    .local v8, "pluginManager":Lcom/game91/core/instant/virtualapk/PluginManager;
    invoke-virtual {v10}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 100
    .local v5, "info":Landroid/content/pm/ProviderInfo;
    if-eqz v5, :cond_2

    .line 101
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 102
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {v8, v6}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v7

    .line 103
    .local v7, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 104
    .local v9, "pluginUri":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/game91/core/instant/virtualapk/delegate/IContentProviderProxy;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->getUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/?plugin="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getLocation()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "&pkg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "&uri="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 109
    .local v12, "wrapperUri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "call"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 110
    const-string v13, "wrapper_uri"

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 112
    :cond_5
    aput-object v12, p2, v4

    goto/16 :goto_1
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 60
    const-string v1, "IContentProviderProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0, p2, p3}, Lcom/game91/core/instant/virtualapk/delegate/IContentProviderProxy;->wrapperUri(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/delegate/IContentProviderProxy;->mBase:Landroid/content/IContentProvider;

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method
