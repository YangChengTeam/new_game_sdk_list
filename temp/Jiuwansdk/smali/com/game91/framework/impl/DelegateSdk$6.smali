.class Lcom/game91/framework/impl/DelegateSdk$6;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk;->loadPlugin(Landroid/app/Activity;Lcom/game91/framework/http/InitBean$Plugin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/impl/DelegateSdk;

.field final synthetic val$iPackage:Lcom/game91/framework/core/IPackage;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk;Lcom/game91/framework/core/IPackage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/impl/DelegateSdk;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$6;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iput-object p2, p0, Lcom/game91/framework/impl/DelegateSdk$6;->val$iPackage:Lcom/game91/framework/core/IPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$6;->val$iPackage:Lcom/game91/framework/core/IPackage;

    invoke-static {}, Lcom/game91/framework/impl/GameSystems;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/game91/framework/core/IPackage;->onCreate(Landroid/app/Application;)V

    .line 411
    return-void
.end method
