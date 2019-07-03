.class Lcom/game91/framework/listener/InitListener$1;
.super Ljava/lang/Object;
.source "InitListener.java"

# interfaces
.implements Lcom/game91/library/rxjava/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/listener/InitListener;->doInit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/game91/library/rxjava/functions/Consumer",
        "<",
        "Lcom/game91/framework/http/PluginBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/listener/InitListener;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$onError:Lcom/game91/framework/callback/Callback;

.field final synthetic val$onSuccess:Lcom/game91/framework/callback/Callback;


# direct methods
.method constructor <init>(Lcom/game91/framework/listener/InitListener;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/listener/InitListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/game91/framework/listener/InitListener$1;->this$0:Lcom/game91/framework/listener/InitListener;

    iput-object p2, p0, Lcom/game91/framework/listener/InitListener$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game91/framework/listener/InitListener$1;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iput-object p4, p0, Lcom/game91/framework/listener/InitListener$1;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/game91/framework/http/PluginBean;)V
    .locals 8
    .param p1, "pluginBean"    # Lcom/game91/framework/http/PluginBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/game91/framework/http/PluginBean;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game91/framework/http/PluginBean$Plugin;

    .line 66
    .local v3, "plugin":Lcom/game91/framework/http/PluginBean$Plugin;
    iget-object v5, p0, Lcom/game91/framework/listener/InitListener$1;->val$activity:Landroid/app/Activity;

    const-string v6, "support_apk"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "outputDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Lcom/game91/framework/http/PluginBean$Plugin;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v0, "apk":Ljava/io/File;
    iget-object v5, p0, Lcom/game91/framework/listener/InitListener$1;->val$activity:Landroid/app/Activity;

    invoke-static {v5, v0}, Lcom/game91/framework/multidex/Multidex;->isInstalled(Landroid/content/Context;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 69
    invoke-static {}, Lcom/game91/core/instant/virtualapk/PluginManager;->getInstance()Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/game91/core/instant/virtualapk/PluginManager;->loadPlugin(Ljava/io/File;)V

    goto :goto_0

    .line 72
    .end local v0    # "apk":Ljava/io/File;
    .end local v2    # "outputDir":Ljava/lang/String;
    .end local v3    # "plugin":Lcom/game91/framework/http/PluginBean$Plugin;
    :cond_1
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game91/framework/core/IGameActivity;

    .line 73
    .local v1, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v1}, Lcom/game91/framework/core/IGameActivity;->onlyActivityEvent()Z

    move-result v5

    if-nez v5, :cond_2

    .line 74
    iget-object v5, p0, Lcom/game91/framework/listener/InitListener$1;->val$activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/game91/framework/listener/InitListener$1;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iget-object v7, p0, Lcom/game91/framework/listener/InitListener$1;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-interface {v1, v5, v6, v7}, Lcom/game91/framework/core/IGameActivity;->doInit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    goto :goto_1

    .line 77
    .end local v1    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_3
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    check-cast p1, Lcom/game91/framework/http/PluginBean;

    invoke-virtual {p0, p1}, Lcom/game91/framework/listener/InitListener$1;->accept(Lcom/game91/framework/http/PluginBean;)V

    return-void
.end method
