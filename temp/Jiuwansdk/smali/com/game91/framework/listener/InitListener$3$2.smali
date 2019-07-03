.class Lcom/game91/framework/listener/InitListener$3$2;
.super Ljava/lang/Object;
.source "InitListener.java"

# interfaces
.implements Lcom/game91/framework/core/IHttp$CallError;


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
    .line 53
    iput-object p1, p0, Lcom/game91/framework/listener/InitListener$3$2;->this$1:Lcom/game91/framework/listener/InitListener$3;

    iput-object p2, p0, Lcom/game91/framework/listener/InitListener$3$2;->val$emitter:Lcom/game91/library/rxjava/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/game91/framework/listener/InitListener$3$2;->val$emitter:Lcom/game91/library/rxjava/ObservableEmitter;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/game91/library/rxjava/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method
