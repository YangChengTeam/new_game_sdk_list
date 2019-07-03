.class Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider$1;
.super Ljava/lang/Object;
.source "RemoteContentProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;

.field final synthetic val$auth:Ljava/lang/String;

.field final synthetic val$pluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

.field final synthetic val$providerInfo:Landroid/content/pm/ProviderInfo;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;Lcom/game91/core/instant/virtualapk/PluginManager;Landroid/net/Uri;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider$1;->this$0:Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;

    iput-object p2, p0, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider$1;->val$pluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    iput-object p3, p0, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider$1;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider$1;->val$providerInfo:Landroid/content/pm/ProviderInfo;

    iput-object p5, p0, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider$1;->val$auth:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 87
    :try_start_0
    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider$1;->val$pluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider$1;->val$uri:Landroid/net/Uri;

    const-string v5, "pkg"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v2

    .line 88
    .local v2, "loadedPlugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider$1;->val$providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider;

    .line 89
    .local v0, "contentProvider":Landroid/content/ContentProvider;
    invoke-virtual {v2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider$1;->val$providerInfo:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 90
    invoke-static {}, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider;->access$000()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/delegate/RemoteContentProvider$1;->val$auth:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "contentProvider":Landroid/content/ContentProvider;
    .end local v2    # "loadedPlugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
