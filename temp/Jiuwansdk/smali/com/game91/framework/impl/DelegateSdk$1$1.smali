.class Lcom/game91/framework/impl/DelegateSdk$1$1;
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
        "Ljava/lang/Integer;",
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
    .line 209
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$1$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$1$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$1;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$1;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/game91/framework/impl/DelegateSdk;->access$002(Lcom/game91/framework/impl/DelegateSdk;Z)Z

    .line 213
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$1$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$1;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$1;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$1$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$1;

    iget-object v1, v1, Lcom/game91/framework/impl/DelegateSdk$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/game91/framework/impl/DelegateSdk$1$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$1;

    iget-object v2, v2, Lcom/game91/framework/impl/DelegateSdk$1;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iget-object v3, p0, Lcom/game91/framework/impl/DelegateSdk$1$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$1;

    iget-object v3, v3, Lcom/game91/framework/impl/DelegateSdk$1;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-static {v0, v1, v2, v3}, Lcom/game91/framework/impl/DelegateSdk;->access$100(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    .line 214
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 209
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/game91/framework/impl/DelegateSdk$1$1;->call(Ljava/lang/Integer;)V

    return-void
.end method
