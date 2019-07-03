.class public Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "B"
.end annotation


# instance fields
.field gravity:I

.field mActivities:[Ljava/lang/Class;

.field mApplicationContext:Landroid/content/Context;

.field mDesktopShow:Z

.field mDuration:J

.field mHeight:I

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLayoutId:I

.field mMoveType:I

.field mPermissionListener:Lcom/duoyou/gamesdk/c/view/floatwindow/PermissionListener;

.field mShow:Z

.field mSlideLeftMargin:I

.field mSlideRightMargin:I

.field private mTag:Ljava/lang/String;

.field mView:Landroid/view/View;

.field mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

.field mWidth:I

.field xOffset:I

.field yOffset:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mWidth:I

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mHeight:I

    const v0, 0x800033

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->gravity:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mShow:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mMoveType:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mDuration:J

    const-string v0, "default_float_window_tag"

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mTag:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mWidth:I

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mHeight:I

    const v0, 0x800033

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->gravity:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mShow:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mMoveType:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mDuration:J

    const-string v0, "default_float_window_tag"

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mTag:Ljava/lang/String;

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 3

    invoke-static {}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->access$000()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->access$002(Ljava/util/Map;)Ljava/util/Map;

    :cond_0
    invoke-static {}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->access$000()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mView:Landroid/view/View;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mLayoutId:I

    if-eqz v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mView:Landroid/view/View;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    iget v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mLayoutId:I

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mView:Landroid/view/View;

    :cond_4
    new-instance v0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;-><init>(Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;)V

    invoke-static {}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->access$000()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mTag:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDesktopShow(Z)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 0

    iput-boolean p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mDesktopShow:Z

    return-object p0
.end method

.method public varargs setFilter(Z[Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 0

    iput-boolean p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mShow:Z

    iput-object p2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mActivities:[Ljava/lang/Class;

    return-object p0
.end method

.method public setHeight(I)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mHeight:I

    return-object p0
.end method

.method public setHeight(IF)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mHeight:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public setMoveStyle(JLandroid/animation/TimeInterpolator;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 1

    iput-wide p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mDuration:J

    iput-object p3, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public setMoveType(I)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->setMoveType(III)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v0

    return-object v0
.end method

.method public setMoveType(III)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mMoveType:I

    iput p2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mSlideLeftMargin:I

    iput p3, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mSlideRightMargin:I

    return-object p0
.end method

.method public setPermissionListener(Lcom/duoyou/gamesdk/c/view/floatwindow/PermissionListener;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mPermissionListener:Lcom/duoyou/gamesdk/c/view/floatwindow/PermissionListener;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public setView(I)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mLayoutId:I

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mView:Landroid/view/View;

    return-object p0
.end method

.method public setViewStateListener(Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    return-object p0
.end method

.method public setWidth(I)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mWidth:I

    return-object p0
.end method

.method public setWidth(IF)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mWidth:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public setX(I)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->xOffset:I

    return-object p0
.end method

.method public setX(IF)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->xOffset:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public setY(I)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->yOffset:I

    return-object p0
.end method

.method public setY(IF)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->yOffset:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/Util;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public show(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->access$000()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->access$000()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->access$000()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindow;

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindow;->show(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
