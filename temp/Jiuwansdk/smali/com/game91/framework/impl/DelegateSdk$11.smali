.class Lcom/game91/framework/impl/DelegateSdk$11;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk;->show(Landroid/app/Activity;Lcom/game91/framework/core/IWindow$WindowType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/impl/DelegateSdk;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$type:Lcom/game91/framework/core/IWindow$WindowType;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/core/IWindow$WindowType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/impl/DelegateSdk;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$11;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iput-object p2, p0, Lcom/game91/framework/impl/DelegateSdk$11;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game91/framework/impl/DelegateSdk$11;->val$type:Lcom/game91/framework/core/IWindow$WindowType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$11;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk;->mWindowImpl:Lcom/game91/framework/core/IWindow;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$11;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/game91/framework/impl/DelegateSdk$11;->val$type:Lcom/game91/framework/core/IWindow$WindowType;

    invoke-interface {v0, v1, v2}, Lcom/game91/framework/core/IWindow;->show(Landroid/app/Activity;Lcom/game91/framework/core/IWindow$WindowType;)V

    .line 528
    return-void
.end method
