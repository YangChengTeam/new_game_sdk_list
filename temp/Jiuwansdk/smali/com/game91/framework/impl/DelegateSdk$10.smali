.class Lcom/game91/framework/impl/DelegateSdk$10;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk;->doLogout(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/impl/DelegateSdk;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/impl/DelegateSdk;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$10;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iput-object p2, p0, Lcom/game91/framework/impl/DelegateSdk$10;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$10;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk;->mUserImpl:Lcom/game91/framework/core/ILogin;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$10;->val$activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/game91/framework/core/ILogin;->doLogout(Landroid/app/Activity;)V

    .line 501
    return-void
.end method
