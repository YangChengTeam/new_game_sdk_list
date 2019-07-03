.class Lcom/game91/framework/impl/DelegateSdk$15$1;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Lcom/game91/framework/core/IHttp$CallPay;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game91/framework/impl/DelegateSdk$15;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/game91/framework/impl/DelegateSdk$15;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$15$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Lcom/game91/framework/http/PayBean;)V
    .locals 8
    .param p1, "payBean"    # Lcom/game91/framework/http/PayBean;

    .prologue
    .line 663
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$15$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$15;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$15$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v1, v1, Lcom/game91/framework/impl/DelegateSdk$15;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game91/framework/impl/DelegateSdk;->hidePayDialog(Landroid/app/Activity;)V

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MgGameSdk\u805a\u5408\u652f\u4ed8\u83b7\u53d6\u6570\u636e\u6210\u529f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game91/framework/http/PayBean;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 665
    invoke-virtual {p1}, Lcom/game91/framework/http/PayBean;->getNotifyUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game91/framework/http/PayBean;->needSwitchPay()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p1}, Lcom/game91/framework/http/PayBean;->getCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 668
    const/4 v7, 0x0

    .line 670
    .local v7, "paySuccess":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/game91/framework/http/PayBean;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 674
    :goto_0
    if-eqz v7, :cond_0

    .line 675
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$15$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$15;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    new-instance v1, Lcom/game91/framework/callback/OrderInfo;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/game91/framework/impl/DelegateSdk$15$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v3, v3, Lcom/game91/framework/impl/DelegateSdk$15;->val$payInfo:Lcom/game91/framework/callback/PayInfo;

    invoke-virtual {v3}, Lcom/game91/framework/callback/PayInfo;->getOrderId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/game91/framework/impl/DelegateSdk$15$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v4, v4, Lcom/game91/framework/impl/DelegateSdk$15;->val$payInfo:Lcom/game91/framework/callback/PayInfo;

    invoke-virtual {v4}, Lcom/game91/framework/callback/PayInfo;->getPrice()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u652f\u4ed8\u6210\u529f"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/game91/framework/callback/OrderInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/game91/framework/callback/Callback;->call(Ljava/lang/Object;)V

    .line 692
    .end local v7    # "paySuccess":Z
    :goto_1
    return-void

    .line 671
    .restart local v7    # "paySuccess":Z
    :catch_0
    move-exception v6

    .line 672
    .local v6, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_0

    .line 678
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p1}, Lcom/game91/framework/http/PayBean;->needSwitchPay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    const-string v0, "pay3"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$15$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$15;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$15$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v1, v1, Lcom/game91/framework/impl/DelegateSdk$15;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/game91/framework/impl/DelegateSdk$15$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v2, v2, Lcom/game91/framework/impl/DelegateSdk$15;->val$payInfo:Lcom/game91/framework/callback/PayInfo;

    invoke-virtual {p1}, Lcom/game91/framework/http/PayBean;->getData()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/game91/framework/impl/DelegateSdk$15$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v4, v4, Lcom/game91/framework/impl/DelegateSdk$15;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iget-object v5, p0, Lcom/game91/framework/impl/DelegateSdk$15$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v5, v5, Lcom/game91/framework/impl/DelegateSdk$15;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-virtual/range {v0 .. v5}, Lcom/game91/framework/impl/DelegateSdk;->pay3(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    goto :goto_1

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$15$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$15;->val$payInfo:Lcom/game91/framework/callback/PayInfo;

    invoke-virtual {p1}, Lcom/game91/framework/http/PayBean;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game91/framework/callback/PayInfo;->setOrderId(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;

    move-result-object v0

    .line 683
    invoke-virtual {p1}, Lcom/game91/framework/http/PayBean;->getNotifyUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game91/framework/callback/PayInfo;->setNotifyUrl(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;

    .line 684
    const-string v0, "pay1"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$15$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$15;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$15$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v1, v1, Lcom/game91/framework/impl/DelegateSdk$15;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/game91/framework/impl/DelegateSdk$15$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v2, v2, Lcom/game91/framework/impl/DelegateSdk$15;->val$payInfo:Lcom/game91/framework/callback/PayInfo;

    invoke-virtual {p1}, Lcom/game91/framework/http/PayBean;->getData()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/game91/framework/impl/DelegateSdk$15$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v4, v4, Lcom/game91/framework/impl/DelegateSdk$15;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iget-object v5, p0, Lcom/game91/framework/impl/DelegateSdk$15$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v5, v5, Lcom/game91/framework/impl/DelegateSdk$15;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-virtual/range {v0 .. v5}, Lcom/game91/framework/impl/DelegateSdk;->pay1(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    goto :goto_1

    .line 688
    .end local v7    # "paySuccess":Z
    :cond_2
    invoke-static {}, Lcom/game91/framework/impl/GameSystems;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game91/framework/http/PayBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MgGameSdk\u805a\u5408\u652f\u4ed8\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game91/framework/http/PayBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$15$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$15;->val$onError:Lcom/game91/framework/callback/Callback;

    new-instance v1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcom/game91/framework/http/PayBean;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/game91/framework/callback/Callback;->call(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
