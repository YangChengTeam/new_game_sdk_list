.class Lcom/game91/framework/impl/DelegateSdk$13$1$1;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Lcom/game91/framework/core/IHttp$CallString;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk$13$1;->call(Lcom/game91/framework/callback/OrderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/game91/framework/impl/DelegateSdk$13$1;

.field final synthetic val$orderInfo:Lcom/game91/framework/callback/OrderInfo;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk$13$1;Lcom/game91/framework/callback/OrderInfo;)V
    .locals 0
    .param p1, "this$2"    # Lcom/game91/framework/impl/DelegateSdk$13$1;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$13$1$1;->this$2:Lcom/game91/framework/impl/DelegateSdk$13$1;

    iput-object p2, p0, Lcom/game91/framework/impl/DelegateSdk$13$1$1;->val$orderInfo:Lcom/game91/framework/callback/OrderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$13$1$1;->this$2:Lcom/game91/framework/impl/DelegateSdk$13$1;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$13$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$13;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$13;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$13$1$1;->this$2:Lcom/game91/framework/impl/DelegateSdk$13$1;

    iget-object v1, v1, Lcom/game91/framework/impl/DelegateSdk$13$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$13;

    iget-object v1, v1, Lcom/game91/framework/impl/DelegateSdk$13;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game91/framework/impl/DelegateSdk;->hideOrderNotifyDialog(Landroid/app/Activity;)V

    .line 579
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$13$1$1;->this$2:Lcom/game91/framework/impl/DelegateSdk$13$1;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$13$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$13;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$13;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$13$1$1;->val$orderInfo:Lcom/game91/framework/callback/OrderInfo;

    invoke-interface {v0, v1}, Lcom/game91/framework/callback/Callback;->call(Ljava/lang/Object;)V

    .line 580
    return-void
.end method
