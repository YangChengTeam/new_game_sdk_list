.class Lcom/game/sdk/utils/GuideUtil$1;
.super Landroid/os/Handler;
.source "GuideUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/utils/GuideUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/utils/GuideUtil;


# direct methods
.method constructor <init>(Lcom/game/sdk/utils/GuideUtil;Landroid/os/Looper;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/utils/GuideUtil$1;->this$0:Lcom/game/sdk/utils/GuideUtil;

    .line 39
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 44
    :pswitch_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 46
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 48
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 50
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 52
    iget-object v1, p0, Lcom/game/sdk/utils/GuideUtil$1;->this$0:Lcom/game/sdk/utils/GuideUtil;

    invoke-static {v1}, Lcom/game/sdk/utils/GuideUtil;->access$0(Lcom/game/sdk/utils/GuideUtil;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 53
    iget-object v1, p0, Lcom/game/sdk/utils/GuideUtil$1;->this$0:Lcom/game/sdk/utils/GuideUtil;

    invoke-static {v1}, Lcom/game/sdk/utils/GuideUtil;->access$1(Lcom/game/sdk/utils/GuideUtil;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 58
    iget-object v1, p0, Lcom/game/sdk/utils/GuideUtil$1;->this$0:Lcom/game/sdk/utils/GuideUtil;

    invoke-static {v1}, Lcom/game/sdk/utils/GuideUtil;->access$2(Lcom/game/sdk/utils/GuideUtil;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/utils/GuideUtil$1;->this$0:Lcom/game/sdk/utils/GuideUtil;

    invoke-static {v2}, Lcom/game/sdk/utils/GuideUtil;->access$3(Lcom/game/sdk/utils/GuideUtil;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
