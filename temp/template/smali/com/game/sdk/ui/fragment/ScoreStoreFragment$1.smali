.class Lcom/game/sdk/ui/fragment/ScoreStoreFragment$1;
.super Landroid/os/Handler;
.source "ScoreStoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/ScoreStoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/ScoreStoreFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/ScoreStoreFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ScoreStoreFragment;

    .line 59
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ScoreStoreFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->access$0(Lcom/game/sdk/ui/fragment/ScoreStoreFragment;)Lcom/game/sdk/adapter/ScoreStoreAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ScoreStoreFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->scoreStorePageList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/game/sdk/adapter/ScoreStoreAdapter;->addNewList(Ljava/util/List;)V

    .line 64
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ScoreStoreFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->access$0(Lcom/game/sdk/ui/fragment/ScoreStoreFragment;)Lcom/game/sdk/adapter/ScoreStoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/adapter/ScoreStoreAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ScoreStoreFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->access$0(Lcom/game/sdk/ui/fragment/ScoreStoreFragment;)Lcom/game/sdk/adapter/ScoreStoreAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ScoreStoreFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->access$0(Lcom/game/sdk/ui/fragment/ScoreStoreFragment;)Lcom/game/sdk/adapter/ScoreStoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/adapter/ScoreStoreAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ScoreStoreFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->access$1(Lcom/game/sdk/ui/fragment/ScoreStoreFragment;)Landroid/widget/GridView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ScoreStoreFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->access$2(Lcom/game/sdk/ui/fragment/ScoreStoreFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
