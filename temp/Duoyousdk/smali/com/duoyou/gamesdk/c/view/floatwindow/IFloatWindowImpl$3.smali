.class Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->initTouchEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field changeX:F

.field changeY:F

.field lastX:F

.field lastY:F

.field newX:I

.field newY:I

.field final synthetic this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->cancelTimerCount()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$1000(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$502(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;F)F

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$602(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;F)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->lastX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->lastY:F

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$700(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->lastX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->changeX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->lastY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->changeY:F

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$000(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->getX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->changeX:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->newX:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$000(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->getY()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->changeY:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->newY:I

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->newY:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->newY:I

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v1

    iget-object v1, v1, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v2

    iget v2, v2, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mHeight:I

    sub-int/2addr v1, v2

    invoke-static {}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$800()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$000(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    move-result-object v0

    iget v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->newX:I

    iget v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->newY:I

    invoke-virtual {v0, v1, v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->updateXY(II)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v0

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v0

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    iget v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->newX:I

    iget v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->newY:I

    invoke-interface {v0, v1, v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;->onPositionUpdate(II)V

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->lastX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->lastY:F

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v0, v3}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$902(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;F)F

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v0, v3}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$302(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;F)F

    iget-object v3, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$900(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)F

    move-result v0

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v4}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$500(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)F

    move-result v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v4}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$1100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$300(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)F

    move-result v0

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v4}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$600(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)F

    move-result v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v4}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$1100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    :cond_2
    move v0, v2

    :goto_1
    invoke-static {v3, v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$1002(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;Z)Z

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v0

    iget v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mMoveType:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$900(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$900(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)F

    move-result v0

    iget-object v3, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v3}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v3

    iget-object v3, v3, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$000(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->getX()I

    move-result v3

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$900(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    :goto_2
    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    new-array v5, v6, [I

    aput v3, v5, v1

    aput v0, v5, v2

    invoke-static {v5}, Landroid/animation/ObjectAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$202(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$200(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3$1;-><init>(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$400(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v0

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$000(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->getX()I

    move-result v3

    mul-int/lit8 v0, v3, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v4}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v4

    iget-object v4, v4, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    if-le v0, v4, :cond_7

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v0

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v4}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v4

    iget v4, v4, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mSlideRightMargin:I

    sub-int/2addr v0, v4

    :goto_3
    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    new-array v5, v6, [I

    aput v3, v5, v1

    aput v0, v5, v2

    invoke-static {v5}, Landroid/animation/ObjectAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$202(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$200(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3$2;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3$2;-><init>(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$400(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->startTimerCount(J)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v0

    iget v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mSlideLeftMargin:I

    goto :goto_3

    :pswitch_4
    const-string v0, "x"

    new-array v3, v6, [I

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v4}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$000(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->getX()I

    move-result v4

    aput v4, v3, v1

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v4}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v4

    iget v4, v4, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->xOffset:I

    aput v4, v3, v2

    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v3, "y"

    new-array v4, v6, [I

    iget-object v5, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v5}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$000(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->getY()I

    move-result v5

    aput v5, v4, v1

    iget-object v5, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v5}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v5

    iget v5, v5, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->yOffset:I

    aput v5, v4, v2

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    new-array v5, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v1

    aput-object v3, v5, v2

    invoke-static {v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$202(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$200(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3$3;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3$3;-><init>(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$400(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
