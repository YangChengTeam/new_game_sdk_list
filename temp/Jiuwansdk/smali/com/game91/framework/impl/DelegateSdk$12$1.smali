.class Lcom/game91/framework/impl/DelegateSdk$12$1;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Lcom/game91/framework/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk$12;->run()V
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
.field final synthetic this$1:Lcom/game91/framework/impl/DelegateSdk$12;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/game91/framework/impl/DelegateSdk$12;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$12$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$12$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$12;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$12;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/game91/framework/statistics/StatisticsAnalysis;->doExit(Landroid/content/Context;)V

    .line 542
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$12$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$12;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$12;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    invoke-interface {v0, p1}, Lcom/game91/framework/callback/Callback;->call(Ljava/lang/Object;)V

    .line 543
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 538
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/game91/framework/impl/DelegateSdk$12$1;->call(Ljava/lang/Integer;)V

    return-void
.end method
