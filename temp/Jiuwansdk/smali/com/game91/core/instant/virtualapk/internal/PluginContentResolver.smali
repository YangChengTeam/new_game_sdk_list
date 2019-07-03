.class public Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;
.super Landroid/content/ContentResolver;
.source "PluginContentResolver.java"


# static fields
.field private static sAcquireExistingProvider:Ljava/lang/reflect/Method;

.field private static sAcquireProvider:Ljava/lang/reflect/Method;

.field private static sAcquireUnstableProvider:Ljava/lang/reflect/Method;


# instance fields
.field private mBase:Landroid/content/ContentResolver;

.field private mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 43
    :try_start_0
    const-class v0, Landroid/content/ContentResolver;

    const-string v1, "acquireProvider"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->sAcquireProvider:Ljava/lang/reflect/Method;

    .line 45
    sget-object v0, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->sAcquireProvider:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 46
    const-class v0, Landroid/content/ContentResolver;

    const-string v1, "acquireExistingProvider"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->sAcquireExistingProvider:Ljava/lang/reflect/Method;

    .line 48
    sget-object v0, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->sAcquireExistingProvider:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 49
    const-class v0, Landroid/content/ContentResolver;

    const-string v1, "acquireUnstableProvider"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->sAcquireUnstableProvider:Ljava/lang/reflect/Method;

    .line 51
    sget-object v0, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->sAcquireUnstableProvider:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/content/ContentResolver;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->mBase:Landroid/content/ContentResolver;

    .line 60
    invoke-static {}, Lcom/game91/core/instant/virtualapk/PluginManager;->getInstance()Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    .line 61
    return-void
.end method

.method public static getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".VirtualAPK.Provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleForCall(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "wrapper_uri"

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-object v0
.end method

.method public static getUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrapperUri(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p0, "loadedPlugin"    # Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .param p1, "pluginUri"    # Landroid/net/Uri;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "pluginUriString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getHostContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->getUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/?plugin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 132
    .local v3, "wrapperUri":Landroid/net/Uri;
    return-object v3
.end method


# virtual methods
.method protected acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v1

    .line 88
    :goto_0
    return-object v1

    .line 83
    :cond_0
    sget-object v1, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->sAcquireExistingProvider:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->mBase:Landroid/content/ContentResolver;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IContentProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v1

    .line 74
    :goto_0
    return-object v1

    .line 69
    :cond_0
    sget-object v1, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->sAcquireProvider:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->mBase:Landroid/content/ContentResolver;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IContentProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v1

    .line 102
    :goto_0
    return-object v1

    .line 97
    :cond_0
    sget-object v1, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->sAcquireUnstableProvider:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->mBase:Landroid/content/ContentResolver;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IContentProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public appNotRespondingViaProvider(Landroid/content/IContentProvider;)V
    .locals 0
    .param p1, "icp"    # Landroid/content/IContentProvider;

    .prologue
    .line 117
    return-void
.end method

.method public releaseProvider(Landroid/content/IContentProvider;)Z
    .locals 1
    .param p1, "provider"    # Landroid/content/IContentProvider;

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public releaseUnstableProvider(Landroid/content/IContentProvider;)Z
    .locals 1
    .param p1, "icp"    # Landroid/content/IContentProvider;

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method protected resolveUserIdFromAuthority(Ljava/lang/String;)I
    .locals 1
    .param p1, "auth"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public unstableProviderDied(Landroid/content/IContentProvider;)V
    .locals 0
    .param p1, "icp"    # Landroid/content/IContentProvider;

    .prologue
    .line 114
    return-void
.end method
