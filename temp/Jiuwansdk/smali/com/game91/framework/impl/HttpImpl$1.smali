.class Lcom/game91/framework/impl/HttpImpl$1;
.super Ljava/lang/Object;
.source "HttpImpl.java"

# interfaces
.implements Lcom/game91/library/rxjava/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/HttpImpl;->init(Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallInit;Lcom/game91/framework/core/IHttp$CallError;)V
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
        "Lcom/game91/framework/http/InitBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/impl/HttpImpl;

.field final synthetic val$call:Lcom/game91/framework/core/IHttp$CallInit;

.field final synthetic val$error:Lcom/game91/framework/core/IHttp$CallError;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallInit;Lcom/game91/framework/core/IHttp$CallError;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/impl/HttpImpl;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/game91/framework/impl/HttpImpl$1;->this$0:Lcom/game91/framework/impl/HttpImpl;

    iput-object p2, p0, Lcom/game91/framework/impl/HttpImpl$1;->val$call:Lcom/game91/framework/core/IHttp$CallInit;

    iput-object p3, p0, Lcom/game91/framework/impl/HttpImpl$1;->val$error:Lcom/game91/framework/core/IHttp$CallError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/game91/framework/http/InitBean;)V
    .locals 2
    .param p1, "initBean"    # Lcom/game91/framework/http/InitBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/game91/framework/http/InitBean;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/game91/framework/impl/HttpImpl$1;->val$call:Lcom/game91/framework/core/IHttp$CallInit;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IHttp$CallInit;->onNext(Lcom/game91/framework/http/InitBean;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/game91/framework/impl/HttpImpl$1;->val$error:Lcom/game91/framework/core/IHttp$CallError;

    invoke-virtual {p1}, Lcom/game91/framework/http/InitBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u65e0\u6cd5\u8fde\u63a5\u670d\u52a1\u5668"

    :goto_1
    invoke-interface {v1, v0}, Lcom/game91/framework/core/IHttp$CallError;->onNext(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/game91/framework/http/InitBean;->getMessage()Ljava/lang/String;

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
    .line 110
    check-cast p1, Lcom/game91/framework/http/InitBean;

    invoke-virtual {p0, p1}, Lcom/game91/framework/impl/HttpImpl$1;->accept(Lcom/game91/framework/http/InitBean;)V

    return-void
.end method
