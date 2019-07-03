.class Lcom/game91/framework/impl/HttpImpl$7;
.super Ljava/lang/Object;
.source "HttpImpl.java"

# interfaces
.implements Lcom/game91/library/rxjava/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/HttpImpl;->pay(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallPay;Lcom/game91/framework/core/IHttp$CallError;)V
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
        "Lcom/game91/framework/http/PayBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/impl/HttpImpl;

.field final synthetic val$call:Lcom/game91/framework/core/IHttp$CallPay;

.field final synthetic val$error:Lcom/game91/framework/core/IHttp$CallError;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallPay;Lcom/game91/framework/core/IHttp$CallError;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/impl/HttpImpl;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/game91/framework/impl/HttpImpl$7;->this$0:Lcom/game91/framework/impl/HttpImpl;

    iput-object p2, p0, Lcom/game91/framework/impl/HttpImpl$7;->val$call:Lcom/game91/framework/core/IHttp$CallPay;

    iput-object p3, p0, Lcom/game91/framework/impl/HttpImpl$7;->val$error:Lcom/game91/framework/core/IHttp$CallError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/game91/framework/http/PayBean;)V
    .locals 2
    .param p1, "payBean"    # Lcom/game91/framework/http/PayBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/game91/framework/http/PayBean;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/game91/framework/impl/HttpImpl$7;->val$call:Lcom/game91/framework/core/IHttp$CallPay;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IHttp$CallPay;->onNext(Lcom/game91/framework/http/PayBean;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/game91/framework/impl/HttpImpl$7;->val$error:Lcom/game91/framework/core/IHttp$CallError;

    invoke-virtual {p1}, Lcom/game91/framework/http/PayBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u65e0\u6cd5\u8fde\u63a5\u670d\u52a1\u5668"

    :goto_1
    invoke-interface {v1, v0}, Lcom/game91/framework/core/IHttp$CallError;->onNext(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/game91/framework/http/PayBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 184
    check-cast p1, Lcom/game91/framework/http/PayBean;

    invoke-virtual {p0, p1}, Lcom/game91/framework/impl/HttpImpl$7;->accept(Lcom/game91/framework/http/PayBean;)V

    return-void
.end method
