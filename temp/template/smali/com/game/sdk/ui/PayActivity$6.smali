.class Lcom/game/sdk/ui/PayActivity$6;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/PayActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/PayActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/PayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity$6;->this$0:Lcom/game/sdk/ui/PayActivity;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$6;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$30(Lcom/game/sdk/ui/PayActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$6;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-virtual {v0}, Lcom/game/sdk/ui/PayActivity;->payExit()V

    .line 434
    :cond_0
    return-void
.end method
