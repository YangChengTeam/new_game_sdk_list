.class Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$4;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->startAnimator()V
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

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$4;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$4;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$200(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$4;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$200(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$4;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$200(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$4;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$202(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$4;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v0

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$4;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v0

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;->onMoveAnimEnd()V

    goto :goto_0
.end method
