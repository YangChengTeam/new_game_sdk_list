.class Lcom/game91/framework/impl/HttpImpl$8;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/impl/HttpImpl;

.field final synthetic val$error:Lcom/game91/framework/core/IHttp$CallError;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallError;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/impl/HttpImpl;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/game91/framework/impl/HttpImpl$8;->this$0:Lcom/game91/framework/impl/HttpImpl;

    iput-object p2, p0, Lcom/game91/framework/impl/HttpImpl$8;->val$error:Lcom/game91/framework/core/IHttp$CallError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 193
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/game91/framework/impl/HttpImpl$8;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/game91/framework/impl/HttpImpl$8;->val$error:Lcom/game91/framework/core/IHttp$CallError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/game91/framework/core/IHttp$CallError;->onNext(Ljava/lang/String;)V

    .line 197
    return-void
.end method
