.class Lcom/game91/framework/impl/DelegateSdk$12;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk;->doExit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/impl/DelegateSdk;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$onError:Lcom/game91/framework/callback/Callback;

.field final synthetic val$onSuccess:Lcom/game91/framework/callback/Callback;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/impl/DelegateSdk;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$12;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iput-object p2, p0, Lcom/game91/framework/impl/DelegateSdk$12;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game91/framework/impl/DelegateSdk$12;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iput-object p4, p0, Lcom/game91/framework/impl/DelegateSdk$12;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 538
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$12;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk;->mExitImpl:Lcom/game91/framework/core/IExit;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$12;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/game91/framework/impl/DelegateSdk$12$1;

    invoke-direct {v2, p0}, Lcom/game91/framework/impl/DelegateSdk$12$1;-><init>(Lcom/game91/framework/impl/DelegateSdk$12;)V

    iget-object v3, p0, Lcom/game91/framework/impl/DelegateSdk$12;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-interface {v0, v1, v2, v3}, Lcom/game91/framework/core/IExit;->doExit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    .line 545
    return-void
.end method
