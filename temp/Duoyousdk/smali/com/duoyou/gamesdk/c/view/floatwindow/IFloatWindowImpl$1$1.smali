.class Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1$1;->this$1:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1$1;->this$1:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;

    iget-object v1, v1, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$000(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->updateX(I)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1$1;->this$1:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;

    iget-object v1, v1, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v1

    iget-object v1, v1, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1$1;->this$1:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;

    iget-object v1, v1, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v1

    iget-object v1, v1, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1$1;->this$1:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;

    iget-object v2, v2, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$300(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v1, v0, v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;->onPositionUpdate(II)V

    :cond_0
    return-void
.end method
