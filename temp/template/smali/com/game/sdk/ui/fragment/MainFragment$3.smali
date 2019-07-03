.class Lcom/game/sdk/ui/fragment/MainFragment$3;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/fragment/MainFragment;->initGuidePop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/MainFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/MainFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/MainFragment$3;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 384
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$3;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$18(Lcom/game/sdk/ui/fragment/MainFragment;Z)V

    .line 385
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$3;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$19(Lcom/game/sdk/ui/fragment/MainFragment;)I

    move-result v0

    if-le v0, v1, :cond_1

    .line 386
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$3;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$20(Lcom/game/sdk/ui/fragment/MainFragment;I)V

    .line 387
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$3;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$1(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$3;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$1(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$3;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$1(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$3;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$21(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$3;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$22(Lcom/game/sdk/ui/fragment/MainFragment;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment$3;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/MainFragment;->access$19(Lcom/game/sdk/ui/fragment/MainFragment;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 392
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$3;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$19(Lcom/game/sdk/ui/fragment/MainFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$20(Lcom/game/sdk/ui/fragment/MainFragment;I)V

    goto :goto_0
.end method
