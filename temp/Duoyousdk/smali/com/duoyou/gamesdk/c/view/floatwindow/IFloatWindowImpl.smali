.class public Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;
.super Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindow;


# static fields
.field private static final HIDE:I = 0x1

.field private static STATUS_BAR_HEIGHT:I


# instance fields
.field private downX:F

.field private downY:F

.field private handler:Landroid/os/Handler;

.field private isCancel:Z

.field private isShow:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

.field private mClick:Z

.field private mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mFloatLifecycle:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;

.field private mFloatView:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

.field private mSlop:I

.field private once:Z

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;

.field private upX:F

.field private upY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->STATUS_BAR_HEIGHT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindow;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->once:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mClick:Z

    new-instance v0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;-><init>(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->handler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;)V
    .locals 5

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindow;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->once:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mClick:Z

    new-instance v0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$1;-><init>(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->getStatusBarHeight()I

    move-result v0

    sput v0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->STATUS_BAR_HEIGHT:I

    new-instance v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;

    iget-object v1, p1, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v2, v2, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mPermissionListener:Lcom/duoyou/gamesdk/c/view/floatwindow/PermissionListener;

    invoke-direct {v0, v1, v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;-><init>(Landroid/content/Context;Lcom/duoyou/gamesdk/c/view/floatwindow/PermissionListener;)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mFloatView:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->initTouchEvent()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mFloatView:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget v1, v1, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mWidth:I

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget v2, v2, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->setSize(II)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mFloatView:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget v1, v1, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->gravity:I

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget v2, v2, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->xOffset:I

    iget-object v3, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget v3, v3, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->yOffset:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->setGravity(III)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mFloatView:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v1, v1, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->setView(Landroid/view/View;)V

    new-instance v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v1, v1, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-boolean v2, v2, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mShow:Z

    iget-object v3, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v3, v3, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mActivities:[Ljava/lang/Class;

    new-instance v4, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$2;

    invoke-direct {v4, p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$2;-><init>(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;-><init>(Landroid/content/Context;Z[Ljava/lang/Class;Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mFloatLifecycle:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;

    return-void
.end method

.method static synthetic access$000(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mFloatView:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mClick:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mClick:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mSlop:I

    return v0
.end method

.method static synthetic access$1200(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->isCancel:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$202(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)F
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->upY:F

    return v0
.end method

.method static synthetic access$302(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;F)F
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->upY:F

    return p1
.end method

.method static synthetic access$400(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->startAnimator()V

    return-void
.end method

.method static synthetic access$500(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)F
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->downX:F

    return v0
.end method

.method static synthetic access$502(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;F)F
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->downX:F

    return p1
.end method

.method static synthetic access$600(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)F
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->downY:F

    return v0
.end method

.method static synthetic access$602(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;F)F
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->downY:F

    return p1
.end method

.method static synthetic access$700(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->cancelAnimator()V

    return-void
.end method

.method static synthetic access$800()I
    .locals 1

    sget v0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->STATUS_BAR_HEIGHT:I

    return v0
.end method

.method static synthetic access$900(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)F
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->upX:F

    return v0
.end method

.method static synthetic access$902(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;F)F
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->upX:F

    return p1
.end method

.method private cancelAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private checkMoveType()V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mMoveType:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FloatWindow of this tag is not allowed to move!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getStatusBarHeight()I
    .locals 5

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/f;->a(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v4}, Lcom/duoyou/gamesdk/c/c/f;->a(F)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initTouchEvent()V
    .locals 2

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->startTimerCount(J)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mMoveType:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$3;-><init>(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private startAnimator()V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v1, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mInterpolator:Landroid/animation/TimeInterpolator;

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v1, v1, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$4;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$4;-><init>(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-wide v2, v1, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;->onMoveAnimStart()V

    goto :goto_0
.end method


# virtual methods
.method public cancelTimerCount()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->isCancel:Z

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->timer:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->timerTask:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mFloatView:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->dismiss()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->isShow:Z

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mSlop:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getX()I
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mFloatView:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->getX()I

    move-result v0

    return v0
.end method

.method public getY()I
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mFloatView:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->getY()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 2

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->once:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->isShow:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->isShow:Z

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;->onHide()V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->isShow:Z

    return v0
.end method

.method public show(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->once:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mFloatView:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->init(Landroid/app/Activity;)V

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->once:Z

    iput-boolean v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->isShow:Z

    :goto_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;->onShow()V

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->isShow:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->isShow:Z

    goto :goto_0
.end method

.method public startTimerCount(J)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->isCancel:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->timer:Ljava/util/Timer;

    new-instance v0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$5;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$5;-><init>(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->timerTask:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public updateX(I)V
    .locals 1

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->checkMoveType()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iput p1, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->xOffset:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mFloatView:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->updateX(I)V

    return-void
.end method

.method public updateX(IF)V
    .locals 2

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->checkMoveType()V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v1, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->xOffset:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mFloatView:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget v1, v1, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->xOffset:I

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->updateX(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public updateY(I)V
    .locals 1

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->checkMoveType()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iput p1, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->yOffset:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mFloatView:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->updateY(I)V

    return-void
.end method

.method public updateY(IF)V
    .locals 2

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->checkMoveType()V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v1, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->yOffset:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mFloatView:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget v1, v1, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->yOffset:I

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;->updateY(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->mB:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method
