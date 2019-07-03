.class Lcom/game91/framework/listener/InitListener$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/listener/InitListener;

.field final synthetic val$onError:Lcom/game91/framework/callback/Callback;


# direct methods
.method constructor <init>(Lcom/game91/framework/listener/InitListener;Lcom/game91/framework/callback/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/listener/InitListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/game91/framework/listener/InitListener$2;->this$0:Lcom/game91/framework/listener/InitListener;

    iput-object p2, p0, Lcom/game91/framework/listener/InitListener$2;->val$onError:Lcom/game91/framework/callback/Callback;

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
    .line 78
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/game91/framework/listener/InitListener$2;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    iget-object v0, p0, Lcom/game91/framework/listener/InitListener$2;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-interface {v0, p1}, Lcom/game91/framework/callback/Callback;->call(Ljava/lang/Object;)V

    .line 83
    return-void
.end method
