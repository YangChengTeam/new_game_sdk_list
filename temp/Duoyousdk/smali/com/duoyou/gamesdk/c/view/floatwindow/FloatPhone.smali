.class Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;
.super Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;


# instance fields
.field private handler:Landroid/os/Handler;

.field private isRemove:Z

.field private final mContext:Landroid/content/Context;

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mPermissionListener:Lcom/duoyou/gamesdk/c/view/floatwindow/PermissionListener;

.field private mView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mX:I

.field private mY:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/duoyou/gamesdk/c/view/floatwindow/PermissionListener;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;-><init>()V

    iput-boolean v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->isRemove:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mPermissionListener:Lcom/duoyou/gamesdk/c/view/floatwindow/PermissionListener;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x228

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->isRemove:Z

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method getX()I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mX:I

    return v0
.end method

.method getY()I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mY:I

    return v0
.end method

.method public init(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const-string v0, "TYPE_TOAST \u5931\u8d25"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGravity(III)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mX:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p3, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mY:I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method public setSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mView:Landroid/view/View;

    return-void
.end method

.method updateX(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->isRemove:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mX:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public updateXY(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->isRemove:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mX:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mY:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method updateY(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->isRemove:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mY:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatPhone;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
