.class public Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;
.super Landroid/content/ContentProvider;
.source "RemoteContentProvider.java"


# static fields
.field public static final KEY_PKG:Ljava/lang/String; = "pkg"

.field public static final KEY_PLUGIN:Ljava/lang/String; = "plugin"

.field public static final KEY_URI:Ljava/lang/String; = "uri"

.field public static final KEY_WRAPPER_URI:Ljava/lang/String; = "wrapper_uri"

.field private static final TAG:Ljava/lang/String; = "RemoteContentProvider"

.field private static sCachedProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;->sCachedProviders:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;->sCachedProviders:Ljava/util/Map;

    return-object v0
.end method

.method private getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 63
    invoke-static {}, Lcom/game91/core/instant/virtualapk/PluginManager;->getInstance()Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v2

    .line 64
    .local v2, "pluginManager":Lcom/game91/core/instant/virtualapk/PluginManager;
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 65
    .local v9, "pluginUri":Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "auth":Ljava/lang/String;
    sget-object v0, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;->sCachedProviders:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentProvider;

    .line 67
    .local v6, "cachedProvider":Landroid/content/ContentProvider;
    if-eqz v6, :cond_0

    .line 100
    .end local v6    # "cachedProvider":Landroid/content/ContentProvider;
    :goto_0
    return-object v6

    .line 71
    .restart local v6    # "cachedProvider":Landroid/content/ContentProvider;
    :cond_0
    sget-object v10, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;->sCachedProviders:Ljava/util/Map;

    monitor-enter v10

    .line 72
    :try_start_0
    const-string v0, "pkg"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 73
    .local v8, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-nez v8, :cond_1

    .line 75
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v1, "plugin"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/game91/core/instant/virtualapk/PluginManager;->loadPlugin(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :cond_1
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v2, v5, v0}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 82
    .local v4, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-eqz v4, :cond_2

    .line 83
    new-instance v0, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider$1;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider$1;-><init>(Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;Lcom/game91/core/instant/virtualapk/PluginManager;Landroid/net/Uri;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/game91/core/instant/virtualapk/utils/RunUtil;->runOnUiThread(Ljava/lang/Runnable;Z)V

    .line 96
    sget-object v0, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;->sCachedProviders:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider;

    monitor-exit v10

    move-object v6, v0

    goto :goto_0

    .line 76
    .end local v4    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :catch_0
    move-exception v7

    .line 77
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 98
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .restart local v4    # "providerInfo":Landroid/content/pm/ProviderInfo;
    .restart local v8    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    :cond_2
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v8, 0x0

    .line 172
    :try_start_0
    const-class v5, Landroid/content/ContentProviderOperation;

    const-string v6, "mUri"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 173
    .local v4, "uriField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 174
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation;

    .line 175
    .local v1, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "uri"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 176
    .local v2, "pluginUri":Landroid/net/Uri;
    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v1    # "operation":Landroid/content/ContentProviderOperation;
    .end local v2    # "pluginUri":Landroid/net/Uri;
    .end local v4    # "uriField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    new-array v5, v8, [Landroid/content/ContentProviderResult;

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v5

    .line 182
    .restart local v4    # "uriField":Ljava/lang/reflect/Field;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 183
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProviderOperation;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v3

    .line 184
    .local v3, "provider":Landroid/content/ContentProvider;
    if-eqz v3, :cond_1

    .line 185
    invoke-virtual {v3, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    goto :goto_1

    .line 189
    .end local v3    # "provider":Landroid/content/ContentProvider;
    :cond_1
    new-array v5, v8, [Landroid/content/ContentProviderResult;

    goto :goto_1
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v1

    .line 161
    .local v1, "provider":Landroid/content/ContentProvider;
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 162
    .local v0, "pluginUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v1, v0, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    .line 166
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 194
    const-string v3, "RemoteContentProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with extras : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-eqz p3, :cond_0

    const-string v3, "wrapper_uri"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-object v2

    .line 200
    :cond_1
    const-string v3, "wrapper_uri"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 201
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v0

    .line 202
    .local v0, "provider":Landroid/content/ContentProvider;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v1

    .line 139
    .local v1, "provider":Landroid/content/ContentProvider;
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 140
    .local v0, "pluginUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v1, v0, p2, p3}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 144
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v1

    .line 106
    .local v1, "provider":Landroid/content/ContentProvider;
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 107
    .local v0, "pluginUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1, v0}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 111
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v1

    .line 128
    .local v1, "provider":Landroid/content/ContentProvider;
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 129
    .local v0, "pluginUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v1, v0, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 133
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_0
    return-object p1
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 57
    const-string v0, "RemoteContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate, current thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v0

    .line 117
    .local v0, "provider":Landroid/content/ContentProvider;
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 118
    .local v1, "pluginUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 119
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 122
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v1

    .line 150
    .local v1, "provider":Landroid/content/ContentProvider;
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 151
    .local v0, "pluginUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 155
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
