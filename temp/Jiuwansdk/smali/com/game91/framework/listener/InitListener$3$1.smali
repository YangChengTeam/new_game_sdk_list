.class Lcom/game91/framework/listener/InitListener$3$1;
.super Ljava/lang/Object;
.source "InitListener.java"

# interfaces
.implements Lcom/game91/framework/core/IHttp$CallPlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/listener/InitListener$3;->subscribe(Lcom/game91/library/rxjava/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game91/framework/listener/InitListener$3;

.field final synthetic val$emitter:Lcom/game91/library/rxjava/ObservableEmitter;


# direct methods
.method constructor <init>(Lcom/game91/framework/listener/InitListener$3;Lcom/game91/library/rxjava/ObservableEmitter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/game91/framework/listener/InitListener$3;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/game91/framework/listener/InitListener$3$1;->this$1:Lcom/game91/framework/listener/InitListener$3;

    iput-object p2, p0, Lcom/game91/framework/listener/InitListener$3$1;->val$emitter:Lcom/game91/library/rxjava/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Lcom/game91/framework/http/PluginBean;)V
    .locals 5
    .param p1, "pluginBean"    # Lcom/game91/framework/http/PluginBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/game91/framework/http/PluginBean;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/http/PluginBean$Plugin;

    .line 48
    .local v0, "plugin":Lcom/game91/framework/http/PluginBean$Plugin;
    iget-object v2, p0, Lcom/game91/framework/listener/InitListener$3$1;->this$1:Lcom/game91/framework/listener/InitListener$3;

    iget-object v2, v2, Lcom/game91/framework/listener/InitListener$3;->val$activity:Landroid/app/Activity;

    const-string v3, "plugins/"

    invoke-virtual {v0}, Lcom/game91/framework/http/PluginBean$Plugin;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/game91/framework/util/AssetsUtils;->releaseFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 49
    iget-object v2, p0, Lcom/game91/framework/listener/InitListener$3$1;->this$1:Lcom/game91/framework/listener/InitListener$3;

    iget-object v2, v2, Lcom/game91/framework/listener/InitListener$3;->this$0:Lcom/game91/framework/listener/InitListener;

    iget-object v3, p0, Lcom/game91/framework/listener/InitListener$3$1;->this$1:Lcom/game91/framework/listener/InitListener$3;

    iget-object v3, v3, Lcom/game91/framework/listener/InitListener$3;->val$activity:Landroid/app/Activity;

    invoke-static {v2, v3, v0}, Lcom/game91/framework/listener/InitListener;->access$000(Lcom/game91/framework/listener/InitListener;Landroid/app/Activity;Lcom/game91/framework/http/PluginBean$Plugin;)V

    goto :goto_0

    .line 51
    .end local v0    # "plugin":Lcom/game91/framework/http/PluginBean$Plugin;
    :cond_0
    iget-object v1, p0, Lcom/game91/framework/listener/InitListener$3$1;->val$emitter:Lcom/game91/library/rxjava/ObservableEmitter;

    invoke-interface {v1, p1}, Lcom/game91/library/rxjava/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 52
    return-void
.end method
