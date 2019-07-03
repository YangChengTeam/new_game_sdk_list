.class Lcom/game91/framework/impl/DelegateSdk$1$2;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Lcom/game91/framework/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/game91/framework/callback/Callback",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game91/framework/impl/DelegateSdk$1;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/game91/framework/impl/DelegateSdk$1;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$1$2;->this$1:Lcom/game91/framework/impl/DelegateSdk$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 215
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/game91/framework/impl/DelegateSdk$1$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$1$2;->this$1:Lcom/game91/framework/impl/DelegateSdk$1;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$1;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-interface {v0, p1}, Lcom/game91/framework/callback/Callback;->call(Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$1$2;->this$1:Lcom/game91/framework/impl/DelegateSdk$1;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$1;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$1$2;->this$1:Lcom/game91/framework/impl/DelegateSdk$1;

    iget-object v1, v1, Lcom/game91/framework/impl/DelegateSdk$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game91/framework/impl/DelegateSdk;->hideSplash(Landroid/app/Activity;)V

    .line 220
    return-void
.end method
