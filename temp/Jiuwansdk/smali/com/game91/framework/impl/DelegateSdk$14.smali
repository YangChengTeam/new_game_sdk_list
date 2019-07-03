.class Lcom/game91/framework/impl/DelegateSdk$14;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk;->pay3(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/impl/DelegateSdk;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$extra:Ljava/util/Map;

.field final synthetic val$onError:Lcom/game91/framework/callback/Callback;

.field final synthetic val$onSuccess:Lcom/game91/framework/callback/Callback;

.field final synthetic val$payInfo:Lcom/game91/framework/callback/PayInfo;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/impl/DelegateSdk;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$14;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iput-object p2, p0, Lcom/game91/framework/impl/DelegateSdk$14;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game91/framework/impl/DelegateSdk$14;->val$payInfo:Lcom/game91/framework/callback/PayInfo;

    iput-object p4, p0, Lcom/game91/framework/impl/DelegateSdk$14;->val$extra:Ljava/util/Map;

    iput-object p5, p0, Lcom/game91/framework/impl/DelegateSdk$14;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iput-object p6, p0, Lcom/game91/framework/impl/DelegateSdk$14;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 602
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$14;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk;->mPayImpl:Lcom/game91/framework/core/IPayChannel;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$14;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/game91/framework/impl/DelegateSdk$14;->val$payInfo:Lcom/game91/framework/callback/PayInfo;

    iget-object v3, p0, Lcom/game91/framework/impl/DelegateSdk$14;->val$extra:Ljava/util/Map;

    iget-object v4, p0, Lcom/game91/framework/impl/DelegateSdk$14;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iget-object v5, p0, Lcom/game91/framework/impl/DelegateSdk$14;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-interface/range {v0 .. v5}, Lcom/game91/framework/core/IPayChannel;->pay3(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    .line 603
    return-void
.end method
