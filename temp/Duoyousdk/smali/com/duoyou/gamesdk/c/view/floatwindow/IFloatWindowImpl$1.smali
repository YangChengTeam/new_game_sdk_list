.class Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$000(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->getX()I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v2

    iget v2, v2, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mWidth:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v2

    iget-object v2, v2, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v0

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v2

    iget v2, v2, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mWidth:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v2

    iget v2, v2, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    :goto_1
    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v0, v3, v1

    invoke-static {v3}, Landroid/animation/ObjectAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$202(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$200(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1$1;-><init>(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$400(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->cancelTimerCount()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v0

    iget v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
