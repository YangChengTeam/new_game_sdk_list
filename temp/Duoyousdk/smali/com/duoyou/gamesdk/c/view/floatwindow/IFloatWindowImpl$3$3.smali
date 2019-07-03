.class Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3$3;->this$1:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "x"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v0, "y"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3$3;->this$1:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;

    iget-object v2, v2, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$000(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->updateXY(II)V

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3$3;->this$1:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;

    iget-object v2, v2, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v2

    iget-object v2, v2, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3$3;->this$1:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;

    iget-object v2, v2, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v2

    iget-object v2, v2, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    invoke-interface {v2, v1, v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;->onPositionUpdate(II)V

    :cond_0
    return-void
.end method
