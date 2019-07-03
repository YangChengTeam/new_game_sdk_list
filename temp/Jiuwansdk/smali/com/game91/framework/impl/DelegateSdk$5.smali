.class Lcom/game91/framework/impl/DelegateSdk$5;
.super Landroid/os/AsyncTask;
.source "DelegateSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk;->loadPlugins(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/http/InitBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/String;

.field final synthetic this$0:Lcom/game91/framework/impl/DelegateSdk;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$initBean:Lcom/game91/framework/http/InitBean;

.field final synthetic val$onError:Lcom/game91/framework/callback/Callback;

.field final synthetic val$onSuccess:Lcom/game91/framework/callback/Callback;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk;Lcom/game91/framework/http/InitBean;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/game91/framework/impl/DelegateSdk;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$5;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iput-object p2, p0, Lcom/game91/framework/impl/DelegateSdk$5;->val$initBean:Lcom/game91/framework/http/InitBean;

    iput-object p3, p0, Lcom/game91/framework/impl/DelegateSdk$5;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/game91/framework/impl/DelegateSdk$5;->val$onError:Lcom/game91/framework/callback/Callback;

    iput-object p5, p0, Lcom/game91/framework/impl/DelegateSdk$5;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 335
    const-string v0, "\u672a\u77e5\u9519\u8bef"

    iput-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$5;->error:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u68c0\u6d4b\u66f4\u65b0\u53d1\u884c\u7cfb\u7edf\u63d2\u4ef6:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/game91/framework/impl/DelegateSdk$5;->val$initBean:Lcom/game91/framework/http/InitBean;

    invoke-virtual {v3}, Lcom/game91/framework/http/InitBean;->getPlugins()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/game91/framework/impl/DelegateSdk$5;->val$initBean:Lcom/game91/framework/http/InitBean;

    invoke-virtual {v2}, Lcom/game91/framework/http/InitBean;->getPlugins()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game91/framework/http/InitBean$Plugin;

    .line 341
    .local v1, "plugin":Lcom/game91/framework/http/InitBean$Plugin;
    :try_start_0
    iget-object v3, p0, Lcom/game91/framework/impl/DelegateSdk$5;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v4, p0, Lcom/game91/framework/impl/DelegateSdk$5;->val$activity:Landroid/app/Activity;

    invoke-static {v3, v4, v1}, Lcom/game91/framework/impl/DelegateSdk;->access$400(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/http/InitBean$Plugin;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 344
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "plugin":Lcom/game91/framework/http/InitBean$Plugin;
    :goto_1
    return-object v2

    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 334
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/game91/framework/impl/DelegateSdk$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 352
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 353
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$5;->error:Ljava/lang/String;

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$5;->val$onError:Lcom/game91/framework/callback/Callback;

    new-instance v1, Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/game91/framework/impl/DelegateSdk$5;->error:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/game91/framework/callback/Callback;->call(Ljava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$5;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game91/framework/impl/DelegateSdk;->hideSplash(Landroid/app/Activity;)V

    .line 380
    :goto_0
    return-void

    .line 359
    :cond_0
    const-string v0, "\u53d1\u884c\u7cfb\u7edf\u63d2\u4ef6\u5168\u90e8\u52a0\u8f7d\u5b8c\u6210"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$5;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/game91/framework/statistics/StatisticsAnalysis;->doInit(Landroid/app/Activity;)V

    .line 361
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$5;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/game91/framework/callback/Callback;->call(Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$5;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game91/framework/impl/DelegateSdk;->hideSplash(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 334
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/game91/framework/impl/DelegateSdk$5;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
