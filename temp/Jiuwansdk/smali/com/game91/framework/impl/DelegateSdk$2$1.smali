.class Lcom/game91/framework/impl/DelegateSdk$2$1;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk$2;->onNext(Lcom/game91/framework/http/InitBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game91/framework/impl/DelegateSdk$2;

.field final synthetic val$initBean:Lcom/game91/framework/http/InitBean;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk$2;Lcom/game91/framework/http/InitBean;)V
    .locals 0
    .param p1, "this$1"    # Lcom/game91/framework/impl/DelegateSdk$2;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$2$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$2;

    iput-object p2, p0, Lcom/game91/framework/impl/DelegateSdk$2$1;->val$initBean:Lcom/game91/framework/http/InitBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$2$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$2;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$2;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$2$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$2;

    iget-object v1, v1, Lcom/game91/framework/impl/DelegateSdk$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/game91/framework/impl/DelegateSdk$2$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$2;

    iget-object v2, v2, Lcom/game91/framework/impl/DelegateSdk$2;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iget-object v3, p0, Lcom/game91/framework/impl/DelegateSdk$2$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$2;

    iget-object v3, v3, Lcom/game91/framework/impl/DelegateSdk$2;->val$onError:Lcom/game91/framework/callback/Callback;

    iget-object v4, p0, Lcom/game91/framework/impl/DelegateSdk$2$1;->val$initBean:Lcom/game91/framework/http/InitBean;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/game91/framework/impl/DelegateSdk;->access$200(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/http/InitBean;)V

    .line 293
    return-void
.end method
