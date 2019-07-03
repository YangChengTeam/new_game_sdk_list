.class Lcom/game91/framework/listener/InitListener$3;
.super Ljava/lang/Object;
.source "InitListener.java"

# interfaces
.implements Lcom/game91/library/rxjava/ObservableOnSubscribe;


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
        "Lcom/game91/library/rxjava/ObservableOnSubscribe",
        "<",
        "Lcom/game91/framework/http/PluginBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/listener/InitListener;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/game91/framework/listener/InitListener;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/listener/InitListener;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/game91/framework/listener/InitListener$3;->this$0:Lcom/game91/framework/listener/InitListener;

    iput-object p2, p0, Lcom/game91/framework/listener/InitListener$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lcom/game91/library/rxjava/ObservableEmitter;)V
    .locals 3
    .param p1    # Lcom/game91/library/rxjava/ObservableEmitter;
        .annotation build Lcom/game91/library/rxjava/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game91/library/rxjava/ObservableEmitter",
            "<",
            "Lcom/game91/framework/http/PluginBean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "emitter":Lcom/game91/library/rxjava/ObservableEmitter;, "Lcom/game91/library/rxjava/ObservableEmitter<Lcom/game91/framework/http/PluginBean;>;"
    invoke-static {}, Lcom/game91/framework/HttpManager;->api()Lcom/game91/framework/core/IHttp;

    move-result-object v0

    new-instance v1, Lcom/game91/framework/listener/InitListener$3$1;

    invoke-direct {v1, p0, p1}, Lcom/game91/framework/listener/InitListener$3$1;-><init>(Lcom/game91/framework/listener/InitListener$3;Lcom/game91/library/rxjava/ObservableEmitter;)V

    new-instance v2, Lcom/game91/framework/listener/InitListener$3$2;

    invoke-direct {v2, p0, p1}, Lcom/game91/framework/listener/InitListener$3$2;-><init>(Lcom/game91/framework/listener/InitListener$3;Lcom/game91/library/rxjava/ObservableEmitter;)V

    invoke-interface {v0, v1, v2}, Lcom/game91/framework/core/IHttp;->plugin(Lcom/game91/framework/core/IHttp$CallPlugin;Lcom/game91/framework/core/IHttp$CallError;)V

    .line 59
    return-void
.end method
