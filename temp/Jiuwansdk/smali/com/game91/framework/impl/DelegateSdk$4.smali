.class Lcom/game91/framework/impl/DelegateSdk$4;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk;->callInit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/http/InitBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/impl/DelegateSdk;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$initBean:Lcom/game91/framework/http/InitBean;

.field final synthetic val$onError:Lcom/game91/framework/callback/Callback;

.field final synthetic val$onSuccess:Lcom/game91/framework/callback/Callback;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/http/InitBean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/impl/DelegateSdk;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$4;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iput-object p2, p0, Lcom/game91/framework/impl/DelegateSdk$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game91/framework/impl/DelegateSdk$4;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iput-object p4, p0, Lcom/game91/framework/impl/DelegateSdk$4;->val$onError:Lcom/game91/framework/callback/Callback;

    iput-object p5, p0, Lcom/game91/framework/impl/DelegateSdk$4;->val$initBean:Lcom/game91/framework/http/InitBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$4;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/game91/framework/impl/DelegateSdk$4;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iget-object v3, p0, Lcom/game91/framework/impl/DelegateSdk$4;->val$onError:Lcom/game91/framework/callback/Callback;

    iget-object v4, p0, Lcom/game91/framework/impl/DelegateSdk$4;->val$initBean:Lcom/game91/framework/http/InitBean;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/game91/framework/impl/DelegateSdk;->access$300(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/http/InitBean;)V

    .line 324
    return-void
.end method
