.class Lcom/game/sdk/ui/fragment/QuickPlayFragment$1;
.super Ljava/lang/Object;
.source "QuickPlayFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/fragment/QuickPlayFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/QuickPlayFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/QuickPlayFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment$1;->this$0:Lcom/game/sdk/ui/fragment/QuickPlayFragment;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment$1;->this$0:Lcom/game/sdk/ui/fragment/QuickPlayFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 251
    return-void
.end method
